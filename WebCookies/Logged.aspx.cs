using System;
using System.Web;

namespace WebCookies
{
    public partial class Logged : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                HttpCookie loginCookie = Request.Cookies["login"];
                if (loginCookie != null)
                {
                    // Recupera i valori dai cookie e impostali come testo della label
                    Label1.Text = "Benvenuto " + loginCookie["Username"] + " " + loginCookie["Password"];
                }
                else
                {
                    // Se il cookie non esiste, reindirizza al login
                    Response.Redirect("Default.aspx");
                }
            }
        }

        protected void BtnLogout_Click(object sender, EventArgs e)
        {
            // Rimuovi il cookie di login impostando la data di scadenza nel passato
            if (Request.Cookies["login"] != null)
            {
                HttpCookie loginCookie = new HttpCookie("login")
                {
                    Expires = DateTime.Now.AddDays(-1)
                };
                Response.Cookies.Add(loginCookie);
            }

            // Reindirizza l'utente alla pagina di login
            Response.Redirect("Default.aspx");
        }
    }
}
