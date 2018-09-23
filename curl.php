<?php

/* making an api call by creating my own callAPI function */
include 'api.php';
function callAPI($method, $url, $data){
  
  // initailizing the curl
  $ch = curl_init(); 

  curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
  curl_setopt($ch, CURLOPT_URL, $url);
  curl_setopt($ch, CURLOPT_HTTPHEADER, array(
      'APIKEY: 111111111111111111111',
      'Content-Type: application/json',
   ));

  // executing the curl
   $result = curl_exec($ch);

  
   curl_close($ch);
   return $result;
}

$get_data = callAPI('GET', 'restapi/api.php', 0);
// $users_arr['details'] =  array();
array_push($users_arr, $get_data);
echo json_encode($users_arr);



/* The given code also does the same task 
		as cURL by default users GET http request 
							to make rest api calls */

// $url = 'http://localhost/restapi/api.php';
// $ch = curl_init();

//   curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
//   curl_setopt($ch, CURLOPT_URL, $url);
//   curl_setopt($ch, CURLOPT_HTTPHEADER, array(
//       'APIKEY: 111111111111111111111',
//       'Content-Type: application/json',
//    ));

//   curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
//   curl_setopt($ch, CURLOPT_HTTPAUTH, CURLAUTH_BASIC);
//   $result = curl_exec($ch);
//   // echo $result;
//   curl_close($ch); 

//   $users_arr['details'] =  array();
//   array_push($users_arr['details'], $result);
//   // echo json_encode($users_arr);
//   print_r(json_encode($users_arr));

?>