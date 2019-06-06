<?php

$id = $_POST["id"];
$book_name = $_POST["book_name"];
$book_URL = $_POST["book_URL"];
$book_comment = $POST["book_comment"];

include "funcs.php";
$pdo = db_con();

$sql = "UPDATE gs_bm_table SET book_name= :book_name, book_URL= :book_URL, book_comment= :book_comment WHERE id = :id";
$stmt = $pdo->prepare($sql);

$stmt->bindValue(':id', $id, PDO::PARAM_INT);
$stmt->bindValue(':book_name', $book_name, PDO::PARAM_STR);
$stmt->bindValue(':book_URL', $book_URL, PDO::PARAM_STR);
$stmt->bindValue(':book_comment', $book_comment, PDO::PARAM_STR);

$status = $stmt->execute();

if($status == false){
    sqlError($stmt);
} else {
    redirect("select.php");
}

?>