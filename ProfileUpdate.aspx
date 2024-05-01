<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProfileUpdate.aspx.cs" Inherits="Enerji_İş_Sendikası.ProfileUpdate" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head><title></title>
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
    <style>

            body, html {
    margin: 0;
    padding: 0;
    height: 100%;
    overflow: hidden; 
}

#form1 {
    height: 100%;
}

#container1 {
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
    .title-input {
        width: 100%;
        min-height: 20px;
        padding: 10px;
        font-size: 0.9em;
        font-family: Arial, sans-serif;
        resize: vertical;
        border: 1px solid #ddd;
        border-radius: 3px;
        margin-bottom: 15px;
    }

</style>
</head>
     

<body>

        <form id="form1" runat="server" >
   

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
                                    
                                        <asp:Label ID="lbl_isim" runat="server" Text="İSİM"></asp:Label>
                                                  
                                    <asp:TextBox ID="isim" runat="server" Text=""     CssClass="title-input" OnTextChanged="isim_TextChanged"   />
                                    <asp:Label ID="lbl_soy" runat="server" Text="SOYİSİM"></asp:Label>           
                                    <asp:TextBox ID="soy" runat="server" Text=""       CssClass="title-input" OnTextChanged="soy_TextChanged"  />
                                   <asp:Label ID="lbl_mail" runat="server" Text="E-MAİL"></asp:Label>            
                                    <asp:TextBox ID="mail" runat="server" Text=""        CssClass="title-input" OnTextChanged="mail_TextChanged"  />
                                    <asp:Label ID="lbl_tel" runat="server" Text="TELEFON"></asp:Label>   
                                    <asp:TextBox ID="tel" runat="server" Text=""        CssClass="title-input" OnTextChanged="tel_TextChanged"  />
                                        <asp:Label ID="Mesaj" runat="server"></asp:Label>
                                    
                                   
                                </div>
                             <asp:Button ID="Button1" runat="server" Text="Düzenle" CssClass="btn btn-primary" OnClick="Button1_Click" />
                              
                            </div>
                        </div>
                    </div>
                </div>
                <div class="post-section">
                    <div class="card post-card">
                        <div class="card-body">
                            <h5 class="card-title">Gönderi Başlığı</h5>
                            <p class="card-text">Gönderi İçeriği buraya gelecek...</p>
                            <a href="#" class="btn btn-primary">Daha Fazla Oku</a>
                        </div>
                    </div>
                   
                </div>
            </div>
        </div>
    </div>


    </form>

</body>
</html>
