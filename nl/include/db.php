<?php
function dbConnect(){
    $mysqli = new mysqli('localhost', 'root', 'root', '24994_db') or die ('Error connecting');
    return $mysqli;
}

function get_product($productid,$db){
    $query = "SELECT * FROM images WHERE image_id=?";
    $stmt = $db->prepare($query) or die ('Error preparin 1');
    $stmt->bind_param('i',$productid) or die ('Error binding params');
    $stmt->execute() or die ('Error inserting image in database');
    $res = $stmt->get_result();
    $row = $res->fetch_assoc();
    $stmt->close();
    return $row;

}

function insert_product($target_location,$title,$description,$price,$type,$db){
    $query = "INSERT INTO images (image_id,location,title,description,price,type_id) VALUES (NULL,?,?,?,?,?)";
    $stmt = $db->prepare($query) or die ('Error preparin 1');
    $stmt->bind_param('sssss',$target_location,$title,$description,$price,$type) or die ('Error binding params');
    $stmt->execute() or die ('Error inserting image in database');
    $stmt->close();
}

function get_product_type($type_id,$db){
    $query = "SELECT location, title,image_id,description,type_id FROM images WHERE type_id=? ORDER BY image_id DESC";
$stmt = $db->prepare($query) or die ('Error preparing');
$stmt->bind_param('i',$type_id) or die ('Error binding params');
$stmt->bind_result($location, $title,$image_id,$description,$type_id) or die ('Error binding results');
$stmt->execute() or die ('Error executing');
$res = $stmt->get_result();
$products= [];
while ($row = $res->fetch_assoc()){
 $products[] = $row;
}
$stmt->close();
return $products;
}

function get_product_types($db){
    $query = "SELECT * FROM types";
$stmt = $db->prepare($query) or die ('Error preparing');
$stmt->execute() or die ('Error executing');
$res = $stmt->get_result();
$types= [];
while ($row = $res->fetch_assoc()){
 $types[] = $row;
}
$stmt->close();
return $types;
}

