<?php 

require "include/db.php";
$db=dbConnect();
$type_id = $_GET['type_id'];
$products = get_product_type($type_id,$db);
$productid=$_GET['product_id'];
$types=get_product_types($db);



if(isset($_GET['keywords'])){
    $keywords = $db->escape_string($_GET['keywords']);

    $query = $db->query("
        SELECT title,location
        FROM images
        WHERE description LIKE '%{$keywords}%'
        OR title LIKE '%{$keywords}%'
    ");
?>
    <div class="result-count">
    Found <?php echo $query->num_rows; ?> results.
    </div>

    <?php

    if($query->num_rows){
        while($r = $query->fetch_object()){
            ?>
                <div class="result">
                <a href="product.php?product_id=<?php echo $image_id?>"><?php echo $r->title; ?></a>
                </div>
            <?php
        }
    }

}




