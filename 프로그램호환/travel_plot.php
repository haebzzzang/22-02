<?php
// 시도 코드
$sido = $_GET['sido'];
if(empty($sido)){
    $sido = "용인시";
}

// Rscript path
$rscript_path = "\"C:/Program Files/R/R-4.2.1/bin/Rscript.exe\"";

// save dir
$save_path = "./df/";
if(!is_dir($save_path)) mkdir($save_path);

// Execute
$outfile = $save_path . "travel_plot.html";
$comm = $rscript_path . " travel_plot.R sido=" . $sido;
exec($comm, $output);
?>

<!-- 결과 페이지 이동 -->
<script>
    window.location.href = '<?=$outfile?>';
</script>