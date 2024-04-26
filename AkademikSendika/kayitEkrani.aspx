<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="kayitEkrani.aspx.cs" Inherits="AkademikSendika.kayitEkrani" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
        <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .container {
            max-width: 800px;
            width: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: #fff;
            padding: 40px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .form-container {
            flex: 1;
            padding: 20px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }

        .form-group input[type="text"],
        .form-group input[type="password"],
        .form-group input[type="email"] {
            width: calc(100% - 22px); /* Sağ ve sol 11px padding için */
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
            font-size: 16px;
            box-sizing: border-box; /* Padding ve border dahil genişliği ayarlar */
        }

        .form-group input[type="submit"] {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 3px;
            font-size: 16px;
            background-color: #007bff;
            color: #fff;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .form-group input[type="submit"]:hover {
            background-color: #0056b3;
        }

        .welcome-message {
            font-size: 24px;
            font-weight: bold;
            color: #007bff;
            text-align: center;
            margin-bottom: 20px;
        }

        .logo {
            flex: 1;
            text-align: center;
        }

        .logo img {
            max-width: 100%;
            height: auto;
        }
            #form1 {
                height: 565px;
            }
    </style>

</head>
<body>
     <div class="container">
        <div class="logo">
            <asp:Image ID="imgLogo" runat="server" ImageUrl="https://www.enerjiis.org.tr/tema/genel/uploads/logo/Enerji-logo.png" AlternateText="Logo" />
        </div>
        <div class="form-container">
            <div class="welcome-message">
                Kayıt Formu
            </div>
            <form id="form1" runat="server">
                <div class="form-group">
                    <label for="txtIsim">İsim</label>
                    <asp:TextBox ID="txtIsim" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="txtSoyisim">Soyisim</label>
                    <asp:TextBox ID="txtSoyisim" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="txtEmail">E-mail</label>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="txtSifre">Şifre</label>
                    <asp:TextBox ID="txtSifre" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="txtTelefon">Telefon</label>
                    <asp:TextBox ID="txtTelefon" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Button ID="btnKayitOl" runat="server" Text="Kayıt Ol" CssClass="btn btn-primary" OnClick="btnKayitOl_Click" />
                </div>
                <asp:Label ID="Label1" runat="server" Text="Label" Width="1400px"></asp:Label>
            </form>
        </div>
    </div>

</body>
</html>
