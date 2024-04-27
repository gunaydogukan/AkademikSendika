using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AkademikSendika
{
    public partial class MasterPage2 : System.Web.UI.MasterPage
    {
               protected void Page_Load(object sender, EventArgs e)
        {
            // Sayfa yüklendiğinde kontrol et
            if (Session["UserId"] == null)
            {
                Response.Redirect("AnaSayfa.aspx");
            }
        }

        protected void Profilim_Click(object sender, EventArgs e)
        {
            Response.Redirect("Profil.aspx");
        }

        protected void CikisYap_Click(object sender, EventArgs e)
        {
            // Kullanıcı oturumunu sonlandır
            Session.Clear();
            Session.Abandon();

            // Kullanıcıyı anasayfaya yönlendir
            Response.Redirect("Anasayfa.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            // Kullanıcı giriş yapmışsa ve oturum bilgisi varsa, makaleler sayfasına yönlendir
            Response.Redirect("Articles.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("AnaSayfa2.aspx");
        }
    }
}