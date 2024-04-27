using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AkademikSendika
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Kullanıcının girdiği e-posta ve parolayı alalım
            string email = TextBox1.Text;
            string password = TextBox2.Text;

            // Veritabanı bağlantı dizesi
            string connectionString = "Data Source=DOGUKAN;Initial Catalog=AkademikSendika_Db;Integrated Security=True";

            // Veritabanı sorgusu
            string query = "SELECT COUNT(*) FROM kullanicilar WHERE kullanici_email = @kullanici_email AND kullanici_sifre = @kullanici_sifre";

            // Veritabanı bağlantısını açalım
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    // Parametreleri ekleyerek SQL sorgusunu hazırlayalım
                    command.Parameters.AddWithValue("@kullanici_email", email);
                    command.Parameters.AddWithValue("@kullanici_sifre", password);

                    // Bağlantıyı açalım
                    connection.Open();

                    // Sorguyu çalıştıralım ve sonucu alalım
                    int result = (int)command.ExecuteScalar();

                    // Sonucu kontrol edelim
                    if (result > 0)
                    {
                        // Kullanıcı giriş yaptığında oturum (session) oluştur
                        Session["UserId"] = email;

                        // Eğer kullanıcı varsa Anasayfa.aspx'e yönlendirelim
                        Response.Redirect("Anasayfa2.aspx");
                    }
                    else
                    {
                        // Eğer kullanıcı yoksa hata mesajını gösterelim
                        Label3.Visible = true;
                        Label3.Text = "E-posta veya parola hatalı. Kayıtlı değilseniz kayıt olun :)";
                    }
                }
            }
        }

    }
}
