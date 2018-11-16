<?php
ini_set('memory_limit', '-1');
set_time_limit(0);
include_once "class/general.php";
$obj = new General();
if (!isset($_SESSION['USER']['SMC_USER_NAME']) || empty($_SESSION['USER']['SMC_USER_NAME']) || empty($_SESSION['USER']['SMC_USER_ID']) || $_SESSION['USER']['SMC_ROLE_ID'] == 3)
{
    session_regenerate_id();
	session_unset();
	session_destroy();
	echo "<script>window.location.href='index.php';</script>";
	die;
}else{
	if(isset($_REQUEST["file"])){
		// Get parameters
		$file = urldecode($_REQUEST["file"]); // Decode URL-encoded string
		$filepath = "doc/" . $file;
		
		// Process download
		if(file_exists($filepath)) {
			header('Content-Description: File Transfer');
			header('Content-Type: application/octet-stream');
			header('Content-Disposition: attachment; filename="'.basename($filepath).'"');
			header('Expires: 0');
			header('Cache-Control: must-revalidate');
			header('Pragma: public');
			header('Content-Length: ' . filesize($filepath));
			flush(); // Flush system output buffer
			readfile($filepath);
			exit;
		}
	}
}
?>