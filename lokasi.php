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

    <!-- Location -->
    <div class="section">
        <div class="container">
            <h3>Location</h3>
            <div class="box">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2025017.895018942!2d106.95855226250002!3d-7.562648799999996!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e6569d42d7940bb%3A0x856845ff106cc5d1!2sApotik%20Sampang!5e0!3m2!1sid!2sid!4v1668063371702!5m2!1sid!2sid" width="1170" height="600" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            <br>
            <br>
            <i style="font-size:24px" class="fa">&#xf0ac; Lokasi</i>
            <p>Jl.Tugu Barat - Jawa Tengah </p>
            <br>
            <i style="font-size:24px" class="fa">&#xf017; Jam Open & Close </i>
            <p>Senin - Sabtu</p>
            <p>08:00 - 20.00 WIB</p>
            <br>
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