<?php
//cerner_2^5_2019
//This is a quick sort program
function quick_sort($array){
    $length  =  count($array);
    if($length <= 1) {
        return $array;
    }
    else {
            $pivot = $array[0];
            $left = $right = array();
            for($i = 1; $i < count($array); $i++) {
                if($array[$i] < $pivot) {
                    $left[] =  $array[$i];
                }
                else {
                    
                    $right[] =  $array[$i];
                }
            }
            return array_merge(quick_sort($left), array($pivot), quick_sort($right));
    }
}
print_r(quick_sort(array(43,54,36,50)));
?>