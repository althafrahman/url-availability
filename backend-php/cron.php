<?php
  $ch = curl_init('https://github.com/althafrahman');
  curl_setopt($ch, CURLOPT_RETURNTRANSFER,1);
  if(curl_exec($ch))
  {
  $info = curl_getinfo($ch);
  echo $info['total_time'];
  }
  curl_close($ch);
?>