using ProyectoCajaChica.Clases.Beans;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ProyectoCajaChica.Clases.Modelos
{
    public class ModeloCaja
    {
        private Conexion c;

        public ModeloCaja()
        {
            c = new Conexion();
        }

        public void crearCaja(Caja c)
        {
            String sql = "EXEC crear_caja '"+c.Nombre_caja+"',"+c.Saldo_inicial+","+c.Id_empleado+"";
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