<!--<div class="padding_120 padding_40 backgroundcolor_beige flex flex_column align_items_center gap_20px">
    <h2 class="h2 color_blue">{CATEGORY}</h2>
    <div class="flex flexwrap_wrap flex_jc_space_between" style="width:100%;">
        {PORTFOLIO_PHOTOS}-->
        <!-- <div id="portfolio_background_img_1" class="portfolio_background_img"></div>
         <div id="portfolio_background_img_2" class="portfolio_background_img"></div>
         <div id="portfolio_background_img_3" class="portfolio_background_img"></div>
         <div id="portfolio_background_img_4" class="portfolio_background_img"></div>
         <div id="portfolio_background_img_5" class="portfolio_background_img"></div>
         <div id="portfolio_background_img_6" class="portfolio_background_img"></div>
         <div id="portfolio_background_img_7" class="portfolio_background_img"></div>
         <div id="portfolio_background_img_8" class="portfolio_background_img"></div>-->
        <!--<div class="portfolio_hidden display_none flexwrap_wrap backgroundcolor_beige flex_jc_space_between">
            {PORTFOLIO_PHOTOS}-->
            <!-- <div id="portfolio_background_img_9" class="portfolio_background_img"></div>
             <div id="portfolio_background_img_10" class="portfolio_background_img"></div>
             <div id="portfolio_background_img_11" class="portfolio_background_img"></div>
             <div id="portfolio_background_img_12" class="portfolio_background_img"></div>
             <div id="portfolio_background_img_13" class="portfolio_background_img"></div>
             <div id="portfolio_background_img_14" class="portfolio_background_img"></div>
             <div id="portfolio_background_img_15" class="portfolio_background_img"></div>
             <div id="portfolio_background_img_16" class="portfolio_background_img"></div>-->
        <!--</div>
    </div>
    <div class="portfolio_button flex flex_column align_items_center cursor_pointer">
        <p class="p color_blue">Нажмите, чтобы увидеть больше</p>
        <img class="portfolio_button_img" src="{SITE}/icons/button_arrow_blue.svg">
    </div>
</div>-->

<div class="portfolio-category">
    <div class="padding_120 padding_40 backgroundcolor_beige flex flex_column align_items_center gap_20px">
        <h2 class="h2 color_blue">{CATEGORY}</h2>
        <div class="flex flexwrap_wrap gap_5px portfolio-photos" style="width:100%;">
            {PORTFOLIO_PHOTOS}
        </div>
        <div class="portfolio_button flex flex_column align_items_center cursor_pointer" style="display: none;">
            <p class="p color_blue">Нажмите, чтобы увидеть больше</p>
            <img class="portfolio_button_img" src="{SITE}/icons/button_arrow_blue.svg">
        </div>
    </div>
</div>