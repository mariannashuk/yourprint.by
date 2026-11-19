<?php
function Get_Template($file)
{
    return file_get_contents(PATH_TEMPLATE . $file);
}
function Menu()
{
    $shablon = Get_Template('menu.tpl');
    global $DB; $str = '';
    $marker = array('{ID}', '{NAME}','{LINK}','{TEXT}','{POSITION}','{VISIBLE}');
    $SQL = 'SELECT `menu_id`, `menu_name`, `menu_link`, `menu_text`, `position`, `visible` 
FROM `menu` WHERE `visible` = 1 ORDER BY `position`';
    $date = mysqli_query ($DB, $SQL);
    $count = mysqli_num_rows($date);
    for($i = 0; $i < $count; $i++)
    {
        $inf = mysqli_fetch_array($date, MYSQLI_NUM);
        $str .= str_replace($marker, $inf, $shablon);
    }
    return $str;
}
function Footer()
{
    $shablon = Get_Template('footer_menu.tpl');
    global $DB;
    $str = '';
    $marker = array('{ID}', '{NAME}','{LINK}','{POSITION}','{VISIBLE}','{FOOTER_VISIBLE}');
    $SQL = 'SELECT `menu_id`, `menu_name`, `menu_link`, `position`, `visible` 
FROM `menu` WHERE `footer_visible` = 1 ORDER BY `position`';
    $date = mysqli_query ($DB, $SQL);
    $count = mysqli_num_rows($date);
    for($i = 0; $i < $count; $i++)
    {
        $inf = mysqli_fetch_array($date, MYSQLI_NUM);
        $str .= str_replace($marker, $inf, $shablon);
    }
    return $str;
}
function Footer_Services()
{
    $shablon = Get_Template('footer_menu.tpl');
    global $DB;
    $str = '';
    $marker = array('{ID}', '{NAME}','{LINK}','{POSITION}','{VISIBLE}');
    $SQL = 'SELECT `service_id`, `service_name`, `service_link`, `position`, `visible` 
FROM `services` WHERE `visible` = 1 AND `footer_visible` = 1 ORDER BY `position`';
    $date = mysqli_query ($DB, $SQL);
    $count = mysqli_num_rows($date);
    for($i = 0; $i < $count; $i++)
    {
        $inf = mysqli_fetch_array($date, MYSQLI_NUM);
        $str .= str_replace($marker, $inf, $shablon);
        $str = str_replace("<br>", ' ', $str);
    }
    return $str;
}
function Services()
{
    $shablon = Get_Template('services.tpl');
    global $DB;
    $str = '';
    $marker = array('{ID}', '{NAME}','{BACKGROUND}','{NOTICE}','{LINK}','{POSITION}','{VISIBLE}');
    $SQL = 'SELECT *
FROM `services` WHERE `visible` = 1 ORDER BY `position`';
    $result = mysqli_query($DB, $SQL);

    while($row = mysqli_fetch_assoc($result))
    {
        $inf = array(
            $row['service_id'],
            $row['service_name'],
            $row['service_background'],
            $row['service_notice'],
            $row['service_link'],
            $row['position'],
            $row['visible']
        );

        $item = str_replace($marker, $inf, $shablon);

        if(strpos($row['service_name'], '<br>') !== false)
        {
            $item = str_replace('{PADDING}', '', $item);
        }
        else
        {
            $item = str_replace('{PADDING}', 'padding_bottom_33px', $item);
        }

        $str .= $item;
    }
    return $str;

}
function SubServices($template_name, $service_id)
{
    $shablon = Get_Template($template_name);
    global $DB;
    $str = '';
    $marker = array('{ID}', '{NAME}','{BACKGROUND}','{LINK}','{POSITION}','{VISIBLE}','{SERVICE_ID}');
    $SQL = 'SELECT * FROM `subservices` WHERE `visible` = 1 AND `service_id` = ' . $service_id . ' ORDER BY `position`';
    $date = mysqli_query ($DB, $SQL);
    $count = mysqli_num_rows($date);
    for($i = 0; $i < $count; $i++)
    {
        $inf = mysqli_fetch_array($date, MYSQLI_NUM);
        $str .= str_replace($marker, $inf, $shablon);
    }
    return $str;
}
function Prices($price_page)
{
    $shablon = Get_Template('price.tpl');
    global $DB;
    $str = '';
    $marker = array('{ID}', '{NAME}','{TEXT}','{PRICE_PAGE}','{VISIBLE}','{POSITION}');
    $SQL = 'SELECT * FROM `prices` WHERE `visible` = 1 AND `price_page` = ' . $price_page . ' ORDER BY `position`';
    $date = mysqli_query ($DB, $SQL);
    $count = mysqli_num_rows($date);
    for($i = 0; $i < $count; $i++)
    {
        $inf = mysqli_fetch_array($date, MYSQLI_NUM);
        $str .= str_replace($marker, $inf, $shablon);
        if($i%2==1)
        {
            $str = str_replace('{CLASS_BLUE}', 'class="table_backgroundcolor_blue"', $str);
        }
        else
        {
            $str = str_replace('{CLASS_BLUE}', '', $str);
        }
    }
    return $str;

}
function Portfolio_photos($category_id)
{
    $shablon = Get_Template('portfolio_photos.tpl');
    global $DB;
    $str = '';
    $marker = array('{ID}', '{PHOTO_LINK}','{CATEGORY_ID}','{POSITION}','{VISIBLE}');
    $SQL = 'SELECT * FROM `portfolio_photos` WHERE `visible` = 1 AND `category_id` = ' . $category_id . ' ORDER BY `position`';
    $date = mysqli_query ($DB, $SQL);
    $count = mysqli_num_rows($date);
    for($i = 0; $i < 4; $i++)
    {
        $inf = mysqli_fetch_array($date, MYSQLI_NUM);
        $str .= str_replace($marker, $inf, $shablon);
    }
    return $str;
}

