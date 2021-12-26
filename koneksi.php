<?php 
$koneksi = mysqli_connect("localhost", "root", "", "karyawansi");

if (mysqli_connect_errno()) {
	echo "koneksi gagal " . mysql_connect_error();
}
mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);