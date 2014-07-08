<?php
class ControllerModuleFblogin extends Controller {
	protected function index($setting) {

		$this->language->load('module/fblogin'); 
                $this->load->model('account/customer');
			if(!isset($this->fblogin)){
				require_once(DIR_SYSTEM . 'vendor/facebook-sdk/facebook.php');
				$this->fblogin = new Facebook(array(
					'appId'  => $this->config->get('fblogin_apikey'),
					'secret' => $this->config->get('fblogin_apisecret'),
				));
			}

                if(!$this->customer->isLogged()){
                        $this->data['heading_title'] = $this->language->get('heading_title_login');

                        $this->data['fblogin_url'] = $this->fblogin->getLoginUrl(
				array(
					'scope' => 'email,user_birthday,user_location,user_hometown',
					'redirect_uri'  => $this->url->link('account/fblogin', '', 'SSL')
				)
			);

			if($this->config->get('fblogin_button_' . $this->config->get('config_language_id'))){
				$this->data['fblogin_button'] = html_entity_decode($this->config->get('fblogin_button_' . $this->config->get('config_language_id')));
			}else{ 
                            $this->data['fblogin_button'] = $this->language->get('heading_title_login');
                        }

			if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/fblogin.tpl')) {
				$this->template = $this->config->get('config_template') . '/template/module/fblogin.tpl';
			} else {
				$this->template = 'default/template/module/fblogin.tpl';
			}

			$this->render();
                        
		}else if($this->config->get('fbfriend_enabled') == 1){
		$this->data['heading_title'] = $this->language->get('heading_title_fbfriend');

                            $_SERVER_CLEANED = $_SERVER;

                            $fbuser = $this->fblogin->getUser();
                            $userFrndLst = array();
                            if ($fbuser) {
                                try {
                                    $fql = "select first_name,last_name,pic_big,profile_url,pic_square,uid from user where uid in (select uid1 from friend where uid2=" . $fbuser . ")";
                                    $userFrndLst = $this->fblogin->api(array(
                                        'method' => 'fql.query',
                                        'access_token' => $this->fblogin->getAccessToken(),
                                        'query' => $fql,
                                            ));
                                } catch (FacebookApiException $e) {
                                    error_log($e);
                                    $fbuser = null;
                                }
                            }

                            $_SERVER = $_SERVER_CLEANED;

                            $this->data['fbfriend_list'] = array();
                            $data_arr = array();
                            $data_arr['product_id'] = (isset($this->request->get['product_id'])) ? $this->request->get['product_id'] :0;
                            foreach ($userFrndLst as $key) {
                                $data_arr['fbuid'] = $key['uid'];
                                $check_friend = $this->model_account_customer->getFriendsCount($data_arr);
                                if ($check_friend->row['count'] >= 1) {
                                    $this->data['fbfriend_list'][] = array(
                                        'profile_url' => $key['profile_url'],
                                        'pic_big' => $key['pic_big'],
                                        'first_name' => $key['first_name'],
                                        'last_name' => $key['last_name']
                                    );
                            }
                            }
                            if (!empty($this->data['fbfriend_list'])) {
                                if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/fbfriend.tpl')) {
                                    $this->template = $this->config->get('config_template') . '/template/module/fbfriend.tpl';
                                } else {
                                    $this->template = 'default/template/module/fbfriend.tpl';
                                }
                            $this->render();
                            }
                }
	}
}
?>