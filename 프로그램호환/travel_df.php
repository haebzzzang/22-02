<?php
// 시도 코드
$sido = $_GET['sido'];
$city = $_GET['city'];

if(empty($sido)){
    $sido = "서울";
}

if(empty($city)){
    $city = "서울";
}

// Rscript path
$rscript_path = "\"C:/Program Files/R/R-4.2.1/bin/Rscript.exe\"";

// save dir
$save_path = "./df/";
if(!is_dir($save_path)) mkdir($save_path);

// Execute
$outfile = $save_path . "travel.html";
$comm = $rscript_path . " travel_query.R sido="  . $sido . " city=" . $city;
// exit($comm);
exec($comm, $output);
?>

<!-- 결과 페이지 이동 -->
<script>
    window.location.href = '<?=$outfile?>';
</script>