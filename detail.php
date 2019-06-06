<?php
    $id = $_GET["id"];

    include "funcs.php";
    $pdo = db_con();
    
    $stmt = $pdo->prepare("SELECT * FROM gs_bm_table WHERE id = :id");
    $stmt->bindValue(":id", $id, PDO::PARAM_INT);
    $status = $stmt->execute();

    $view = "";
    if($status == false){
        sqlError($stmt);
    }
    $row = $stmt->fetch();
?>

<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <title>本を売るならブックオフ</title>
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <style>div{padding: 10px;font-size:16px;}</style>
</head>
<body>

<!-- Head[Start] -->
<header>
  <nav class="navbar navbar-default">
    <div class="container-fluid">
    <div class="navbar-header"><a class="navbar-brand" href="select.php">ブックマークした本一覧</a></div>
    </div>
  </nav>
</header>
<!-- Head[End] -->

<!-- Main[Start] -->
<form method="post" action="update.php">
  <div class="jumbotron">
   <fieldset>
    <legend>ブックオフなのに本ねーじゃーん！</legend>
     <label>書籍名：<input type="text" name="book_name" value="<?=$row["book_name"]?>"></label><br>
     <label>書籍URL：<input type="text" name="book_URL" value="<?=$row["book_URL"]?>"></label><br>
     <label>コメント：<br><textArea name="book_comment" rows="4" cols="40"><?=$row["book_comment"]?></textArea></label><br>
     <input type="submit" value="送信">
     <input type="hidden" name="id" value="<?=$row["id"]?>">
    </fieldset>
  </div>
</form>
<!-- Main[End] -->


</body>
</html>
