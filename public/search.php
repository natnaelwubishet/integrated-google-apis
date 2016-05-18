<?php

    require(__DIR__ . "/../includes/config.php");

    // numerically indexed array of places
    $places = [];
    
    $params = htmlspecialchars($_GET["geo"]);
    
    // TODO: search database for places matching $_GET["geo"]
    
    $places = query("SELECT * FROM places WHERE match(admin_name1, place_name, postal_code) against (? IN BOOLEAN MODE)", $params);
    // output places as JSON (pretty-printed for debugging convenience)
    header("Content-type: application/json");
    print(json_encode($places, JSON_PRETTY_PRINT));
   
?>
