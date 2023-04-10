<?php

require_once('functions.php');

$arr = ['name'=>'asmaa' , 'phone'=>'01123456789' , 'address'=>'miami', 'email'=>'asmaa@gmail.com'];

$xmlDocument = new DOMDocument();
$xmlDocument->load("employees.xml");

createEmployee($arr, $xmlDocument);

$xmlDocument->save("employees.xml");


$employees = $xmlDocument->getElementsByTagName('employee');

$arrOfEmployees = [];

foreach ($employees as $employee) {
    $arrOfEmployees[] = $employee ;
}


var_dump(displayEmployee($arrOfEmployees[0]));