function Portfolio_page()
{
    global $DB;

    $shablon_category = Get_Template('portfolio_page_categories.tpl');
    $shablon_photos = Get_Template('portfolio_photos.tpl');

    $result = '';

    $SQL_categories = 'SELECT `category_id`,`category_name` FROM `categories` WHERE `visible` = 1 ORDER BY `position`';
    $categories_query = mysqli_query($DB, $SQL_categories);

    if (!$categories_query) {
        return '';
    }

    while ($category_row = mysqli_fetch_assoc($categories_query)) {
        $SQL_photos = 'SELECT * FROM `portfolio_photos` WHERE `visible` = 1 AND `category_id` = ' . (int)$category_row['category_id'] . ' ORDER BY `position`';
        $photo_query = mysqli_query($DB, $SQL_photos);

        if (!$photo_query || mysqli_num_rows($photo_query) == 0) {
            continue;
        }

        $photo_count = mysqli_num_rows($photo_query);
        $photos_array = array();

        while ($photo_row = mysqli_fetch_assoc($photo_query)) {
            $photos_array[] = $photo_row;
        }

        $category_html = $shablon_category;
        $category_html = str_replace('{CATEGORY}', $category_row['category_name'], $category_html);

        $all_photos_html = '';
        for ($i = 0; $i < $photo_count; $i++) {
            $marker = array('{ID}', '{PHOTO_LINK}', '{CATEGORY_ID}', '{POSITION}', '{VISIBLE}');
            $photo_data = array(
                $photos_array[$i]['photo_id'],
                $photos_array[$i]['photo_link'],
                $photos_array[$i]['category_id'],
                $photos_array[$i]['position'],
                $photos_array[$i]['visible']
            );
            $all_photos_html .= str_replace($marker, $photo_data, $shablon_photos);
        }

        $category_html = str_replace('{PORTFOLIO_PHOTOS}', $all_photos_html, $category_html);

        $result .= $category_html;
    }

    return $result;
}
function Map()
{
    return Get_Template('map.tpl');
}
function My_Parse_URL($url_site)
{
    global $DB;
    $str = '';
    $SQL = "SELECT * FROM `pages` WHERE `visible` = 1 AND `page_link`='".mysqli_real_escape_string($DB, $url_site)."'";

    $date = mysqli_query($DB, $SQL);
    $count = mysqli_affected_rows($DB);
    if($count == 1)
    {
        $inf = mysqli_fetch_array($date, MYSQLI_ASSOC);
        $inf['error'] = 0;
    }
    else
    {
        $inf['error'] = '404';
    }
    return $inf;
}






