<?php
include('config.php');
include(PATH_INCLUDE . 'function.php');
include('connect.php');

header('Content-Type: application/json');

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $name = isset($_POST['name']) ? trim($_POST['name']) : '';
    $email = isset($_POST['email']) ? trim($_POST['email']) : '';
    $phone = isset($_POST['phone']) ? trim($_POST['phone']) : '';

    $errors = array();

    if (empty($name)) {
        $errors[] = 'Пожалуйста, укажите ваше имя';
    }

    if (empty($email) || !filter_var($email, FILTER_VALIDATE_EMAIL)) {
        $errors[] = 'Пожалуйста, укажите корректный email';
    }

    if (empty($phone)) {
        $errors[] = 'Пожалуйста, укажите номер телефона';
    }

    if (!empty($errors)) {
        echo json_encode(array('success' => false, 'message' => implode(', ', $errors)));
        exit;
    }

    $to = 'mariannashukalo@gmail.com';
    $subject = 'Новый запрос на обратный звонок';
    $message = "Новый запрос на обратный звонок от:\nИмя: $name\nEmail: $email\nТелефон: $phone\n\nВремя запроса: " . date('d.m.Y H:i:s');
    $headers = "From: $email\r\nReply-To: $email\r\nContent-Type: text/plain; charset=utf-8";

     mail($to, $subject, $message, $headers);

    echo json_encode(array('success' => true, 'message' => 'Спасибо! Мы свяжемся с вами в ближайшее время.'));
} else {
    echo json_encode(array('success' => false, 'message' => 'Неверный метод запроса'));
}
?>