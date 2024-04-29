<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPanel.aspx.cs" Inherits="AkademikSendika.Adö" %>

<!DOCTYPE html>

<html>
    <head><title></title></head>
    <style>

    </style>
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <body>
        <form id="form1" runat="server">
 <div class="container mt-5">
  <h1 class="text-center mb-5">Admin Paneli</h1>

  <div class="mb-5">
    <h3>Makaleler</h3>
    <table class="table table-bordered">
      <thead class="thead-dark">
        <tr>
          <th scope="col">#</th>
          <th scope="col">Başlık</th>
          <th scope="col">Durum</th>
          <th scope="col">İşlemler</th>
        </tr>
      </thead>
      <tbody id="makalelerTablosu">
        <tr>
          <td>1</td>
          <td><a href="#" class="makaleBasligi">Örnek Makale Başlığı</a></td>
          <td>Beklemede</td>
          <td>
              <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" Text="Kabul" OnClick="kabul" />
              <asp:Button ID="Button2" runat="server"  CssClass="btn btn-danger" Text="Red" CausesValidation="False" OnClick="red" />
           
          </td>
        </tr>
      </tbody>
    </table>
  </div>



  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="bekleyen_paylasim_id" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" />
                <asp:BoundField DataField="bekleyen_paylasim_id" HeaderText="bekleyen_paylasim_id" InsertVisible="False" ReadOnly="True" SortExpression="bekleyen_paylasim_id" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=DOGUKAN;Initial Catalog=AkademikSendika_Db;Integrated Security=True;Encrypt=False;Trust Server Certificate=True" DeleteCommand="DELETE FROM [bekleyen_paylasim] WHERE [bekleyen_paylasim_id] = @bekleyen_paylasim_id" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [bekleyen_paylasim_id] FROM [bekleyen_paylasim]">
            <DeleteParameters>
                <asp:Parameter Name="bekleyen_paylasim_id" Type="Int32" />
            </DeleteParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        </form>
</html>
