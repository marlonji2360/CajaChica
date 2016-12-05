using ProyectoCajaChica.Clases.Beans;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ProyectoCajaChica.Clases.Modelos
{
    public class ModeloEmpleados
    {
        private Conexion c;

        public ModeloEmpleados()
        {
            c = new Conexion();
        }

        public void crearEmpleados(Empleados e)
        {
            String sql = "EXEC insertar_empleados '" + e.Nombre + "','" + e.Apellido + "'," + e.Id_departamento + ";";
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