<?php
// データベース接続情報
$db_name = '';                // データベース名
$db_host = '';     // DBホスト
$db_id   = '';                 // ユーザー名
$db_pw   = '';                    // パスワード

// データベース接続
try {
    $server_info = 'mysql:dbname=' . $db_name . ';charset=utf8;host=' . $db_host;
    $pdo = new PDO($server_info, $db_id, $db_pw);
} catch (PDOException $e) {
    // エラーが発生した場合、エラーメッセージを表示
    exit('DB Connection Error:' . $e->getMessage());
}
?>
