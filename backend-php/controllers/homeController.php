<?php

Flight::route('/test', function () {
    require 'config/config.php';
    echo "Tested OK!!";
});

// API for Register
Flight::route('POST /register', function () {
    require 'config/config.php';
    $data = json_decode(file_get_contents('php://input'), true);
    $name = $data['name'];
    $email = $data['email'];
    $password = $data['password'];
    $res = 0;
    $data = array(
        'name' => $name,
        'email' => $email,
        'password' => $password
    );

    $res = $db->insert('users', $data);
    echo $res;
});

//API for Login
Flight::route('POST /login', function () {
    require 'config/config.php';
    $data = json_decode(file_get_contents('php://input'), true);
    $email = $data['email'];
    $password = $data['password'];
    $db->where('u.email', $email);
    $db->where('u.password', $password);
    $res = $db->getOne('users as u');
    echo json_encode($res);
});


//API for URL and response time save to database
Flight::route('POST /urlsave', function () {
    require 'config/config.php';
    $data = json_decode(file_get_contents('php://input'), true);
    $url = $data['url'];
    $response = $data['response'];
    $user_id = $data['user_id'];
    $id = $data['id'];
    $res = 0;
    $data = array(
        'url' => $url,
        'response_time' => $response,
        'user_id' => $user_id
    );
    if ($id > 0) {
        $db->where('id', $id);
        $db->update('urls', $data);
        $res = $id;
    } else {
        $res = $db->insert('URLS', $data);
    }
    echo $res;
});

Flight::route('POST /deleteurl', function () {
    require 'config/config.php';
    $data = json_decode(file_get_contents('php://input'), true);
    $id = $data['id'];

    $db->where('id', $id);
    $db->delete('urls');
    $res = $id;
    echo $res;
});



Flight::route('POST /fetchurls', function () {
    require 'config/config.php';
    $data = json_decode(file_get_contents('php://input'), true);
    $user = $data['user_id'];
    $db->where('user_id', $user);
    $res = $db->get('urls');
    for ($i = 0; $i < count($res); $i++) {
        $ch = curl_init($res[$i]['url']);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        if (curl_exec($ch)) {
            $info = curl_getinfo($ch);
            $res[$i]["response"] = $info['total_time'];
        }
        curl_close($ch);
    }
    echo json_encode($res);
});

Flight::route('POST /getUrlById', function () {
    require 'config/config.php';
    $data = json_decode(file_get_contents('php://input'), true);
    $id = $data['id'];
    $db->where('id', $id);
    $res = $db->getOne('urls');
    echo json_encode($res);
});
