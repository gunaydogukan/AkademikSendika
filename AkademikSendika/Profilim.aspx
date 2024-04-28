<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profilim.aspx.cs" Inherits="AkademikSendika.Profilim" %>

<!DOCTYPE html>




<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
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

    
</style>

</head>
<body>

                <form id="form1" runat="server">

                <div class="container">
<div class="row justify-content-center mt-4">
    <div class="col-lg-8">
        <div class="card">
            <div class="card-body">
                <div class="row">
                    <div class="col-md-3">
                        <img src="https://i1.wp.com/www.mus.gen.tr/wp-content/uploads/2023/03/varsayilan-kullanici-resmi.png?ssl=1" alt="Profil Resmi" class="profile-img img-fluid">
                    </div>
                    <div class="col-md-9">
                        <h2 class="mb-3">PROFİL</h2>
                        <div class="profile-info">
                            <p><strong>İsim:</strong><asp:Label ID="İsim" runat="server"></asp:Label>
                            </p>
                            <p><strong>Soyisim:</strong>
                                <asp:Label ID="Syisim" runat="server"></asp:Label>
                            </p>
                            <p><strong>Mail:</strong>
                                <asp:Label ID="k_mail" runat="server"></asp:Label>
                            </p>
                            <p><strong>Telefon Numarası:</strong>
                                <asp:Label ID="telno" runat="server"></asp:Label>
                            </p>
                            <p>
                                <asp:Button ID="ButtonGuncelle" runat="server" CssClass="btn btn-primary" OnClick="Button1_Click" Text="Düzenle" />
                            </p>
                           
                        </div>
                      
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
