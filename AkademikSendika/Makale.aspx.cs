using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace AkademikSendika
{
    public partial class Makale : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string kullanici_mail = Session["UserId"] as string;
            Button1.Visible = !string.IsNullOrEmpty(kullanici_mail); 
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string baslik = TextBoxTitle.Text;
            string makale = TextBoxContent.Text;
            string kullanici_mail = Session["UserId"] as string;

            if (!string.IsNullOrEmpty(kullanici_mail))
            {
                string kullanici_id = GetKullaniciId(kullanici_mail);
                if (!string.IsNullOrEmpty(kullanici_id))
                {
                    int paylasimlar_id = InsertPaylasim(baslik, makale, kullanici_id);
                    if (paylasimlar_id > 0)
                    {
                        int kullanici_id_int = Convert.ToInt32(kullanici_id);

                        InsertBekleyenTablo(kullanici_id_int, paylasimlar_id);
                        ShowAlert("Paylaşım başarıyla eklendi ve bekleyen tabloya eklendi.");
                    }
                    else
                    {
                        ShowAlert("Paylaşım ekleme başarısız oldu.");
                    }
                }
                else
                {
                    ShowAlert("Kullanıcı ID bulunamadı.");
                }
            }
            else
            {
                ShowAlert("Kullanıcı e-posta adresi alınamadı.");
            }
        }

        private string GetKullaniciId(string kullanici_mail)
        {
            string kullanici_id = "";
            string kullanici_id_query = "SELECT kullanici_id FROM kullanicilar WHERE kullanici_email = @kullanici_mail";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                using (SqlCommand cmdKullaniciId = new SqlCommand(kullanici_id_query, connection))
                {
                    cmdKullaniciId.Parameters.AddWithValue("@kullanici_mail", kullanici_mail);
                    object result = cmdKullaniciId.ExecuteScalar();
                    if (result != null)
                    {
                        kullanici_id = result.ToString();
                    }
                }
            }

            return kullanici_id;
        }

        private int InsertPaylasim(string baslik, string makale, string kullanici_id)
        {
            int paylasimlar_id = 0;
            string paylasimlar_insert_query = "INSERT INTO paylasimlar (paylasimlar_isim, paylasimlar_icerik, kullanici_id) VALUES (@baslik, @makale, @kullanici_id); SELECT SCOPE_IDENTITY();"; 
                                                                                                                                                                     //son eklenen id yi alır

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                using (SqlCommand cmdPaylasimEkle = new SqlCommand(paylasimlar_insert_query, connection))
                {
                    cmdPaylasimEkle.Parameters.AddWithValue("@baslik", baslik);
                    cmdPaylasimEkle.Parameters.AddWithValue("@makale", makale);
                    cmdPaylasimEkle.Parameters.AddWithValue("@kullanici_id", kullanici_id);
                    object result = cmdPaylasimEkle.ExecuteScalar();
                    if (result != null)
                    {
                        paylasimlar_id = Convert.ToInt32(result); //son eklenen id yi int çevirir
                    }
                }
            }

            return paylasimlar_id;
        }

        private void InsertBekleyenTablo(int kullanici_id, int paylasimlar_id)
        {
            string bekleyen_query = "INSERT INTO bekleyen_paylasim (kullanici_id,paylasimlar_id) VALUES (@kullanici_id,@paylasimlar_id)";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                using (SqlCommand cmdBekleyen = new SqlCommand(bekleyen_query, connection))
                {
                    cmdBekleyen.Parameters.AddWithValue("@kullanici_id", kullanici_id);
                    cmdBekleyen.Parameters.AddWithValue("@paylasimlar_id", paylasimlar_id);
                    cmdBekleyen.ExecuteNonQuery();
                }
            }
        }

        private void ShowAlert(string message)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", $"alert('{message}');", true);
        }

        private string connectionString = "Data Source=DOGUKAN;Initial Catalog=AkademikSendika_Db;Integrated Security=True";
    }
}
