<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>LoginAkademi</title>
    <!-- Bootstrap ve Font Awesome Kütüphaneleri -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <!-- CSS -->
    <style>
        body{
            background-color: #f5f5f5;
        }
        /* Ana container'ı yatay olarak bölmek için */
        .container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            height: 100vh; /* Sayfa boyutunu kaplaması için */
            background-color: #f5f5f5; /* Yeni arka plan rengi */
            padding: 0 20px; /* Sağ ve sol kenardan boşluk bırakmak için */
        }

        /* Form container'ı */
        .form-container {
            width: 45%;
            padding: 20px;
            margin-right: 10px; /* Logo ile arasındaki boşluğu ayarla */
        }

        /* Logo container'ı */
        .logo-container {
            width: 45%;
            text-align: right;
            margin-left: 10px; /* Logo ile arasındaki boşluğu ayarla */
        }

        /* Form elemanları */
        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            margin-bottom: 5px;
        }

        /* Logo */
        .logo {
            max-width: 100%;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="form-container">
            <div class="card">
                <div class="card-header">Kayıt Ol</div>
                <div class="card-body">
                    <form class="form-horizontal" method="post" action="#">
                        <div class="form-group">
                            <label for="ad">İsim</label>
                            <input type="text" class="form-control" name="isim" id="firstName" placeholder="İsminizi giriniz" />
                        </div>
                        <div class="form-group">
                            <label for="Soyisim">Soyisim</label>
                            <input type="text" class="form-control" name="soyisim" id="lastName" placeholder="Soyisminizi giriniz" />
                        </div>
                         <div class="form-group">
                            <label for="şifre">Şifre</label>
                            <input type="password" class="form-control" name="şifre" id="password" placeholder="Şifrenizi giriniz" />
                        </div>
                        <div class="form-group">
                            <label for="tekrar">Şifre</label>
                            <input type="password" class="form-control" name="tekrar" id="confirm" placeholder="Şifrenizi tekrar giriniz" />
                        </div>
                        <div class="form-group">
                            <label for="email">Email</label>
                            <input type="text" class="form-control" name="email" id="email" placeholder="Emailinizi giriniz" />
                        </div>
                        <div class="form-group">
                            <label for="no">Telefon Numarası</label>
                            <input type="text" class="form-control" name="no" id="phone" placeholder="Telefon numaranızı giriniz" />
                        </div>
                        <div class="form-group ">
                            <button type="button" class="btn btn-primary btn-lg btn-block login-button">Kaydol</button>
                        </div>
                        <div class="login-register">
                            <a href="index.php">Giriş Yap</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="logo-container">
            <img src="https://www.enerjiis.org.tr/tema/genel/uploads/logo/Enerji-logo.png" alt="Logo" class="logo">
        </div>
    </div>
</body>
</html>
