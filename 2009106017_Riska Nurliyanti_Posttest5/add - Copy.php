<?php 

require 'config.php';

if(isset($_POST['Kirim'])){
  $nama = $_POST['nama'];
  $email = $_POST['email'];
  $tanaman = implode(', ', $_POST['tanaman']);
  $jumlah = $_POST['jumlah'];
  $telepon = $_POST['telepon'];
  $alamat = $_POST['alamat'];
  $keterangan = $_POST['keterangan'];
  $waktu_req = $_POST['waktu_req'];
  $pembayaran = $_POST['pembayaran'];
  

  $kirim = mysqli_query($db, "INSERT INTO pemesanan (nama,email,tanaman,jumlah,telepon,alamat,keterangan,waktu_req,pembayaran) VALUES ('$nama','$email','$tanaman','$jumlah','$telepon','$alamat', '$keterangan','$waktu_req', '$pembayaran')");
  $add = mysqli_query($db, "INSERT INTO penjualan (nama,email,tanaman,jumlah,telepon,alamat,keterangan,waktu_req,pembayaran,statusbayar) VALUES ('$nama','$email','$tanaman','$jumlah','$telepon','$alamat', '$keterangan','$waktu_req', '$pembayaran', '$status')");
  if($kirim){
      echo "<script> alert('Data Berhasil Dikirim, Pemesanan Berhasil!!!');</script>";
      header("Location:daftarpesan.php");
  }else {
      echo "Gagal Membeli, Coba Lagi";
  }
}

?>

<?php 

require 'config.php';

if(isset($_POST['add'])){
  $nama = $_POST['nama'];
  $email = $_POST['email'];
  $tanaman = implode(', ', $_POST['tanaman']);
  $jumlah = $_POST['jumlah'];
  $telepon = $_POST['telepon'];
  $alamat = $_POST['alamat'];
  $keterangan = $_POST['keterangan'];
  $waktu_req = $_POST['waktu_req'];
  $pembayaran = $_POST['pembayaran'];
  $status = $_POST['statusbayar'];


  $add = mysqli_query($db, "INSERT INTO penjualan (nama,email,tanaman,jumlah,telepon,alamat,keterangan,waktu_req,pembayaran, statusbayar) VALUES ('$nama','$email','$tanaman','$jumlah','$telepon','$alamat', '$keterangan','$waktu_req', '$pembayaran', '$status')");
  // $kirim = mysqli_query($db, "INSERT INTO pemesanan (nama,email,tanaman,jumlah,telepon,alamat,keterangan,waktu_req,pembayaran) VALUES ('$nama','$email','$tanaman','$jumlah','$telepon','$alamat', '$keterangan','$waktu_req', '$pembayaran')");
  if($add){
      // echo "<script> alert('Data Berhasil Dikirim, Pemesanan Berhasil!!!');</script>";
      header("Location: laporanpenjualan.php");
  }else {
      echo "Gagal Membeli, Coba Lagi";
  }
}

?>



