<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="{SITE}/css/style.css">
    <title>Печать в Минске - ТвойПринт</title>
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
<!--<div class="flex backround_image_slider padding_120 padding_10vh">
    <div class="flex flex_jc_space_between width_100vw margintop_auto gap_15px_mobile">
        <h1 class="h1 color_beige">Вы придумываете.<br>Мы воплощаем!</b></h1>
        <button class="button bordercolor_beige color_beige alignself_center">Оформить заказ</button>
    </div>
</div>
<div class="backgroundcolor_blue padding_120 padding_60 flex flex_jc_space_between flex_column_480px gap_15px_mobile">
    <div class="flex flex_column flex_jc_center gap_5px flex_ai_center textalign_center">
        <img class="alignself_center" src="{SITE}/icons/Car.svg">
        <h2 class="h2 color_beige">Бесплатная доставка</h2>
        <p class="color_beige opacity_70 p">Действует при заказе<br>75 BYN и выше</p>
    </div>
    <div class="flex flex_column gap_5px flex_ai_center textalign_center">
        <img class="alignself_center" src="{SITE}/icons/Money.svg">
        <h2 class="h2 color_beige">Стоимость</h2>
        <p class="color_beige opacity_70 p">Мы предлагаем<br>конкурентоспособные цены</p>
    </div>
    <div class="flex flex_column gap_5px flex_ai_center textalign_center">
        <img class="alignself_center" src="{SITE}/icons/Safe.svg">
        <h2 class="h2 color_beige">Безопасность</h2>
        <p class="color_beige opacity_70 p">Честная цена без скрытых<br>платежей и депозитов </p>
    </div>
    <div class="flex flex_column gap_5px flex_ai_center textalign_center">
        <img class="alignself_center" src="{SITE}/icons/Progress.svg">
        <h2 class="h2 color_beige">Надежность</h2>
        <p class="color_beige opacity_70 p">Надежные сотрудники и<br>качественное оборудование</p>
    </div>
