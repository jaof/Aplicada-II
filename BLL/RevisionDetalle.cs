using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using DAL;


namespace BLL
{
    public class RevisionDetalle
    {
       
        public int IdRevisionDetalle {get;set;}
        public int IdRevision { get; set; }
        public int IdSistema{get;set;}
        public string Estado{get;set;}

        public Conexion ConexiondB = new Conexion();
        public bool Insertar()
        {
            return ConexiondB.EjecutarDB("Insert Into RevisionDetalles(IdRevisionPaciente,IdSistema,Estado)Values('" + IdRevision + "','" + IdSistema + "','" + Estado + "')");

        }

        public bool Modificar(string IdRevisionDetalle)
        {
            return ConexiondB.EjecutarDB("Update RevisionDetalles set IdRevisionPaciente='" + IdRevision + "',IdSistema ='" + IdSistema + "',Estado ='" + Estado + "'where IdRevisionDetalle='" + IdRevisionDetalle + "' ");

        }

        public bool Eliminar(string IdRevisionDetalle)
        {
            return ConexiondB.EjecutarDB("Delete from RevisionDetalles where IdRevisionDetalle=" + IdRevisionDetalle);
        }

        public bool Buscar(String IdRevisionDetalleI)
        {
            bool mesj = false;
            DataTable dt = new DataTable();
            dt = ConexiondB.BuscarDb("Select *from RevisionDetalles where IdRevisionDetalle=" + IdRevisionDetalleI);
            if (dt.Rows.Count > 0)
            {

                IdRevisionDetalle = (int)dt.Rows[0]["IdRevisionDetalle"];
                IdRevision = (int)dt.Rows[0]["IdRevisionPaciente"];
                IdSistema = (int)dt.Rows[0]["IdPaciente"];
                Estado = dt.Rows[0]["Estado"].ToString();


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
