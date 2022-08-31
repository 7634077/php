<?php
  
$url = 
'https://cdn2.vectorstock.com/i/1000x1000/23/81/default-avatar-profile-icon-vector-18942381.jpg'; 
  
$img = 'logo.png'; 
  
// Function to write image into file
file_put_contents($img, file_get_contents($url));
  
echo "File downloaded!"
  
?>