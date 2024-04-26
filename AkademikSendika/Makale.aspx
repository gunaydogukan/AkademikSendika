<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Makale.aspx.cs" Inherits="AkademikSendika.Makale" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <html>
    <head><title></title>
        <style>
/* Genel stil */
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 10px; /* Küçük bir padding */
    background-color: #f4f4f4;
}

.container {
    max-width: 600px; /* Container genişliği küçültüldü */
    margin: 0 auto;
    padding: 20px;
    background-color: #fff;
    border-radius: 5px;
    box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1);
}

.blog-post {
    padding: 15px; /* Padding küçültüldü */
    border-bottom: 1px solid #ddd;
}

/* Başlık giriş kutusu */
.title-input {
    width: 100%;
    padding: 8px; /* Padding küçültüldü */
    font-size: 1em; /* Font boyutu standart hale getirildi */
    border: 1px solid #ddd;
    border-radius: 3px; /* Border radius küçültüldü */
    margin-bottom: 10px;
}

/* Makale içeriği giriş kutusu */
.content-input {
    width: 100%;
    min-height: 300px; /* Kutu yüksekliği küçültüldü */
    padding: 10px; /* Padding küçültüldü */
    font-size: 0.9em; /* Font boyutu küçültüldü */
    font-family: Arial, sans-serif;
    resize: vertical;
    border: 1px solid #ddd;
    border-radius: 3px; /* Border radius küçültüldü */
    margin-bottom: 15px; /* Alt boşluk artırıldı */
}

/* Gönder düğmesi */
.btn {
    background-color: #333;
    color: #fff;
    padding: 8px 15px; /* Padding küçültüldü */
    border: none;
    border-radius: 3px; /* Border radius küçültüldü */
    cursor: pointer;
    transition: background-color 0.2s ease-in-out;
}

.btn:hover {
    background-color: #222;
}


</style>

    </head>
    <body>
<div class="container">
    <div class="blog-post">
        <h2>Başlık</h2>
        <asp:TextBox ID="TextBoxTitle" runat="server" Text="BAŞLIK GİRİNİZ"  CssClass="title-input" />
        <h2>Makale Yazısı</h2>
        <div class="content">
            <asp:TextBox ID="TextBoxContent" runat="server" Text="MAKALE YAZISI" TextMode="MultiLine" Rows="10" CssClass="content-input" />
        </div>
        <asp:Button ID="Button1" runat="server" Text="Gönder" CssClass="btn" OnClick="Button1_Click" />
    </div>
</div>

         

    </body>
    </html>
    

</asp:Content>
