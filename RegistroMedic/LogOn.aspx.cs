using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using BLL;
using System.Security;


namespace RegistroMedic
{
    public partial class LogOn : System.Web.UI.Page
    {
        Usuarios us = new Usuarios();
        public static string  Usu; 
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Logon_Click(object sender, EventArgs e)
        {
            if (us.Buscar(UserEmail.Text,UserPass.Text))
            {
                FormsAuthentication.RedirectFromLoginPage(UserEmail.Text, Persist.Checked);
                Session["Usuarios"] = UserEmail.Text.Trim();
                Usu = UserEmail.Text;
            }
            else
            {
                Msg.Text = " Usuario O Contraceña INVALIDA. Intentelo de Nuevo.";
            }
        }
    }
}