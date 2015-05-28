using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Globalization;
using System.Data;
using BLL;


namespace RegistroMedic
{
    public partial class Web : System.Web.UI.Page
    {
        Pacientes pac = new Pacientes();
   
        int IdPaciente = 0;
   
         
        protected void Page_Load(object sender, EventArgs e)


        {
            if (!IsPostBack)
            {
                
               
                int.TryParse(Request.QueryString["IdPaciente"], out IdPaciente);

                if (pac.Buscar(IdPaciente))
                {
                    
                 
                    TextBoxIdPaciente.Text= (IdPaciente).ToString();
                    TextBoxNombre.Text = pac.Nombre;
                    TextBoxApellido.Text = pac.Apellido;
                    TextBoxDireccion.Text = pac.Direccion;
                    TextBoxTelefono.Text = pac.Telefono;
                    TextBoxCelular.Text = pac.Celular;
                    TextBoxCedula.Text = pac.Cedula;
                    TextBoxFechaNac.Text=pac.FechaNac.ToString("yyyy-MM-dd") ;
                    TextBoxFechaIng.Text = pac.FechaIng.ToString("yyyy-MM-dd");
                    DropDownListSexo.SelectedIndex = pac.Sexo;
                    TextBoxOcupacion.Text = pac.Ocupacion;
                    btnGuardar.Text = "Actualizar";
                    btnEliminar.Visible = true;

                }
            }
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            if (TextBoxIdPaciente.Text == string.Empty)
            {



                pac.Nombre = TextBoxNombre.Text;
                pac.Apellido = TextBoxApellido.Text;
                pac.Direccion = TextBoxDireccion.Text;
                pac.Telefono = TextBoxTelefono.Text;
                pac.Celular = TextBoxCelular.Text;
                pac.Cedula = TextBoxCedula.Text;
                pac.FechaNac = Convert.ToDateTime(TextBoxFechaNac.Text);
                pac.FechaIng = Convert.ToDateTime(TextBoxFechaIng.Text);
                pac.Sexo = Convert.ToInt32(DropDownListSexo.SelectedValue.ToString());
                pac.Ocupacion = TextBoxOcupacion.Text;


                if (TextBoxIdPaciente.Text == string.Empty)
                {

                    if (pac.Insertar())
                    {
                        Response.Write("Guardo Exitosamente");


                        Page.ClientScript.RegisterStartupScript(this.GetType(),
      "toastr_message", "toastr.error('There was an error', 'Error')", true);﻿

                    }
                    else
                    {
                        Response.Write("No se Pudo Guardar");
                    }
                }
            }
            else
            {
                pac.IdPaciente =Convert.ToInt32( TextBoxIdPaciente.Text);
                pac.Nombre = TextBoxNombre.Text;
                pac.Apellido = TextBoxApellido.Text;
                pac.Direccion = TextBoxDireccion.Text;
                pac.Telefono = TextBoxTelefono.Text;
                pac.Celular = TextBoxCelular.Text;
                pac.Cedula = TextBoxCedula.Text;
                pac.FechaNac = Convert.ToDateTime(TextBoxFechaNac.Text);
                pac.FechaIng = Convert.ToDateTime(TextBoxFechaIng.Text);
                pac.Sexo = Convert.ToInt32(DropDownListSexo.SelectedValue.ToString());
                pac.Ocupacion = TextBoxOcupacion.Text;


               
                    if (pac.Modificar(TextBoxIdPaciente.Text))
                    {
                        Response.Write("Modifico Exitosamente");
               

                    }
                    else
                    {
                        Response.Write("No se Pudo Pudo Modificar");
                    }
                


            }
        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            Limpiar();

        }

        protected void btnConsulta_Click(object sender, EventArgs e)
        {
           
  
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
           if( pac.Eliminar(IdPaciente.ToString()))
                {
                        Response.Write("Elimino Exitosamente");

                        Limpiar();

                    }
                    else
                    {
                        Response.Write("No se Pudo Pudo Eliminar");
                    }
                

        }
        public void Limpiar()
        {
            TextBoxIdPaciente.Text = "";
            TextBoxNombre.Text = "";
            TextBoxApellido.Text = "";
            TextBoxDireccion.Text = "";
            TextBoxTelefono.Text = "";
            TextBoxCelular.Text = "";
            TextBoxCedula.Text = "";
            TextBoxOcupacion.Text = "";

        }

    }
}