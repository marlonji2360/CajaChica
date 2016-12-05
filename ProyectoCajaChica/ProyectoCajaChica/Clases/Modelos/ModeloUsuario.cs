using ProyectoCajaChica.Clases.Beans;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ProyectoCajaChica.Clases.Modelos
{
    public class ModeloUsuario
    {
        private Conexion c;

        public ModeloUsuario()
        {
            c = new Conexion();
        }

        public void crearUsuario(Usuario u)
        {
            String sql = "EXEC ingreso_usuario '"+u.Nombre_usuario+"','"+u.Password+"',"+u.Empleado_id+"";
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