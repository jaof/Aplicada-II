using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace RegistroMedic
{
    public partial class rSistemaFisiologico : System.Web.UI.Page
    {
        Sistemas sis = new Sistemas();   
        int IdSistema;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {


                int.TryParse(Request.QueryString["IdSistema"], out IdSistema);

                if (sis.Buscar(IdSistema))
                {


                    TbIdSistema.Text = (IdSistema).ToString();
                    TbSistema.Text = sis.Sistema;
                    
                    btnGuardar.Text = "Actualizar";
                    btnEliminar.Visible = true;

                }
            }

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            if (TbIdSistema.Text == string.Empty)
            {



            
                sis.Sistema = TbSistema.Text;
                
                if (TbIdSistema.Text == string.Empty)
                {

                    if (sis.Insertar())
                    {
                        Response.Write("Guardo Exitosamente");
   
                    }
                    else
                    {
                        Response.Write("No se Pudo Guardar");
                    }
                }
            }
            else
            {
             
                sis.Sistema = TbSistema.Text;
                
                    if (sis.Modificar(TbIdSistema.Text))
                    {
                        Response.Write("Modifico Exitosamente");
               

                    }
                    else
                    {
                        Response.Write("No se Pudo Pudo Modificar");
                    }
            }

        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {

        }
    }
}