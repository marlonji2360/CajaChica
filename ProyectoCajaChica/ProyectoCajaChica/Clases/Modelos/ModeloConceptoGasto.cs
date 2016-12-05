using ProyectoCajaChica.Clases.Beans;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ProyectoCajaChica.Clases.Modelos
{
    public class ModeloConceptoGasto
    {
        private Conexion c;

        public ModeloConceptoGasto()
        {
            c = new Conexion();
        }

        public void crearConceptoGasto(ConceptoGasto cg)
        {
            String sql = "EXEC ingreso_conceptogasto '"+cg.NombreGasto+"'";
            ejecutar(sql);
        }

        private void ejecutar(string sql)
        {
            c.con.Open();
            c.sen = new SqlCommand(sql,c.con);
            c.sen.ExecuteNonQuery();
            c.con.Close();
        }
    }
}