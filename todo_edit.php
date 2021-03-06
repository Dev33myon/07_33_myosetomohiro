<?php
// 送信データのチェック
// var_dump($_GET);
// exit();

// 関数ファイルの読み込み
include("functions.php");

// idの受け取り
$id = $_GET['id'];

// DB接続
$pdo = connect_to_db();


// データ取得SQL作成
$sql = 'SELECT * FROM myon_table WHERE id=:id'; 


// SQL準備&実行
$stmt = $pdo->prepare($sql);
$stmt->bindValue(':id', $id, PDO::PARAM_INT);
$status = $stmt->execute();


// データ登録処理後
if ($status == false) {
  // SQL実行に失敗した場合はここでエラーを出力し，以降の処理を中止する
  $error = $stmt->errorInfo();
  echo json_encode(["error_msg" => "{$error[2]}"]);
  exit();
} else {
  // 正常にSQLが実行された場合は指定の11レコードを取得
   $record = $stmt->fetch(PDO::FETCH_ASSOC);
}

  // fetch()関数でSQLで取得したレコードを取得できる



?>

<!DOCTYPE html>
<html lang="ja">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>DB連携型ポイントリスト（編集画面）</title>
</head>

<body>
  <form action="todo_update.php" method="POST">
    <fieldset>
      <legend>DB連携型ポイントリスト（編集画面）</legend>
      <a href="todo_read.php">一覧画面</a>
      <div>
        緯度: <input type="text" name="lat" value="<?= $record["lat"] ?>">
      </div>
      <div>
        経度: <input type="text" name="lng" value="<?= $record["lng"] ?>">
      </div>
      <div>
        <button>submit</button>
      </div>
      <input type="hidden" name="id" value="<?=$record['id']?>">
    </fieldset>
  </form>
</body>

</html>