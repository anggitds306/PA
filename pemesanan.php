<?php
    include 'db.php';
    $kontak = mysqli_query($conn, "SELECT admin_telp, admin_email, admin_address FROM tb_admin WHERE admin_id = 2");
    $a = mysqli_fetch_object($kontak);
?>    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Apotik Sampang</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link href="https://fonts.googleapis.com/css2?family=Quicksand&display=swap" rel="stylesheet">

</head>
<body>
    <!-- header -->
    <header>
        <div class="container">
            <h1><a href="index.php">APOTIK SAMPANG</a></h1>
            <ul>
                <li><a href="produk.php">Medicine</a></li>
                <li><a href="pemesanan.php">Order Steps</a></li>
                <li><a href="lokasi.php">Location</a></li>
            </ul>
        </div>
    </header>

    <!-- content -->
        <div class="section">
            <div class="container">
                <h3>Cara Pemesanan</h3>
                <div class="box">
                    <div class="pesan">
                        <ol style="text-align:justify">
                            <p>Berikut Langkah - Langkah untuk melakukan pesanan pada Apotik Sampang:</p>
                            <li>Pelanggan melihat berbagai jenis obat.</li>
                            <li>Pelanggan memilih obat sesuai yang ingin dibeli dan di inginkan.</li>
                            <li>Jika pelanggan ingin order, maka tinggal mengklik icon gambar whatsapp.</li>
                            <li>Kemudian admin akan merespon dan menkonfirmasi pesanan melalui whatsapp.</li>
                            <li>Setelah admin menkonfirmasi, selanjutnya pelanggan melakukan proses pembayaran.</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>


    <!-- footer -->
    <div class="footer">
        <div class="container">
            <h4>Alamat</h4>
            <p><?php echo $a->admin_address ?></p>

            <h4>Email</h4>
            <p><?php echo $a->admin_email ?></p>

            <h4>No.Hp</h4>
            <p><?php echo $a->admin_telp ?></p>
            <small>Copyright &copy; 2022 - Apotik Sampang - Location In Central Java.</small>
        </div>
    </div>       
</body>
</html>