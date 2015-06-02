using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RegistroMedic
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TbxUsuario.Text = LogOn.Usu;
        }

        protected void BtnSalir_Click(object sender, EventArgs e)
        {
            Session.Remove("Usuarios");
            Response.Redirect("LogOn.aspx");
            DisplaySessionValue();
           
        }
        private void DisplaySessionValue()
        {
            if (Session["Usuarios"] != null)
                TbxUsuario.Text = Convert.ToString(Session["Usuarios"]);
            else
                TbxUsuario.Text = "No Value has been stored in session";
        }
    }
}