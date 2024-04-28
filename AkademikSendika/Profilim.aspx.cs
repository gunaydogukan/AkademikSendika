using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AkademikSendika
{
    public partial class Profilim : System.Web.UI.Page
    {
        private string kullanici_mail;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["UserId"] != null)
            {
                kullanici_mail = Session["UserId"] as string;
            }else
            {
                Response.Redirect("AnaSayfa.aspx");
            }

          

            string connectionString = "Data Source=DOGUKAN;Initial Catalog=AkademikSendika_Db;Integrated Security=True";

            string isim = null;
            string soyisim = null;
            string mail = null;
            string telefon = null;

            string query = "SELECT * FROM kullanicilar WHERE kullanici_email=@kullanici_mail";

            using(SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@kullanici_mail", kullanici_mail);


                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            // Veritabanından gelen verileri al
                            isim = reader["kullanici_adi"].ToString();
                            soyisim = reader["kullanici_soyadi"].ToString();
                            mail = reader["kullanici_email"].ToString();
                            if (reader["kullanici_telefon"] != null)
                            {
                                telefon = reader["kullanici_telefon"].ToString();
                            }
                            else
                            {
                                telefon = "0";
                            }
                           
                        }
                    }

                    İsim.Text = isim;
                    Syisim.Text = soyisim;
                    k_mail.Text = mail;
                    telno.Text = telefon;

                }

                //Makaleleri göster...



            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //düzenle alanına gönder..
            Response.Redirect("ProfilDuzenle.aspx");
        }
    }
}