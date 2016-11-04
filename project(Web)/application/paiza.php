<?php
// í»ÝÂªÎÔðëòªÊåëåÞªÇ
// Let's «Á«ã«ì«ó«¸£¡£¡
$subject_n = fgets(STDIN);

$temp = fgets(STDIN);

$subject_arr = explode(" ", str_replace(array("\r\n","\r","\n"), '', $temp));

for($i = 0 ; $i < $subject_n ; $i++){
    $max_arr[$i] = strlen($subject_arr[$i]);
}

$content_n = fgets(STDIN);
$content_arr = array();


for($i = 0 ; $i < $content_n ; $i++){
    $temp2 = fgets(STDIN);
    $content_arr[$i] = explode(" ", str_replace(array("\r\n","\r","\n"), '', $temp2));
}

for($i = 0 ; $i < $subject_n ; $i++){
    for($j = 0 ; $j < $content_n ; $j++){
        if(strlen($content_arr[$j][$i]) > $max_arr[$i]){
            $max_arr[$j] = strlen($content_arr[$i][$j]);
        }
    }
}

for($i = 0 ; $i < $subject_n ; $i++){
    if(strlen($subject_arr[$i]) == $max_arr[$i]){
        echo "| ".$subject_arr[$i]." ";
    }
    else{
        echo "| ".$subject_arr[$i];
        for($j = 0 ; $j < ($max_arr[$i] - 1)-strlen($subject_arr[$i]) ; $j++){
            echo " ";
        }
        echo "|";
    }
}
echo "\n";

for($i = 0 ; $i < $subject_n ; $i++){
    echo "|";
    for($j = 0 ; $j < $max_arr[$i]+2 ; $j++){
        echo "-";
    }
}
echo "|";
echo "\n";



for($i = 0 ; $i < $content_n ; $i++){
    for($j = 0 ; $j < $subject_n ; $j++){
        if(strlen($content_arr[$i][$j]) == $max_arr[$j]){
            echo "| ".$content_arr[$i][$j]." ";
        }
        else{
            echo "| ".$content_arr[$i][$j];
            for($k = 0 ; $k <= ($max_arr[$j] - 1)-strlen($content_arr[$i][$j])+2 ; $k++){
                echo " ";
            }
        }
    }
    echo "|";
    if($i+1 != $content_n){
        echo "\n";
    }
}
?>
