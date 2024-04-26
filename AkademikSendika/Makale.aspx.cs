using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AkademikSendika
{
    public partial class Makale : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserId"] != null)
            {
                string kullanici_mail= Session["UserId"] as string;
                // Oturum varsa butonu göster
                Button1.Visible = true;
                //ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Kullanıcı Mail: " + kullanici_mail + "');", true);
            }
            else
            {
                // Oturum yoksa butonu gizle
                Button1.Visible = false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string baslik = TextBoxTitle.Text;
            string makale = TextBoxContent.Text;

            string connectionString = "Data Source=DOGUKAN;Initial Catalog=AkademikSendika_Db;Integrated Security=True";

            string kullanici_mail = Session["UserId"] as string;
            string kullanici_id_query = "SELECT kullanici_id FROM kullanicilar WHERE kullanici_email = @kullanici_mail";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                using (SqlCommand cmdKullaniciId = new SqlCommand(kullanici_id_query, connection))
                {
                    cmdKullaniciId.Parameters.AddWithValue("@kullanici_mail", kullanici_mail); //eşleştirme

                    // Kullanıcı ID'sini al
                    object result = cmdKullaniciId.ExecuteScalar();
                    if (result != null)
                    {
                        string kullanici_id = result.ToString(); // dönüş değerini kullanici_id'ye aktar

                        string query = "INSERT INTO paylasimlar (paylasimlar_isim, paylasimlar_icerik, kullanici_id) VALUES (@baslik, @makale, @kullanici_id)";

                        using (SqlCommand cmd = new SqlCommand(query, connection))
                        {
                            // Parametreleri ekle
                            cmd.Parameters.AddWithValue("@baslik", TextBoxTitle.Text);
                            cmd.Parameters.AddWithValue("@makale", TextBoxContent.Text);
                            cmd.Parameters.AddWithValue("@kullanici_id", kullanici_id);

                            // Sorguyu çalıştır
                            int rowsAffected = cmd.ExecuteNonQuery();

                            // Ekleme işlemi başarılıysa
                            if (rowsAffected > 0)
                            {
                                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Paylaşım başarıyla eklendi.');", true);
                            }
                            else
                            {
                                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Paylaşım GERÇEKLEŞTİRİLMEDİ.');", true);
                            }
                        }
                    }
                    else
                    {
                        // Kullanıcı ID bulunamadı
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Kullanıcı ID bulunamadı.');", true);
                        return; // metodu burada sonlandırın veya uygun bir şekilde işleyin
                    }
                }
            }
        }
    }
}
