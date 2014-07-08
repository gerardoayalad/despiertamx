<?php
/**
 * TemplateMela
 * @copyright  Copyright (c) 2010 TemplateMela. (http://www.templatemela.com)
 * @license    http://www.templatemela.com/license/
 */
?>
<?php  
class ControllerModulemagnorcms extends Controller {
	protected function index($setting) {
		$this->language->load('module/magnorcms');
		
    	$this->data['heading_title'] = sprintf($this->language->get('heading_title'), $this->config->get('config_name'));
		
		$get_lan_id = $this->config->get('config_language_id');
		
		
		$this->data['magnorcms_header'] = html_entity_decode(isset($setting['headertitle'][$get_lan_id]) ? $setting['headertitle'][$get_lan_id] : '' , ENT_QUOTES, 'UTF-8');
    	
		$this->data['message'] = html_entity_decode(isset($setting['description'][$get_lan_id]) ? $setting['description'][$get_lan_id] : '' , ENT_QUOTES, 'UTF-8');
		
			
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/magnorcms.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/module/magnorcms.tpl';
		} else {
			$this->template = 'default/template/module/magnorcms.tpl';
		}
		
		$this->render();
	}
}
?>