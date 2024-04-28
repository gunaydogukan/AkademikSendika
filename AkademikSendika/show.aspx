<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.Master" AutoEventWireup="true" CodeBehind="show.aspx.cs" Inherits="AkademikSendika.show" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <html xmlns="http://www.w3.org/1999/xhtml">
    <head><title></title><          <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </head>
    <style>





.content {
    overflow: hidden;
    max-height: 100px; /* Özetlenmiş makale yüksekliği */
    transition: max-height 0.3s ease-out; /* Geçiş efekti */
}

.show-more-btn {
    background-color: #007bff;
    color: #fff;
    border: none;
    padding: 10px 20px;
    cursor: pointer;
    margin-top: 10px;
    text-decoration: none;
    display: inline-block;
}

.show-more-btn:hover {
    background-color: #0056b3;
}

 body {
   font-family: Arial, sans-serif;
   background-color: #f8f9fa;
   color: #343a40;
   margin: 0;
   padding: 0;
 }

 .container {
   max-width: 800px;
   margin: 50px auto;
   padding: 20px;
   background-color: #fff;
   border-radius: 5px;
   box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
 }

 .blog-post {
   margin-bottom: 30px;
 }

 .blog-post h2 {
   color: #007bff;
 }

 .blog-post p {
   line-height: 1.6;
   overflow: hidden;
   text-overflow: ellipsis;
   display: -webkit-box;
   -webkit-line-clamp: 3; /* Show 3 lines */
   -webkit-box-orient: vertical;
 }

 .blog-post .meta {
   font-size: 14px;
   color: #6c757d;
   margin-top: 10px;
 }
    </style>
    <body>
        <div class="container">
    <div class="blog-post">
        <h2>Örnek Makale Başlığı</h2>
        <div class="content">
            <p>Bu örnek makale yazısıdır. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
            <p class="meta">Yazar: John Doe | Tarih: 01/04/2024
            </p>
        </div>
      <asp:Button ID="Button1" runat="server" Text="Geri Dön" CssClass="btn btn-primary" OnClick="Button1_Click" />
    </div>
</div>
</body>
</asp:Content>
