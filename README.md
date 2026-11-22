"ТвойПринт" - учебный веб-сайт вымышленной типографии «ТвойПринт», реализованный на PHP и MySQL с шаблонизатором на основе меток, динамической маршрутизацией по страницам и обработчиком заявок на обратный звонок.
## Основные страницы сайта:
<br><img width="360" height="202" alt="ГЛАВНАЯ" src="https://github.com/user-attachments/assets/d475305a-f00c-4682-9cb2-b297612a45fe" />
<br><img height="392" alt="УСЛУГИ" src="https://github.com/user-attachments/assets/cbe5d948-a0f3-403d-a1f5-1db0deead36f" />
<img width="360" height="392" alt="УСЛУГИ_2" src="https://github.com/user-attachments/assets/f9f7712d-d390-4109-b0ed-77ef7de0babe" />
<br><img height="392" alt="ПОРТФОЛИО" src="https://github.com/user-attachments/assets/0bc21850-3cac-408a-801a-9a991a8b790a" />
<img height="392" alt="КОНТАКТЫ" src="https://github.com/user-attachments/assets/a453bfdb-f816-42ec-acc6-31b4e459a5a7" />

## Ключевой функционал и архитектура

* **Конфигурация путей и окружения:** Задаются константы путей к шаблонам и подключаемым модулям (`PATH_TEMPLATE`, `PATH_INCLUDE`), а также базовый адрес сайта (`SITE`).
* **Модульная структура и шаблонизация:** Разделение логики, переиспользуемых компонентов (`includes/`) и представлений/шаблонов (`templates/`).
* **Работа с базой данных:** Подключение к MySQL через MySQLi (`connect.php`) для хранения и обработки данных сайта.
* **Обработка обратной связи (`feedback.php`):** Приём и обработка пользовательских форм/заявок.
* **Клиентская часть и оформление:** Стилизация в `css/`, локальные шрифты в `fonts/`, графика и иконки в `images/` и `icons/`, интерактивность на стороне клиента в `js/`.

## Стек технологий

| Компонент | Технологии |
| :--- | :--- |
| **Backend** | PHP, MySQL (MySQLi) |
| **Frontend** | HTML5, CSS3, JavaScript |
| **Веб-сервер** | Apache |
| **Среда разработки** | Open Server Panel (OSPanel), PhpStorm |

## Структура проекта

```text
yourprint.by/
├── css/                 # Стили, медиазапросы
├── js/                  # Клиентские скрипты
├── templates/           # Шаблоны страниц
├── includes/            # Подключаемые PHP-модули и логика
├── images/              # Изображения контента
├── icons/               # Иконки интерфейса
├── fonts/               # Шрифты проекта
├── emails/              # Письма, отправленные через форму
├── index.php            # Точка входа
├── feedback.php         # Обработчик форм обратной связи
├── config.example.php   # Пример файла конфигурации
├── connect.example.php  # Пример подключения к БД
└── .htaccess            # Правила перезаписи URL и кодировка UTF-8
