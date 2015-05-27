using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using DAL;

namespace BLL
{
    public class RevisionPacientes
    {
        public int IdRevision { get; set; }
        public int IdPaciente { get; set; }
        public DateTime Fecha  { get; set; }

        public Conexion ConexiondB = new Conexion();
        public bool Insertar()
        {
            return ConexiondB.EjecutarDB("Insert Into RevisionPacientes(IdPaciente,Fecha)Values('"  + IdPaciente + "','" + Fecha.ToString("MM/dd/yyyy") +"')");

        }

        public bool Modificar(string IdRevision)
        {
            return ConexiondB.EjecutarDB("Update RevisionPacientes set IdRevisionPaciente='" + IdRevision + "',IdPaciente ='" + IdPaciente + "',Fecha ='" + Fecha.ToString("MM/dd/yyyy") + "'where  IdRevisionPaciente='" + IdRevision + "' ");

        }

        public bool Eliminar(string IdRevision)
        {
            return ConexiondB.EjecutarDB("Delete from RevisionPacientes where  IdRevisionPaciente=" + IdRevision);
        }
        public bool BuscarIdRevision(){
            bool Retorno=false;
            DataTable dt =new DataTable();
            dt = ConexiondB.BuscarDb("select Max( IdRevisionPaciente)as  IdRevision from RevisionPacientes ");
            if (dt.Rows.Count > 0)
            {
                Retorno = true;
                IdRevision = (int)dt.Rows[0]["IdRevision"];
            }
            return Retorno;
        }

        public bool Buscar(String IdRevisio)
        {
            bool mesj = false;
            DataTable dt = new DataTable();
            dt = ConexiondB.BuscarDb("Select *from RevisionPacientes where v=" + IdRevisio);
            if (dt.Rows.Count > 0)
            {


                IdRevision = (int)dt.Rows[0][" IdRevisionPaciente"];
                IdPaciente = (int)dt.Rows[0]["IdPaciente"];
                Fecha = (DateTime)dt.Rows[0]["Fecha"];
                

                mesj = true;


            }
            return mesj;
        }

        public static DataTable Lista(String Campos, String FiltroWhere)
        {
            Conexion c = new Conexion();
            return c.BuscarDb("Select " + Campos + " from " + FiltroWhere);
        }
        public static DataTable ListarF(String fecha1, String fecha2, String Tipo)
        {
            Conexion ConexionDB = new Conexion();
            return ConexionDB.BuscarDb("select * from RevicionPacientes where " + Tipo + " BETWEEN  ('" + fecha1 + "') and ('" + fecha2 + "') ");
        }

    

    }
}
