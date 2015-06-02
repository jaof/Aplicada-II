using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BLL;

namespace RegistroMedic
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        RevisionPacientes rev = new RevisionPacientes();
        DataTable detalle = new DataTable();
        RevisionDetalle revD = new RevisionDetalle();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DdlPaciente.DataSource = Pacientes.Lista("Nombre,IdPaciente", "Pacientes");
                DdlPaciente.DataValueField = "IdPaciente";
                DdlPaciente.DataTextField = "Nombre";
                DdlPaciente.DataBind();

                DdlSistema.DataSource = Sistemas.Lista("Sistema,IdSistemaFisio", "SistemasFisio");
                DdlSistema.DataValueField = "IdSistemaFisio";
                DdlSistema.DataTextField = "Sistema";
                DdlSistema.DataBind();
                Session.Abandon();
            }  
           
        }

        protected void BtnGuardar_Click(object sender, EventArgs e)
        {
            
            
            rev.IdPaciente = Convert.ToInt32( DdlPaciente.SelectedValue);
            rev.Fecha = Convert.ToDateTime(TbFecha.Text);
            
            if (TextBoxIdRevision.Text == string.Empty)
            {
                if (rev.Insertar())
                {
                    if (rev.BuscarIdRevision())
                    {
                        TextBoxIdRevision.Text = rev.IdRevision.ToString();
                    }
                    DataTable datos = Session["detalle"] as DataTable;
                    foreach (DataRow row in datos.Rows)
                    {

                        revD.IdSistema = int.Parse(row["IdSistema"].ToString());
                        revD.Estado = row["Estado"].ToString();
                        revD.Insertar();
                        
                    }
                }

            }
        }

        protected void BtnADD_Click(object sender, EventArgs e)
        {
     
            if (Session["detalle"] == null)
            {
                detalle.Columns.Add("IdSistema", typeof(int));
                detalle.Columns.Add("Sistema", typeof(string));
                detalle.Columns.Add("Estado", typeof(string));

            }
            else
            {
                detalle = (DataTable)Session["detalle"];
            }
            DataRow row = detalle.NewRow();
            row["IdSistema"] = DdlSistema.SelectedValue;
            row["Sistema"] = DdlSistema.SelectedItem;
            row["Estado"] = TbEstado.Text;
            detalle.Rows.Add(row);

            Session["detalle"] = detalle;
            GvDetalle.DataSource = detalle;
            GvDetalle.DataBind();
        }

        protected void BtnADD_Click1(object sender, EventArgs e)
        {
        }
    }
}