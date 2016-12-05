using ProyectoCajaChica.Clases.Beans;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ProyectoCajaChica.Clases.Modelos
{
    public class ModeloSolicitud
    {
        private Conexion c;

        public ModeloSolicitud()
        {
            c = new Conexion();
        }

        public void crearSolicitud(Solicitud s)
        {
            String sql = "EXEC ingreso_solicitud "+s.Monto_solicitado+","+s.Id_concepto+","+s.Id_empleado+","+s.Id_caja+"";
            ejecutar(sql);
        }

        private void ejecutar(string sql)
        {
            c.con.Open();
            c.sen = new SqlCommand(sql, c.con);
            c.sen.ExecuteNonQuery();
            c.con.Close();
        }
    }
}