</div>
<div class="backgroundcolor_blue padding_120 flex flex_jc_space_between padding_80 gap_30px flex_column_480px">
    <div class="flex flex_column gap_40px flex_ai_center" style="flex:1">
        <div class="textalign_center">
            <h1 class="h1 color_beige">Вопрос-ответ</h1>
            <p class="color_beige opacity_70 p">Отвечаем на популярные вопросы</p>
        </div>
        <div class="flex flex_column gap_10px flex_row_480px">
            <p id="FAQ_area1" class=" FAQ_area FAQ_area_active stroke_gold p backgroundcolor_gold color_blue padding_10_all alignself_start">Организация доставки и оплата</p>
            <p id="FAQ_area2" class=" FAQ_area stroke_gold p backgroundcolor_gold color_blue padding_10_all alignself_start">Требования к макетам</p>
            <p id="FAQ_area3" class="FAQ_area stroke_gold p backgroundcolor_gold color_blue padding_10_all alignself_start">Стоимость и тиражи</p>
            <p id="FAQ_area4" class="FAQ_area stroke_gold p backgroundcolor_gold color_blue padding_10_all alignself_start">Материалы: качество и гарантии</p>
        </div>
    </div>
    <div id = "FAQ_block_questions1" class="FAQ_block_questions flex flex_column gap_15px flex_1_7">
        <div class="stroke_1px flex flex_column FAQ_block">
            <div class="flex gap_40px flex_jc_space_between flex_ai_center" >
                <p class="flex_1_480px p color_beige">Можно ли изменить адрес доставки, если заказ уже запущен в печать?</p>
                <img class="FAQ_arrow" src="{SITE}/icons/FAQ_arrow.svg">
            </div>
            <div class="FAQ_answer backgroundcolor_beige color_blue p padding_10_all FAQ_visibility_hidden">Да, просто свяжитесь с вашим менеджером до момента передачи готового тиража в службу доставки.</div>
        </div>
        <div class="stroke_1px flex flex_column FAQ_block">
            <div class="flex gap_40px flex_jc_space_between flex_ai_center" >
                <p class="flex_1_480px p color_beige">Осуществляете ли вы доставку по всей стране или только по городу?</p>
                <img class="FAQ_arrow" src="{SITE}/icons/FAQ_arrow.svg">
            </div>
            <div class=" FAQ_answer backgroundcolor_beige color_blue p padding_10_all FAQ_visibility_hidden">По городу мы возим заказы собственной курьерской службой. Для доставки в другие регионы мы пользуемся услугами проверенных транспортных компаний</div>
        </div>
        <div class="stroke_1px flex flex_column FAQ_block">
            <div class="flex gap_40px flex_jc_space_between flex_ai_center" >
                <p class="flex_1_480px p color_beige">Возможна ли доставка заказа в выходные или праздничные дни?</p>
                <img class="FAQ_arrow" src="{SITE}/icons/FAQ_arrow.svg">
            </div>
            <div class=" FAQ_answer backgroundcolor_beige color_blue p padding_10_all FAQ_visibility_hidden">Наш стандартный график доставки — будние дни. Если вам критично получить тираж в субботу или праздничный день, пожалуйста, укажите это при оформлении заказа.</div>
        </div>
        <div class="stroke_1px flex flex_column FAQ_block">
            <div class="flex gap_40px flex_jc_space_between flex_ai_center" >
                <p class="flex_1_480px p color_beige">Какие способы оплаты доступны для физических и юридических лиц?</p>
                <img class="FAQ_arrow" src="{SITE}/icons/FAQ_arrow.svg">
            </div>
            <div class="FAQ_answer backgroundcolor_beige color_blue p padding_10_all FAQ_visibility_hidden">Принимаем оплату всеми удобными способами.Для юрлиц: Безналичный расчет по счету (предоставляем полный пакет закрывающих документов, работаем с НДС/без НДС).
                Для физлиц: Оплата картой на сайте, по QR-коду или наличными в офисе при получении.</div>
        </div>
    </div>


    <div id = "FAQ_block_questions2"  class="FAQ_block_questions flex flex_column gap_15px flex_1_7" style="display:none">
        <div class="stroke_1px flex flex_column FAQ_block">
            <div class="flex gap_40px flex_jc_space_between flex_ai_center" >
                <p class="flex_1_480px p color_beige">В каком формате лучше присылать файл, чтобы ничего не "поехало"?</p>
                <img class="FAQ_arrow" src="{SITE}/icons/FAQ_arrow.svg">
            </div>
            <div class="FAQ_answer backgroundcolor_beige color_blue p padding_10_all FAQ_visibility_hidden">Лучше всего в PDF или TIFF.
                Эти форматы «замораживают» ваш макет: картинки не потеряются, а текст не сдвинется. Программы типа Word или PowerPoint не подходят, так как они могут исказить цвета и размеры при печати.</div>
        </div>
        <div class="stroke_1px flex flex_column FAQ_block">
            <div class="flex gap_40px flex_jc_space_between flex_ai_center" >
                <p class="flex_1_480px p color_beige">Как близко к краю можно ставить текст?</p>
                <img class="FAQ_arrow" src="{SITE}/icons/FAQ_arrow.svg">
            </div>
            <div class=" FAQ_answer backgroundcolor_beige color_blue p padding_10_all FAQ_visibility_hidden">Ответ: Не ближе 5 мм от края (линии реза).
                Это «безопасная зона». Во-первых, так важная информация (телефон, логотип) точно не попадет под нож. Во-вторых, макет с «воздухом» по краям выглядит гораздо профессиональнее.</div>
        </div>
        <div class="stroke_1px flex flex_column FAQ_block">
            <div class="flex gap_40px flex_jc_space_between flex_ai_center" >
                <p class="flex_1_480px p color_beige">Можно ли использовать фото из интернета?</p>
                <img class="FAQ_arrow" src="{SITE}/icons/FAQ_arrow.svg">
            </div>
            <div class=" FAQ_answer backgroundcolor_beige color_blue p padding_10_all FAQ_visibility_hidden">Только если у них высокое разрешение (300 DPI).
                Картинки из соцсетей выглядят четко на телефоне, но при печати могут стать размытыми и «пиксельными». Для качественного оттиска фото должно быть тяжелым и четким при большом увеличении.</div>
        </div>
        <div class="stroke_1px flex flex_column FAQ_block">
            <div class="flex gap_40px flex_jc_space_between flex_ai_center" >
                <p class="flex_1_480px p color_beige">Какой размер макета делать?</p>
                <img class="FAQ_arrow" src="{SITE}/icons/FAQ_arrow.svg">
            </div>
            <div class="FAQ_answer backgroundcolor_beige color_blue p padding_10_all FAQ_visibility_hidden">Делайте макет в реальном размере (1:1).
                Не нужно присылать визитку размером с плакат или наоборот. Создавайте рабочую область ровно того размера, который вы хотите получить в руки (плюс вылеты по краям). Это исключит ошибки при масштабировании.</div>
        </div>
    </div>
    <div id = "FAQ_block_questions3"  class="FAQ_block_questions flex flex_column gap_15px flex_1_7" style="display:none">
        <div class="stroke_1px flex flex_column FAQ_block">
            <div class="flex gap_40px flex_jc_space_between flex_ai_center" >
                <p class="flex_1_480px p color_beige">АРАРАРожно ли изменить адрес доставки, если заказ уже запущен в печать?</p>
                <img class="FAQ_arrow" src="{SITE}/icons/FAQ_arrow.svg">
            </div>
            <div class="FAQ_answer backgroundcolor_beige color_blue p padding_10_all FAQ_visibility_hidden">Да, просто свяжитесь с вашим менеджером до момента передачи готового тиража в службу доставки.</div>
        </div>
        <div class="stroke_1px flex flex_column FAQ_block">
            <div class="flex gap_40px flex_jc_space_between flex_ai_center" >
                <p class="flex_1_480px p color_beige">Можно ли изменить адрес доставки, если заказ уже запущен в печать?</p>
                <img class="FAQ_arrow" src="{SITE}/icons/FAQ_arrow.svg">
            </div>
            <div class=" FAQ_answer backgroundcolor_beige color_blue p padding_10_all FAQ_visibility_hidden">Да, просто свяжитесь с вашим менеджером до момента передачи готового тиража в службу доставки.</div>
        </div>
        <div class="stroke_1px flex flex_column FAQ_block">
            <div class="flex gap_40px flex_jc_space_between flex_ai_center" >
                <p class="flex_1_480px p color_beige">Можно ли изменить адрес доставки, если заказ уже запущен в печать?</p>
                <img class="FAQ_arrow" src="{SITE}/icons/FAQ_arrow.svg">
            </div>
            <div class=" FAQ_answer backgroundcolor_beige color_blue p padding_10_all FAQ_visibility_hidden">Да, просто свяжитесь с вашим менеджером до момента передачи готового тиража в службу доставки.</div>
        </div>
        <div class="stroke_1px flex flex_column FAQ_block">
            <div class="flex gap_40px flex_jc_space_between flex_ai_center" >
                <p class="flex_1_480px p color_beige">Можно ли изменить адрес доставки, если заказ уже запущен в печать?</p>
                <img class="FAQ_arrow" src="{SITE}/icons/FAQ_arrow.svg">
            </div>
            <div class="FAQ_answer backgroundcolor_beige color_blue p padding_10_all FAQ_visibility_hidden">Да, просто свяжитесь с вашим менеджером до момента передачи готового тиража в службу доставки.</div>
        </div>
    </div>
    <div id = "FAQ_block_questions3"  class="FAQ_block_questions flex flex_column gap_15px flex_1_7" style="display:none">
        <div class="stroke_1px flex flex_column FAQ_block">
            <div class="flex gap_40px flex_jc_space_between flex_ai_center" >
                <p class="flex_1_480px p color_beige">АРАРАРожно ли изменить адрес доставки, если заказ уже запущен в печать?</p>
                <img class="FAQ_arrow" src="{SITE}/icons/FAQ_arrow.svg">
            </div>
            <div class="FAQ_answer backgroundcolor_beige color_blue p padding_10_all FAQ_visibility_hidden">Да, просто свяжитесь с вашим менеджером до момента передачи готового тиража в службу доставки.</div>
        </div>
        <div class="stroke_1px flex flex_column FAQ_block">
            <div class="flex gap_40px flex_jc_space_between flex_ai_center" >
                <p class="flex_1_480px p color_beige">Можно ли изменить адрес доставки, если заказ уже запущен в печать?</p>
                <img class="FAQ_arrow" src="{SITE}/icons/FAQ_arrow.svg">
            </div>
            <div class=" FAQ_answer backgroundcolor_beige color_blue p padding_10_all FAQ_visibility_hidden">Да, просто свяжитесь с вашим менеджером до момента передачи готового тиража в службу доставки.</div>
        </div>
        <div class="stroke_1px flex flex_column FAQ_block">
            <div class="flex gap_40px flex_jc_space_between flex_ai_center" >
                <p class="flex_1_480px p color_beige">Можно ли изменить адрес доставки, если заказ уже запущен в печать?</p>
                <img class="FAQ_arrow" src="{SITE}/icons/FAQ_arrow.svg">
            </div>
            <div class=" FAQ_answer backgroundcolor_beige color_blue p padding_10_all FAQ_visibility_hidden">Да, просто свяжитесь с вашим менеджером до момента передачи готового тиража в службу доставки.</div>
        </div>
        <div class="stroke_1px flex flex_column FAQ_block">
            <div class="flex gap_40px flex_jc_space_between flex_ai_center" >
                <p class="flex_1_480px p color_beige">Можно ли изменить адрес доставки, если заказ уже запущен в печать?</p>
                <img class="FAQ_arrow" src="{SITE}/icons/FAQ_arrow.svg">
            </div>
            <div class="FAQ_answer backgroundcolor_beige color_blue p padding_10_all FAQ_visibility_hidden">Да, просто свяжитесь с вашим менеджером до момента передачи готового тиража в службу доставки.</div>
        </div>
    </div>
