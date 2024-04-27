using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AkademikSendika
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Sayfa yüklendiğinde kontrol et
            if (!IsPostBack)
            {
                // Kullanıcı giriş yapmamışsa
                if (Session["KullaniciID"] == null)
                {
                    // Makaleler butonunu etkinleştir
                    Button2.Enabled = true;
                }
                else
                {
                    // Kullanıcı giriş yapmışsa ve oturum bilgisi varsa, makaleler butonunu devre dışı bırak
                    Button2.Enabled = false;
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            // Makaleler butonuna tıklandığında kontrol et
            if (Session["KullaniciID"] == null)
            {
                // Kullanıcı oturum açmadıysa uyarı mesajı göster
                string script = "alert('Önce oturum açmalısınız.');";
                ScriptManager.RegisterStartupScript(this, GetType(), "alert", script, true);
            }


        }



        protected void KayitOl_Click(object sender, EventArgs e)
        {
            Response.Redirect("kayitEkrani.aspx");
        }

        protected void GirisYap_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("AnaSayfa.aspx");
        }

    }
}