using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;

namespace WebCookies
{
    public partial class SiteMaster : MasterPage
    {
        public HtmlInputText txtUsername;
        public HtmlInputText txtPassword;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            HttpCookie userData = new HttpCookie("login");
            if (txtUsername != null && txtPassword != null)
            {
                userData["Username"] = txtUsername.Value;
                userData["Password"] = txtPassword.Value;
            }
            userData.Expires = DateTime.Now.AddDays(7); // Imposta la scadenza del cookie

            Response.Cookies.Add(userData); // Aggiungi il cookie alla risposta

            Response.Redirect("Logged.aspx"); // Reindirizza all'altra pagina
        }
    }
}
