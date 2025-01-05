<?php

// DB接続
$dbn ='mysql:dbname=db1;charset=utf8mb4;port=3306;host=localhost';
$user = 'root';
$pwd = '';

try {
  $pdo = new PDO($dbn, $user, $pwd);
} catch (PDOException $e) {
  echo json_encode(["db error" => "{$e->getMessage()}"]);
  exit();
}

// SQL作成
$sql = 'SELECT * FROM db1_table'; //ユーザーが送ってくる変数はないのでバインド変数不要

$stmt = $pdo->prepare($sql);

//SQL実行（実行に失敗すると `sql error ...` が出力される）
try {
  $status = $stmt->execute();
} catch (PDOException $e) {
  echo json_encode(["sql error" => "{$e->getMessage()}"]);
  exit();
}

$result = $stmt->fetchAll(PDO::FETCH_ASSOC); //fetchAllで全てのデータを配列で取得できる

// SQL実行の処理を関数化
$output = "";
foreach ($result as $record) {
  $output .= "
    <tr>
        <td>{$record["memberId"]}</td>
        <td>{$record["name"]}</td>
        <td>{$record["gender"]}</td>
        <td>{$record["birthday"]}</td>
        <td>{$record["email"]}</td>
        <td>{$record["address"]}</td>
        <td>{$record["facility"]}</td>
        <td>{$record["whereDidYouHear"]}</td>
        <td>{$record["expectations"]}</td>
        <td>{$record["registered_at"]}</td>
    </tr>
  ";
}
?>

<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>メンバー登録データ</title>
    <link rel="stylesheet" href="./css/read.css">
</head>

<body>
    <h1>メンバー登録データリスト</h1>
    <!-- 管理者ページへのリンク -->
    <div class="admin-link">
        <a href="admin.php" class="action-btn">管理者ページ</a>
    </div>
    <!-- 入力画面へのリンク -->
    <a href="input.php">入力画面へ戻る</a>

    <table>
        <thead>
            <tr>
                <!-- 登録データのヘッダーを表示 -->
                <th>会員番号</th>
                <th>氏名</th>
                <th>性別</th>
                <th>誕生日</th>
                <th>メールアドレス</th>
                <th>住所</th>
                <th>所属施設</th>
                <th>知ったきっかけ</th>
                <th>期待する機能</th>
                <th>登録日時</th>
            </tr>
        </thead>
        <tbody>
        <!--登録データが表示される-->
            <?= $output ?>
        </tbody>
    </table>
    <script>
        const memberData = <?= json_encode($result) ?>; //PHPからJSにデータを渡すために配列を変換
        console.log(memberData);
    </script>
</body>

</html>
