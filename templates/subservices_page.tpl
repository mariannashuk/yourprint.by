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
    <!--<nav>
        <ul class="breadcrumb color_beige opacity_70 p">
            <li><a class="color_beige opacity_70 p" href="{SITE}">Главная</a></li>
            <li class="color_beige opacity_70 p">&gt;</li>
            <li><a class="color_beige opacity_70 p" href="{SITE}/services/">Услуги</a></li>
            <li class="color_beige opacity_70 p">&gt;</li>
            <li><a class="color_beige opacity_70 p" href="{SITE}/services/large_format/">{H1}</a></li>
        </ul>
    </nav>-->
    {CRUMBS}
    <h1 class="h1 color_beige">{H1}</h1>
</div>

<!--<p class="p color_blue backgroundcolor_beige padding_120 textalign_justify padding_40">Широкоформатная печать создает изделия крупного размера с высоким качеством и детализацией.
    Яркие и четкие изображения привлекают внимание с любого расстояния, используются в рекламе, дизайне интерьеров, выставочной деятельности и других сферах.
    Современные технологии и импортное оборудование открывают широкие возможности для реализации креативных идей на высоком профессиональном уровне.
</p>-->{PAGE_TEXT}

<div class="padding_120 backgroundcolor_beige flex  flexwrap_wrap gap_10px padding_40" style="flex-shrink: 0;">
        {SUBSERVICES}
    <!--<a href="service_large_format_1.html">
    <div class=" flex gap_20px"><div class="service_format cursor_pointer backgroundcolor_blue flex align_items_center gap_20px stroke_1px bordercolor_blue width_390px">
                <img class="large_format_img" src="{SITE}/images/large_format_1.png">
                <h2 class="h2 color_beige">Плакаты и<br>постеры</h2>
            </div></a>
    <div class="service_format cursor_pointer backgroundcolor_blue flex align_items_center gap_20px stroke_1px bordercolor_blue width_390px">
        <img class="large_format_img" src="{SITE}/images/large_format_2.png">
        <h2 class="h2 color_beige">Накатка на<br>подоснову</h2>
    </div>
    <div class="service_format cursor_pointer backgroundcolor_blue flex align_items_center gap_20px stroke_1px bordercolor_blue width_390px">
        <img class="large_format_img" src="{SITE}/images/large_format_3.png">
        <h2 class="h2 color_beige">Печать<br>чертежей</h2>
    </div></div>
<div class="flex gap_20px"><div class="service_format cursor_pointer backgroundcolor_blue flex align_items_center gap_20px stroke_1px bordercolor_blue width_390px">
        <img class="large_format_img" src="{SITE}/images/large_format_4.png">
        <h2 class="h2 color_beige">Печать на<br>холсте</h2>
    </div>
    <div class="service_format cursor_pointer backgroundcolor_blue flex align_items_center gap_20px stroke_1px bordercolor_blue width_390px">
        <img class="large_format_img" src="{SITE}/images/large_format_5.png">
        <h2 class="h2 color_beige">Фотокартины</h2>
    </div>
    <div class="service_format cursor_pointer backgroundcolor_blue flex align_items_center gap_20px stroke_1px bordercolor_blue width_390px">
        <img class="large_format_img" src="{SITE}/images/large_format_6.png">
        <h2 class="h2 color_beige">Стенды<br>roll-up</h2>
    </div></div>
<div class="flex gap_20px"><div class="service_format cursor_pointer backgroundcolor_blue flex align_items_center gap_20px stroke_1px bordercolor_blue width_390px">
        <img class="large_format_img" src="{SITE}/images/large_format_7.png">
        <h2 class="h2 color_beige">Печать<br>баннеров</h2>
    </div>
    <div class="service_format cursor_pointer backgroundcolor_blue flex align_items_center gap_20px stroke_1px bordercolor_blue width_390px">
        <img class="large_format_img" src="{SITE}/images/large_format_8.png">
        <h2 class="h2 color_beige">Печать рамок<br>Инстаграм</h2>
    </div>-->
</div>

{FOOTER}
<script src="{SITE}/js/scripts.js"></script>
</body>
</html>