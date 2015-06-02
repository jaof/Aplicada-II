using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using DAL;

namespace BLL
{
     
   public class Usuarios
    {
        public int IdUsuario { get; set; }
        public string Nombre { get; set; }
        public string Contraceña { get; set; }
        public Conexion ConexiondB = new Conexion();
        public bool Insertar()
        {
            return ConexiondB.EjecutarDB("Insert Into Usuarios(Nombre,Contraceña)Values('" + Nombre + "','" + Contraceña+ "')");

        }

        public bool Buscar(string nombre, string contraceña)
        {
            bool mesj = false;
            DataTable dt = new DataTable();
             dt = ConexiondB.BuscarDb("Select  Nombre from Usuarios where Nombre='"+nombre+"' AND Contraceña='"+contraceña+"'");
            if (dt.Rows.Count > 0)
            {

            


                mesj = true;


            }
            return mesj;
        }
    }
}
