<?php
include('config.php');
include(PATH_INCLUDE . 'function.php');
include('connect.php');

$url_site = $_SERVER['REQUEST_URI'];
$URL = parse_url($url_site);
$url_site = $URL['path'];
$url_site .= (substr($url_site, -1) == '/') ? '' : '/';
$page_info = My_Parse_URL($url_site);

if($page_info['error']==404)
{
    echo 'error';
    exit;
}

$footer = str_replace('{SITE}', SITE, Get_Template('footer.tpl'));
$footer = str_replace('{SITE}', SITE, $footer);
$footer = str_replace('{FOOTER_MENU}', Footer(), $footer);
$footer = str_replace('{FOOTER_SERVICES}', Footer_Services(), $footer);
$template_map = str_replace('{SITE}', SITE, Map());
switch ($page_info['template_id']) {
    case 1:
        $template = Get_Template('index.tpl');
        $template = str_replace('{FOOTER}', $footer,  $template);

        $p_text = str_replace('{MAP}', $template_map,$page_info['page_text']);
        $p_text = str_replace('{SERVICES}', Services(), $p_text);
        $marker = array('{SITE}','{MENU}', '{FOOTER}','{PAGE_TEXT}');
        $marker_info = array(SITE,  Menu(), $footer,$p_text);
        $page = str_replace($marker, $marker_info, $template);
        $page = str_replace('{SITE}', SITE, $page );
        break;
    case 2:
        $template = Get_Template('services_page.tpl');
        $template = str_replace('{TITLE}', $page_info['title'],  $template);
        $template  = str_replace('{CRUMBS}', $page_info['crumbs'], $template);
        $template  = str_replace('{H1}', $page_info['h1'],  $template);
        $template = str_replace('{FOOTER}', $footer,  $template);

        $marker_services = array('{SITE}','{MENU}', '{FOOTER}','{SERVICES}', '{PAGE_TEXT}');
        $marker_info_services = array(SITE, Menu(), $footer, Services(),$page_info['page_text']);
        $page = str_replace($marker_services, $marker_info_services, $template);
        $page = str_replace('{SITE}', SITE, $page );
        break;
    case 3:
        $template = Get_Template('delivery.tpl');
        $template = str_replace('{TITLE}', $page_info['title'],  $template);
        $template  = str_replace('{CRUMBS}', $page_info['crumbs'], $template);
        $template  = str_replace('{H1}', $page_info['h1'],  $template);
        $template = str_replace('{FOOTER}', $footer,  $template);

        $marker_services = array('{SITE}','{MENU}', '{FOOTER}', '{PAGE_TEXT}');
        $marker_info_services = array(SITE, Menu(), $footer, $page_info['page_text']);
        $page = str_replace($marker_services, $marker_info_services, $template);
        $page = str_replace('{SITE}', SITE, $page );
        break;
    case 4:
        $template = Get_Template('portfolio.tpl');
        $template = str_replace('{TITLE}', $page_info['title'],  $template);
        $template  = str_replace('{CRUMBS}', $page_info['crumbs'], $template);
        $template  = str_replace('{H1}', $page_info['h1'],  $template);
        $template = str_replace('{FOOTER}', $footer,  $template);
        $template = str_replace('{PORTFOLIO}', Portfolio_page(),  $template);

        $marker_services = array('{SITE}','{MENU}', '{FOOTER}', '{PAGE_TEXT}');
        $marker_info_services = array(SITE, Menu(), $footer, $page_info['page_text']);
        $page = str_replace($marker_services, $marker_info_services, $template);
        $page = str_replace('{SITE}', SITE, $page );
        break;
    case 5:
        $template = Get_Template('contacts.tpl');
        $template = str_replace('{TITLE}', $page_info['title'],  $template);
        $template  = str_replace('{CRUMBS}', $page_info['crumbs'], $template);
        $template  = str_replace('{H1}', $page_info['h1'],  $template);
        $template = str_replace('{FOOTER}', $footer,  $template);

        $marker_services = array('{SITE}','{MENU}', '{FOOTER}', '{PAGE_TEXT}');
        $marker_info_services = array(SITE, Menu(), $footer, $page_info['page_text']);
        $page = str_replace($marker_services, $marker_info_services, $template);
        $page = str_replace('{MAP}', $template_map,$page);
        $page = str_replace('{SITE}', SITE, $page );
        break;
    case 6:
        $template = Get_Template('about.tpl');
        $template = str_replace('{TITLE}', $page_info['title'],  $template);
        $template  = str_replace('{CRUMBS}', $page_info['crumbs'], $template);

        $marker_services = array('{SITE}','{MENU}', '{FOOTER}', '{PAGE_TEXT}');
        $marker_info_services = array(SITE, Menu(), $footer, $page_info['page_text']);
        $page = str_replace($marker_services, $marker_info_services, $template);
        $page = str_replace('{SITE}', SITE, $page );
        $page  = str_replace('{H1}', $page_info['h1'],  $page);
        break;
    case 7:
        $template = Get_Template('subservices_page.tpl');
        $template = str_replace('{TITLE}', $page_info['title'],  $template);
        $template  = str_replace('{CRUMBS}', $page_info['crumbs'], $template);

        $marker_services = array('{SITE}','{MENU}', '{FOOTER}', '{SUBSERVICES}','{PAGE_TEXT}');
        $marker_info_services = array(SITE, Menu(), $footer, SubServices('subservice.tpl', $page_info['service_id']), $page_info['page_text']);
        $page = str_replace($marker_services, $marker_info_services, $template);
        $page = str_replace('{SITE}', SITE, $page );
        $page  = str_replace('{H1}', $page_info['h1'],  $page);
        break;
    case 8:
        $template = Get_Template('subservice_page.tpl');
        $template = str_replace('{TITLE}', $page_info['title'],  $template);
        $template  = str_replace('{CRUMBS}', $page_info['crumbs'], $template);

        $marker_services = array('{SITE}','{MENU}', '{FOOTER}', '{PAGE_TEXT}','{PRICES_TABLE}','{PORTFOLIO}');
        $marker_info_services = array(SITE, Menu(), $footer, $page_info['page_text'], Prices($page_info['price']), Portfolio_photos($page_info['category_id']));
        $page = str_replace($marker_services, $marker_info_services, $template);
        $page = str_replace('{SITE}', SITE, $page );
        $page  = str_replace('{H1}', $page_info['h1'],  $page);
        $page  = str_replace('{PRICE1_NAME}', $page_info['price1_name'],  $page);
        $page  = str_replace('{PRICE2_NAME}', $page_info['price2_name'],  $page);
        break;

}
echo $page;
?>


