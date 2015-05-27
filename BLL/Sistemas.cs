using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using DAL;

namespace BLL
{
   public  class Sistemas
    {
       public int IdSistema { get; set; }
       public string Sistema { get; set; }


       public Conexion ConexiondB = new Conexion();
       public bool Insertar()
       {
           return ConexiondB.EjecutarDB("Insert Into SistemasFisio(Sistema)Values('"+ Sistema + "')");

       }

       public bool Modificar(string IdSistema)
       {
           return ConexiondB.EjecutarDB("Update SistemasFisio set IdSistemaFisio='" + IdSistema + "',Sistema ='" + Sistema + "'where IdSistemaFisio='" + IdSistema + "' ");

       }

       public bool Eliminar(string IdSistema)
       {
           return ConexiondB.EjecutarDB("Delete from SistemasFisio where IdSistemaFisio=" + IdSistema);
       }

       public bool Buscar(int IdSistema)
       {
           bool mesj = false;
           DataTable dt = new DataTable();
           dt = ConexiondB.BuscarDb("Select *from SistemasFisio where IdSistemaFisio=" + IdSistema);
           if (dt.Rows.Count > 0)
           {

               IdSistema = (int)dt.Rows[0]["IdSistemaFisio"];
               Sistema = dt.Rows[0]["Sistema"].ToString();

               mesj = true;


           }
           return mesj;
       }

       public static DataTable Lista(String Campos, String FiltroWhere)
       {
           Conexion c = new Conexion();
           return c.BuscarDb("Select " + Campos + " from " + FiltroWhere);
       }
      
    }
}
