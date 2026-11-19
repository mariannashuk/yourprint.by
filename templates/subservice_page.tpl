<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="{SITE}/css/style.css">
    <title>Услуги типографии ТвойПринт. Плакаты и постеры</title>
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
                <li><a class="color_beige opacity_70 p" href="index.tpl">Главная</a></li>
                <li class="color_beige opacity_70 p">&gt;</li>
                <li><a class="color_beige opacity_70 p" href="services.html">Услуги</a></li>
                <li class="color_beige opacity_70 p">&gt;</li>
                <li><a class="color_beige opacity_70 p" href="service_large_format.html">Широкоформатная печать</a></li>
                <li class="color_beige opacity_70 p">&gt;</li>
                <li><a class="color_beige opacity_70 p" href="./service_large_format_1.html">{H1}</a></li>
            </ul>
        </nav>-->
        {CRUMBS}
        <h1 class="h1 color_beige">{H1}</h1>
    </div>

    <div class="padding_120 backgroundcolor_beige padding_40 flex_column gap_40px">
        {PAGE_TEXT}
       <!-- <p class="p color_blue backgroundcolor_beige textalign_justify padding_bottom_40px">
        Широкоформатная печать — это цифровая печать на различных материалах,
        размеры которых позволяют изготавливать практически любую полиграфическую продукцию — от маленькой наклейки (стикера)
        до огромной баннерной растяжки (брендмауера). Основная сфера применения широкоформатной печати — это реклама и декоративно-отделочные работы,
        ведь с помощью различных видов широкоформатной печати можно изготавливать рекламные вывески и баннеры, и печатать рекламно-информационные стенды,
        афиши или плакаты, а также декорировать интерьеры с помощью специальных обоев с фотопечатью или изготавливать высококачественные репродукции картин.
        Цена зависит от особенностей проекта, размера продукта, тиража. </p>

    <table class="padding_40" style="width:100%;">
        <thead class="backgroundcolor_gold_opacity_0_5 h2 color_blue text textalign_left"><tr>
            <th class="table_padding">{PRICE1_NAME}</th>
            <th class="table_padding">{PRICE2_NAME}</th>
        </tr></thead>
        <tbody class="p color_blue">
            {PRICES_TABLE}
        <tr><td class="table_padding">Постерная бумага 150 г/м2</td><td class="table_padding">18 руб.</td></tr>
            <tr class="table_backgroundcolor_blue"><td class="table_padding">Постерная бумага 150 г/м2 с односторонней ламинацией</td><td class="table_padding">25,2 руб.</td></tr>
            <tr><td class="table_padding">Пленка самоклеющаяся</td><td class="table_padding">27,6 руб.</td></tr>
            <tr class="table_backgroundcolor_blue"><td class="table_padding">Пленка самоклеющаяся с ламинацией</td><td class="table_padding">35,4 руб.</td></tr>

            <tr><td class="table_padding">Пленка самоклеющаяся с плоттерной резкой</td><td class="table_padding">35,4 руб.</td></tr>
            <tr class="table_backgroundcolor_blue"><td class="table_padding">Пленка самоклеющаяся с ламинацией и плоттерной резкой</td><td class="table_padding">43,2 руб.</td></tr>
            <tr><td class="table_padding">Пленка бэклит (для световых коробов)</td><td class="table_padding">54,6 руб.</td></tr>
            <tr class="table_backgroundcolor_blue"><td class="table_padding">Баннер бэклит (для световых коробов)</td><td class="table_padding">31,2 руб.</td></tr>

            <tr><td class="table_padding">Баннер литой 440 г/м2</td><td class="table_padding">27,6 руб.</td></tr>
            <tr class="table_backgroundcolor_blue"><td class="table_padding">Роллап 1*2 м</td><td class="table_padding">186 руб.</td></tr>
        </tbody>
    </table>

     <div class=" backgroundcolor_beige flex  flex_jc_center flex_ai_center gap_20px padding_top_40px">
        <h2 class="h2 color_blue">Ознакомиться со всем прайсом:</h2><a><img src="../icons/PDF.svg"></a>
     </div>
     <p class="p color_blue backgroundcolor_beige textalign_justify padding_40">
        Широкоформатная печать — это цифровая печать на различных материалах,
        размеры которых позволяют изготавливать практически любую полиграфическую продукцию — от маленькой наклейки (стикера)
        до огромной баннерной растяжки (брендмауера). Основная сфера применения широкоформатной печати — это реклама и декоративно-отделочные работы,
        ведь с помощью различных видов широкоформатной печати можно изготавливать рекламные вывески и баннеры, и печатать рекламно-информационные стенды,
        афиши или плакаты, а также декорировать интерьеры с помощью специальных обоев с фотопечатью или изготавливать высококачественные репродукции картин.
        Цена зависит от особенностей проекта, размера продукта, тиража. </p>
-->


    <div class=" backgroundcolor_beige flex flex_column textalign_center gap_20px">
        <h2 class="h2 color_blue">Примеры работ</h2>
        <div class="flex gap_20px">
            <!--<div id="portfolio_background_img_1" class="portfolio_background_img"></div>
            <div id="portfolio_background_img_2" class="portfolio_background_img"></div>
            <div id="portfolio_background_img_3" class="portfolio_background_img"></div>
            <div id="portfolio_background_img_4" class="portfolio_background_img"></div>-->
            {PORTFOLIO}
        </div>
        <a href="{SITE}/portfolio/"><div class="portfolio_button flex align_items_center flex_jc_center cursor_pointer">
            <p class="p color_blue">Нажмите, чтобы увидеть больше</p>
            <img class="portfolio_button_img" style="transform:rotate(-90deg);" src="{SITE}/icons/button_arrow_blue.svg">
        </div></a>
    </div>
    </div>


{FOOTER}
    <script src="{SITE}/js/scripts.js"></script>
</body>
</html>