using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;
using System.Data.SqlClient;
using System.Data;


namespace DAL
{

    public class Conexion
    {

        SqlConnection sqlConexion = new SqlConnection(@"workstation id=RegistroPacientes.mssql.somee.com;packet size=4096;user id=joaf;pwd=Corei5ariel017;data source=RegistroPacientes.mssql.somee.com;persist security info=False;initial catalog=RegistroPacientes");
        /// <summary>
        /// para ejecutar todos los codigos
        /// </summary>
        /// <param name="Codigo"></param>
        /// <returns></returns>
        /// 

        public bool EjecutarDB(string Codigo)
        {
            bool mensaje = false;
            SqlCommand cmd = new SqlCommand();

            try
            {
                sqlConexion.Open(); // abrimos la conexion

                cmd.Connection = sqlConexion; //asignamos la conexion
                cmd.CommandText = Codigo;     //asignamos el comando
                cmd.ExecuteNonQuery(); // ejecutamos el comando

            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                mensaje = true;
                sqlConexion.Close(); //cerramos la conexion


            }
            return mensaje;
        }

        /// <summary>
        /// para buscar datos en la base de datos
        /// </summary>
        /// <param name="comando"></param>
        /// <returns></returns>
        public DataTable BuscarDb(string comando)
        {
            SqlDataAdapter adp;
            DataTable dt = new DataTable();
            try
            {
                sqlConexion.Open(); // abrimos la conexion
                adp = new SqlDataAdapter(comando, sqlConexion);

                adp.Fill(dt);
            }
            catch (Exception)
            {

                throw;
            }
            finally
            {
                sqlConexion.Close(); //cerramos la conexion

            }
            return dt;
        }



    }
}