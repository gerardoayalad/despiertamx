<?php  
class ControllerCommonContentFooter extends Controller {
	protected function index() {
		$this->load->model('design/layout');
		
		if (isset($this->request->get['route'])) {
			$route = (string)$this->request->get['route'];
		} else {
			$route = 'common/home';
		}
		
		
		$module_data = array();
		
		$this->load->model('setting/extension');
		
		$extensions = $this->model_setting_extension->getExtensions('module');		
		
		foreach ($extensions as $extension) {
			$modules = $this->config->get($extension['code'] . '_module');
			
			if ($modules) {
				foreach ($modules as $module) {
					if ($module['position'] == 'content_footer' && $module['status']) {
						$module_data[] = array(
							'code'       => $extension['code'],
							'setting'    => $module,
						);				
					}
				}
			}
		}
		
		
		
		
		$this->data['modules'] = array();
		
		foreach ($module_data as $module) {
			$module = $this->getChild('module/' . $module['code'], $module['setting']);
			
			if ($module) {
				$this->data['modules'][] = $module;
			}
		}

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/content_footer.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/common/content_footer.tpl';
		} else {
			$this->template = 'default/template/common/content_footer.tpl';
		}
								
		$this->render();
	}
}
?>