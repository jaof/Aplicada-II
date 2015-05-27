using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace RegistroMedic
{
    public partial class fSistemasFisiologicos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            GridViewVista.DataSource = Sistemas.Lista("*", " SistemasFisio");
            GridViewVista.DataBind();

        }

        protected void BtnBuscar_Click(object sender, EventArgs e)
        {
            GridViewVista.DataSource = Sistemas.Lista("*", "SistemasFisio Where Sistema like'" + TextBoxFiltro.Text + "%'");
            GridViewVista.DataBind();
        }

    }
}