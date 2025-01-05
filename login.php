<?php
// 管理者ログインページ
define('ADMIN_PASSWORD', ); // 管理者パスワード

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $password = $_POST['password'] ?? '';

    if ($password === ADMIN_PASSWORD) {
        // パスワードが正しい場合、セッションにフラグをセットして管理者ページにリダイレクト
        session_start();
        $_SESSION['admin_logged_in'] = true;
        header('Location: admin.php');
        exit;
    } else {
        $error_message = "パスワードが間違っています。";
    }
}
?>

<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>管理者ログイン</title>
    <link rel="stylesheet" href="./css/login.css">
</head>
<body>

<h2>管理者ログイン</h2>
<?php
 if (isset($error_message)) { echo "<p style='color: red;'>$error_message</p>"; } 
?>

<form method="POST">
    <input type="password" name="password" id="password" placeholder="パスワードを入力" required>
    <button type="submit">ログイン</button>
</form>

</body>
</html>
