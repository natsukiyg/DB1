<?php
// POSTデータ確認 ()内にダメな条件を書く
if(!isset($_POST["name"]) || $_POST["name"] === "" ||
   !isset($_POST["gender"]) || $_POST["gender"] === "" ||
   !isset($_POST["birthday"]) || $_POST["birthday"] === "" ||
   !isset($_POST["email"]) || $_POST["email"] === "" ||
   !isset($_POST["address"]) || $_POST["address"] === "" ||
   !isset($_POST["facility"]) || $_POST["facility"] === "" ||
   !isset($_POST["whereDidYouHear"]) || $_POST["whereDidYouHear"] === "" ||
   !isset($_POST["expectations"]) || $_POST["expectations"] === "" ) { // いずれかが空の場合
    exit("データがありません");
}

// POSTデータ取得
$name = $_POST["name"];
$gender = $_POST["gender"];
$birthday = $_POST["birthday"];
$email = $_POST["email"];
$address = $_POST["address"];
$facility = $_POST["facility"];
$whereDidYouHear = $_POST["whereDidYouHear"];
$expectations = $_POST["expectations"];

// DB接続
$dbn ='mysql:dbname=db1;charset=utf8mb4;port=3306;host=localhost'; //phpMyAdminのホスト名
$user = 'root';
$pwd = '';

try {
  $pdo = new PDO($dbn, $user, $pwd);
} catch (PDOException $e) {
  echo json_encode(["db error" => "{$e->getMessage()}"]);
  exit();
} // 「dbError:...」が表示されたらdb接続でエラーが発生していることがわかる．


// SQL作成&実行
$sql = 'INSERT INTO db1_table (memberId, name, gender, birthday, email, address, facility, whereDidYouHear, expectations, registered_at) VALUES (NULL, :name, :gender, :birthday, :email, :address, :facility, :whereDidYouHear, :expectations, now())';
//SQLインジェクションを起こさないために「:name」や「:gender」（バインド変数）を使っているところ
$stmt = $pdo->prepare($sql);

// バインド変数を設定
$stmt->bindValue(':name', $name, PDO::PARAM_STR);
$stmt->bindValue(':gender', $gender, PDO::PARAM_STR);
$stmt->bindValue(':birthday', $birthday, PDO::PARAM_STR);
$stmt->bindValue(':email', $email, PDO::PARAM_STR);
$stmt->bindValue(':address', $address, PDO::PARAM_STR);
$stmt->bindValue(':facility', $facility, PDO::PARAM_STR);
$stmt->bindValue(':whereDidYouHear', $whereDidYouHear, PDO::PARAM_STR);
$stmt->bindValue(':expectations', $expectations, PDO::PARAM_STR);

// SQL実行（実行に失敗すると `sql error ...` が出力される）
try {
  $status = $stmt->execute(); //実行ボタンを押して、うまくいったかいってないかを判断する
} catch (PDOException $e) {
  echo json_encode(["sql error" => "{$e->getMessage()}"]);
  exit();
}

//データ挿入後、確認ページへリダイレクト
header("Location: confirmation.php?name=" . urlencode($name) . "&gender=" . urlencode($gender) . "&birthday=" . urlencode($birthday) . "&email=" . urlencode($email) . "&address=" . urlencode($address) . "&facility=" . urlencode($facility) . "&whereDidYouHear=" . urlencode($whereDidYouHear) . "&expectations=" . urlencode($expectations));
exit(); // これ以下の処理を行わない