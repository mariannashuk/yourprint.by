<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="{SITE}/css/style.css">
    <title>{TITLE}</title>
</head>
<body>
<header class="header">
    <div id="top-header" class="backgroundcolor_blue padding_120 flex flex_jc_space_between padding_10 align_items_center">
        <div class="width_22vw flex flex_jc_start gap_10px">
            <img class="display_none_480px" src="{SITE}/icons/location.svg">
            <p class="font_inter_regular_16 color_beige">Минск,  ул. Академика Курчатова, 5</p>
        </div>
        <div class="flex flex_jc_space_between align_items_center width_40vw">
            <a href="#" class="p color_beige">+375 (44) 489-99-59</a>
            <a href="#" class="p color_beige">yourprint@mail.ru</a>
            <div class="display_none_480px">
                <a href="#"><img src="{SITE}/icons/header_vk.svg"></a>
                <a href="#"><img src="{SITE}/icons/header_instagram.svg"></a>
                <a href="#"><img src="{SITE}/icons/header_telegram.svg"></a>
                <a href="#"><img src="{SITE}/icons/header_viber.svg"></a>
            </div>
        </div>
    </div>
    <div id="main-header" class="backgroundcolor_beige padding_120 flex flex_jc_space_between padding_10 align_items_center gap_15px">
        <a href="{SITE}"><img  src="{SITE}/icons/logo.svg"></a>
        <nav class="flex flex_jc_end width_70vw gap_40px display_none_480px">
            <ul class="color_blue font_inter_regular_16 flex flex_jc_space_between width_40vw align_items_center">
                {MENU}
                <!--<li><a href="#">Информация</a></li>-->
            </ul>
        </nav>
        <div class="flex flex_jc_space_between align_items_center gap_15px">
            <input id="input_header" class="p color_blue display_none_header_search" type="search"></input><img id="input_img" style="cursor: pointer;" src="{SITE}/icons/header_search.svg">
            <img id="burger_button" class="burger_icon display_none display_block_480px" src="{SITE}/icons/burger_menu.svg">
        </div>
    </div>
    <div id="burger_menu" class="header_480px backgroundcolor_blue flex_jc_center padding_20" style="box-shadow: inset 0px 6px 5px 0px rgba(119, 138, 135, 0.1);">
        <nav class="flex">
            <ul class="color_beige font_inter_regular_16 flex flex_column flex_jc_space_between align_items_center gap_20px">
                {MENU}
            </ul>
        </nav>
    </div>
    <div></div>
</header>

<div class="backgroundcolor_blue padding_120 padding_40">
    {CRUMBS}
    <h1 class="h1 color_beige">{H1}</h1>
</div>
{PORTFOLIO}
<!--<div class="padding_120 padding_40 backgroundcolor_beige flex flex_column align_items_center gap_20px">
    <h2 class="h2 color_blue">Визитки</h2>
    <div class="flex flexwrap_wrap flex_jc_space_between">
       <div id="portfolio_background_img_1" class="portfolio_background_img"></div>
        <div id="portfolio_background_img_2" class="portfolio_background_img"></div>
        <div id="portfolio_background_img_3" class="portfolio_background_img"></div>
        <div id="portfolio_background_img_4" class="portfolio_background_img"></div>
        <div id="portfolio_background_img_5" class="portfolio_background_img"></div>
        <div id="portfolio_background_img_6" class="portfolio_background_img"></div>
        <div id="portfolio_background_img_7" class="portfolio_background_img"></div>
        <div id="portfolio_background_img_8" class="portfolio_background_img"></div>
        <div class="portfolio_hidden display_none flexwrap_wrap backgroundcolor_beige flex_jc_space_between">
            <div id="portfolio_background_img_9" class="portfolio_background_img"></div>
            <div id="portfolio_background_img_10" class="portfolio_background_img"></div>
            <div id="portfolio_background_img_11" class="portfolio_background_img"></div>
            <div id="portfolio_background_img_12" class="portfolio_background_img"></div>
            <div id="portfolio_background_img_13" class="portfolio_background_img"></div>
            <div id="portfolio_background_img_14" class="portfolio_background_img"></div>
            <div id="portfolio_background_img_15" class="portfolio_background_img"></div>
            <div id="portfolio_background_img_16" class="portfolio_background_img"></div>
        </div>
    </div>
    <div class="portfolio_button flex flex_column align_items_center cursor_pointer">
        <p class="p color_blue">Нажмите, чтобы увидеть больше</p>
        <img class="portfolio_button_img" src="{SITE}/icons/button_arrow_blue.svg">
    </div>
</div>-->

<!--<div class="padding_120 backgroundcolor_beige flex flex_column align_items_center gap_20px">
    <h2 class="h2 color_blue">Визитки</h2>
    <div class="flex flexwrap_wrap flex_jc_space_between">
        {PORTFOLIO_PHOTOS}
        <div id="portfolio_background_img_1" class="portfolio_background_img"></div>
        <div id="portfolio_background_img_2" class="portfolio_background_img"></div>
        <div id="portfolio_background_img_3" class="portfolio_background_img"></div>
        <div id="portfolio_background_img_4" class="portfolio_background_img"></div>
        <div id="portfolio_background_img_5" class="portfolio_background_img"></div>
        <div id="portfolio_background_img_6" class="portfolio_background_img"></div>
        <div id="portfolio_background_img_7" class="portfolio_background_img"></div>
        <div id="portfolio_background_img_8" class="portfolio_background_img"></div>
        <div class="portfolio_hidden display_none flexwrap_wrap backgroundcolor_beige flex_jc_space_between">
            {PORTFOLIO_PHOTOS}
            <div id="portfolio_background_img_9" class="portfolio_background_img"></div>
            <div id="portfolio_background_img_10" class="portfolio_background_img"></div>
            <div id="portfolio_background_img_11" class="portfolio_background_img"></div>
            <div id="portfolio_background_img_12" class="portfolio_background_img"></div>
            <div id="portfolio_background_img_13" class="portfolio_background_img"></div>
            <div id="portfolio_background_img_14" class="portfolio_background_img"></div>
            <div id="portfolio_background_img_15" class="portfolio_background_img"></div>
            <div id="portfolio_background_img_16" class="portfolio_background_img"></div>
        </div>
    </div>
    <div class="portfolio_button flex flex_column align_items_center cursor_pointer padding_bottom_40px">
        <p class="p color_blue">Нажмите, чтобы увидеть больше</p>
        <img class="portfolio_button_img" src="{SITE}/icons/button_arrow_blue.svg">
    </div>
</div>-->
{FOOTER}
<script src="../js/scripts.js"></script>
</body>
</html>