</div>
<div class="backgroundcolor_blue flex flex_column gap_15px padding_60 feedback_480px">

    <div class="padding_100 flex gap_15px align_items_center flex_row_480px">
        <button id="button_arrow_left" class="button_arrow stroke_gold button_arrow"><img src="{SITE}/icons/button_arrow_gold.svg"></button>
        <div class="flex gap_15px flex_row_480px">
            <div class="backgroundcolor_beige flex flex_column  padding_feedback gap_30px" style="flex:1; ">
                <div class="flex gap_10px flex_ai_end">
                    <img class="avatar" src="{SITE}/icons/avatar1.png">
                    <div>
                        <h2 class="avatar_name h2 color_blue">Julia Malysheva</h2>
                        <p class="avatar_username color_blue opacity_70 p">@julia_mlshv</p>
                    </div>
                </div>
                <p class="avatar_text p color_blue textalign_justify padding_top_20px">Сотрудники лапочки, а печать на высоте. Уже не первый год печатаю у вас, и нет причин не любить этот печатный центр ;)</p>
                <div class="avatar_range flex flex_jc_space_between" style="margin-top: auto">
                    <img class="stars_480px" src="{SITE}/icons/stars5.svg">
                    <p class="p color_blue">31/01/2026</p>
                </div>
            </div>

            <div class="backgroundcolor_beige flex flex_column padding_feedback gap_30px" style="flex:1;">
                <div class="flex gap_10px flex_ai_end ">
                    <img class="avatar" src="{SITE}/icons/avatar2.png">
                    <div>
                        <h2 class="h2 color_blue">Julia Malysheva</h2>
                        <p class="color_blue opacity_70 p">@julia_mlshv</p>
                    </div>
                </div>
                <p class="p color_blue textalign_justify  padding_top_20px" >Сотрудники лапочки, а печать на высоте. Уже не первый год печатаю у вас, и нет причин не любить этот печатный центр ;)</p>
                <div class="avatar_range flex flex_jc_space_between" style="margin-top: auto">
                    <img class="stars_480px" src="{SITE}/icons/stars5.svg">
                    <p class="p color_blue">31/01/2026</p>
                </div>
            </div>

            <div class="backgroundcolor_beige flex flex_column padding_feedback gap_30px" style="flex:1;">
                <div class="flex gap_10px flex_ai_end">
                    <img class="avatar" src="{SITE}/icons/avatar3.png">
                    <div>
                        <h2 class="h2 color_blue">Julia Malysheva</h2>
                        <p class="color_blue opacity_70 p">@julia_mlshv</p>
                    </div>
                </div>
                <p class="p color_blue textalign_justify  padding_top_20px">Сотрудники лапочки, а печать на высоте. Уже не первый год печатаю у вас, и нет причин не любить этот печатный центр ;)</p>
                <div class="flex flex_jc_space_between" style="margin-top: auto">
                    <img class="stars_480px" src="{SITE}/icons/stars5.svg">
                    <p class="p color_blue">31/01/2026</p>
                </div>
            </div>
        </div>
        <button  id="button_arrow_right" class="button_arrow stroke_gold button_arrow rotatedY"><img src="../icons/button_arrow_gold.svg"></button>
    </div>
    <div class="flex gap_5px flex_jc_center">
        <div class="stroke_gold point point_active"></div><div class="stroke_gold point"></div><div class="stroke_gold point"></div>
    </div>
</div>
<div class="backgroundcolor_blue map padding_120">

</div>
</div>-->
{PAGE_TEXT}
{FOOTER}
<script src="{SITE}/js/scripts.js" defer></script>
</body>
</html>