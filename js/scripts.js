document.addEventListener('DOMContentLoaded', function() {
    document.getElementById('burger_button').onclick = function() {
        document.getElementById('burger_menu').classList.toggle('header_480px');
        document.getElementById('burger_menu').classList.toggle('flex');
    };

    document.getElementById('feedback_form_button').onclick=function (){
        const width = 500;
        const height = 650;
        const left = (screen.width - width) / 2;
        const top = (screen.height - height) / 2;

        window.open(
            './templates/feedback_form.html',
            'feedback_window',
            'width=' + width + ',height=' + height + ',left=' + left + ',top=' + top + ',resizable=yes,scrollbars=yes'
        );
    };
    const categories = document.querySelectorAll('.portfolio-category');

    categories.forEach(category => {
        const photosContainer = category.querySelector('.portfolio-photos');
        const allPhotos = photosContainer ? Array.from(photosContainer.children) : [];
        const button = category.querySelector('.portfolio_button');
        const buttonWrapper = category.querySelector('.portfolio_button');

        if (allPhotos.length === 0) {
            category.remove();
            return;
        }

        if (allPhotos.length > 8) {

            if (button) {
                button.style.display = 'flex';

                for (let i = 8; i < allPhotos.length; i++) {
                    allPhotos[i].style.display = 'none';
                }

                let isExpanded = false;
                button.addEventListener('click', function() {
                    isExpanded = !isExpanded;

                    for (let i = 8; i < allPhotos.length; i++) {
                        allPhotos[i].style.display = isExpanded ? 'block' : 'none';
                    }

                    const buttonText = button.querySelector('.p');
                    const buttonImg = button.querySelector('.portfolio_button_img');

                    if (buttonText) {
                        buttonText.textContent = isExpanded ? 'Скрыть' : 'Нажмите, чтобы увидеть больше';
                    }

                    if (buttonImg) {
                        buttonImg.style.transform = isExpanded ? 'rotate(180deg)' : 'rotate(0deg)';
                    }
                });
            }
        } else {
            if (button) {
                button.remove();
            }
        }
    });

    const faqBlocks = document.querySelectorAll('.FAQ_block');
    const faqAreas = document.querySelectorAll('.FAQ_area');
    const faqQuestions = document.querySelectorAll('.FAQ_block_questions');
    faqBlocks.forEach((block) => {
        block.addEventListener('click', function(event) {
            event.stopPropagation();
            
            block.classList.toggle('gap_10px');
            block.querySelector('.FAQ_answer').classList.toggle('FAQ_visibility_hidden');   
            block.querySelector('.FAQ_arrow').classList.toggle('rotated'); 
            faqBlocks.forEach(otherBlock => {
                if(otherBlock != block)
                {
                    otherBlock.querySelector('.FAQ_answer').classList.add('FAQ_visibility_hidden');
                    otherBlock.classList.remove('gap_10px');
                    otherBlock.querySelector('.FAQ_arrow').classList.remove('rotate');
                }
            });
        });
    });
    faqAreas.forEach((block,index) => {
        
        block.addEventListener('click', function(event) {
            event.stopPropagation();
            
            block.classList.toggle('FAQ_area_active');
            faqQuestions[index].style.display='flex';
            faqQuestions.forEach(otherBlock => {
                if(otherBlock != faqQuestions[index])
                {
                    otherBlock.style.display='none';
                }
            });
            faqAreas.forEach(otherBlock => {
                if(otherBlock != block)
                {
                    otherBlock.classList.remove('FAQ_area_active');
                }
            });
        });
    });
    document.getElementById('input_img').onclick = function()
    {
        let input = document.getElementById('input_header');
        input.classList.toggle('display_none_header_search');
        input.classList.toggle('input_header');
    }
        let reviews = [
    [
        {
            text: "Сотрудники лапочки, а печать на высоте. Уже не первый год печатаю у вас, и нет причин не любить этот печатный центр ;)",
            name: "Julia Malysheva",
            handle: "@julia_mlshv",
            photo: "../icons/avatar1.png",
            stars: 5,
            date: "31/01/2026"
        },
        {
            text: "Отличный печатный центр! Сотрудники всегда рады помочь клиентам в решении поставленных задач, оперативно и качественно осуществляют любые заказы.",
            name: "Anna Smirnova",
            handle: "@anna_smirnova",
            photo: "../icons/avatar2.png",
            stars: 5,
            date: "30/01/2026"
        },
        {
            text: "Печатаю здесь отчеты по курсовым и практике уже не первый год. Очень хорошая печать и самое главное - в кратчайшие сроки.",
            name: "Ksenia Kamova",
            handle: "@ksksks",
            photo: "../icons/avatar3.png",
            stars: 5,
            date: "29/01/2026"
        }
    ],
    [
        {
            text: "Быстро, качественно, недорого. Рекомендую всем! Особенно понравилось отношение к клиентам и помощь в выборе материалов.",
            name: "Alex Petrov",
            handle: "@alex_petrov",
            photo: "../icons/avatar4.png",
            stars: 5,
            date: "28/01/2026"
        },
        {
            text: "Отличный сервис! Заказывал баннеры для выставки, сделали все в срок и с высоким качеством. Спасибо!",
            name: "Mikhail Ivanov",
            handle: "@mikhail_ivanov",
            photo: "../icons/avatar5.png",
            stars: 5,
            date: "27/01/2026"
        },
        {
            text: "Очень довольна работой центра. Всегда помогают с выбором материалов и форматов. Цены приемлемые.",
            name: "Elena Kozlova",
            handle: "@elena_kozlova",
            photo: "../icons/avatar6.png",
            stars: 5,
            date: "26/01/2026"
        }
    ],
    [
        {
            text: "Лучший печатный центр в городе! Всегда свежие идеи и профессиональный подход. Буду заказывать еще!",
            name: "Dmitry Volkov",
            handle: "@dmitry_volkov",
            photo: "../icons/avatar7.png",
            stars: 5,
            date: "25/01/2026"
        },
        {
            text: "Заказывала визитки и листовки. Качество печати отличное, цены демократичные. Спасибо!",
            name: "Olga Morozova",
            handle: "@olga_morozova",
            photo: "../icons/avatar8.png",
            stars: 5,
            date: "24/01/2026"
        },
        {
            text: "Постоянный клиент уже 3 года. Ни разу не подвели. Рекомендую всем!",
            name: "Igor Sidorov",
            handle: "@igor_sidorov",
            photo: "../icons/avatar9.png",
            stars: 5,
            date: "23/01/2026"
        }
    ]
];

let current_group = 0;

const reviewBlocks = document.querySelectorAll('.padding_100 .flex.gap_15px > div');

function updateReviews(groupIndex) {
    const group = reviews[groupIndex];
    
    reviewBlocks.forEach((block, index) => {
        const review = group[index];
        if (review) {
            const avatar = block.querySelector('.avatar');
            const name = block.querySelector('.h2');
            const handle = block.querySelector('.opacity_70.p');
            const text = block.querySelector('.textalign_justify.p');
            const stars = block.querySelector('.flex.flex_jc_space_between img');
            const date = block.querySelector('.flex.flex_jc_space_between .p:last-child');
            
            if (avatar) avatar.src = review.photo;
            if (name) name.textContent = review.name;
            if (handle) handle.textContent = review.handle;
            if (text) text.textContent = review.text;
            if (stars) stars.src = `../icons/stars${review.stars}.svg`;
            if (date) date.textContent = review.date;
        }
    });
}

document.getElementById('button_arrow_left').addEventListener('click', () => {
    current_group = (current_group - 1 + reviews.length) % reviews.length;
    let pointActive = document.querySelector('.point_active');
    let points = document.querySelectorAll('.point');

    if (pointActive) {
        pointActive.classList.remove('point_active');
    }

    if (points[current_group]) {
        points[current_group].classList.add('point_active');
    }

    updateReviews(current_group);
});

document.getElementById('button_arrow_right').addEventListener('click', () => {
    current_group = (current_group + 1) % reviews.length;

    let pointActive = document.querySelector('.point_active');
    let points = document.querySelectorAll('.point');

    if (pointActive) {
        pointActive.classList.remove('point_active');
    }

    if (points[current_group]) {
        points[current_group].classList.add('point_active');
    }

    updateReviews(current_group);
});

updateReviews(0);

});


window.addEventListener('scroll', function() {
    let top_header = document.getElementById('top-header');
    let main_header = document.getElementById('main-header');
    let scroll = window.scrollY;

    if (scroll > 50) {
        top_header.style.pointerEvents = 'none'; 
        main_header.classList.add('sticky');
        document.getElementById('burger_menu').classList.add('burger_sticky');
    } else {
        top_header.style.pointerEvents = 'auto';
        main_header.classList.remove('sticky');
        document.getElementById('burger_menu').classList.remove('burger_sticky');
    }


});
