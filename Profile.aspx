﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Enerji_İş_Sendikası.Profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Profilim</title>
   
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />

     <style>
    
        .profile-img {
            border-radius: 50%;
        }

     
        .post-section {
            margin-top: 20px;
        }

      
        .post-card {
            margin-bottom: 20px;
        }

        .profile-info {
            margin-bottom: 20px;
        }
        .btn btn-primary{      
            color: #fff;
            border-color: #007bff;
            width: 100px; 
            height: 50px; 
            border-width: 2px; 
            border-style: solid; 
            border-radius: 5px; 

        }
        body, html {
    margin: 0;
    padding: 0;
    height: 100%;
    overflow: hidden; 
}

#form1 {
    height: 100%;
}

#container {
    display: flex;
    flex-direction: column;
    height: 100%;
   
}

#header {
    background-color: #0F125D;
    padding: 15px; 
    display: flex;
    align-items: center;
}

.btn {
    padding: 10px 15px;
    font-size: 1rem; 
    min-width: 120px; 
}
        
    </style>
</head>
<body>
            <form id="form1" runat="server">
    <div id="container">
        <div id="header">
       
            <asp:Image ID="Image1" runat="server" Height="70px" Width="80px" ImageUrl="https://enerjiis.org.tr/tema/genel/uploads/logo/Enerji-logo.png" BackColor="#CCCCCC"  />
            <asp:Label ID="Label1" runat="server" Text="ENERJİ İŞ SENDİKASI" ForeColor="White" Font-Bold="True" Font-Size="Large" style="margin-left: 15px;"></asp:Label>
            <asp:Button ID="Button1" runat="server" Text="Anasayfa" CssClass="btn btn-primary" style="margin-left: 15px;" BackColor="#0056B3" ForeColor="White" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="Makaleler" CssClass="btn btn-primary" style="margin-left: 15px;" BackColor="#0056B3" ForeColor="White" OnClick="Button2_Click" />
             <div style="margin-left: auto;">
            <asp:Button ID="Profilim" runat="server" Text="Profilim" CssClass="btn btn-primary" style="margin-left: 15px;" BackColor="#621ED9" ForeColor="White" OnClick="Profilim_Click"    />
            <asp:Button ID="CikisYap" runat="server" Text="Çıkış Yap" CssClass="btn btn-primary" style="margin-left: 15px; height: 46px;" BackColor="#E10D0D" ForeColor="White" OnClick="CikisYap_Click"  />
            
       </div>
       
        </div>
         <div class="row justify-content-center mt-4">
            <div class="col-lg-8">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-3">
                                <img src="https://i1.wp.com/www.mus.gen.tr/wp-content/uploads/2023/03/varsayilan-kullanici-resmi.png?ssl=1" alt="Profil Resmi" class="profile-img img-fluid" />
                            </div>
                            <div class="col-md-9">
                                <h2 class="mb-3">PROFİL</h2>
                                <div class="profile-info">
                                    <p><strong>İsim: </strong>
                                        <asp:Label ID="İsim" runat="server" style="color: #000000; font-size: medium; font-style: italic; background-color: #FFFFFF" Text="Label"></asp:Label>
                                    </p>
                                    <p><strong>Soyisim:</strong> 
                                        <asp:Label ID="Syisim" runat="server" style="font-style: italic; font-size: medium" Text="Label"></asp:Label>
                                    </p>
                                    <p><strong>Mail: </strong>
                                        <asp:Label ID="k_mail" runat="server" style="font-size: medium; font-style: italic" Text="Label"></asp:Label>
                                    </p>
                                    <p><strong>Telefon Numarası:</strong> 
                                        <asp:Label ID="telno" runat="server" style="font-style: italic; font-size: small" Text="Label"></asp:Label>
                                    </p>
                                   
                                </div>
                             <asp:Button ID="ButtonGuncelle" runat="server" Text="Düzenle" CssClass="btn btn-primary"   OnClick="ButtonGuncelle_Click" />
                              
                            </div>
                        </div>
                    </div>
                </div>
                
            </div>
        </div>
    </div>
</form>
</body>
</html>
