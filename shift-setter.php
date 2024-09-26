<?php 
$obj = new Datetime();

$obj->modify("+2 hour");
$start_shift = $obj->format("Y-m-d H:i");

$obj->modify("+4 hour");
$end_first_half_shift = $obj->format("Y-m-d H:i");

$obj->modify("+1 hour");
$start_second_half_shift = $obj->format("Y-m-d H:i");

$obj->modify("+4 hour");
$end_second_half_shift = $obj->format("Y-m-d H:i");

print $start_shift ."\n". $end_first_half_shift ."\n".$start_second_half_shift."\n".$end_second_half_shift."\n";