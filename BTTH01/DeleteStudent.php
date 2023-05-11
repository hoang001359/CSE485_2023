<?php
    $id = $_GET['id'];
    $file = fopen('dssv.txt','r');
    while(!feof($file)){
        $line = fgets($file);
        $data = explode(',',$line);
        
        //foreach($data as $i){
            //if($data[])
        //}
        //unset($data[$id]);
        
    }
//     if(!array_key_exists($id,$data)){
//         header("location: Studentmanagement.php");
// }
    

    fclose($file);
    print_r($data);
?>