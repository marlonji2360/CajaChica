using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ProyectoCajaChica.Clases.Modelos
{
    public class Conexion
    {
        public SqlConnection con;
        public SqlCommand sen;
        public SqlDataReader rs;

        public Conexion()
        {
            con = new SqlConnection(
                "Data Source = localhost;"+
                "Initial Catalog = CajaChica;"+
                "Integrated Security = True"                
            );
        }
    }
}