<?php
include '../koneksi.php';
if (isset($_POST['simpan'])) {
	$id_karyawan = $_POST['id_karyawan'];
	$nama = $_POST['nama'];
	$waktu = $_POST['waktu'];


}
$waktuMasuk = "09:00:00 am";
$waktuKeluar = "05:00:00 pm";
if ($waktuMasuk >= $waktu && $waktu <= $waktuKeluar) {
	echo "<script>alert('Anda sudah absen untuk hari ini') </script>";
	 echo "<script>window.location.href = \"index.php?m=awal\" </script>";	
	$save = "INSERT INTO tb_absen SET id_karyawan='$id_karyawan', nama='$nama', waktu='$waktu'";
	mysqli_query($koneksi, $save);
}
else{
	echo "<script>alert('Bukan waktu absen') </script>";
	echo "<script>window.location.href = \"index.php?m=awal\" </script>";
}

 ?>