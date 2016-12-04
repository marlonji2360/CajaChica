using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProyectoCajaChica.Clases.Beans
{
    public class Usuario
    {
        private int id_usuario;
        private String nombre_usuario;
        private String password;
        private int empleado_id;

        public int Id_usuario
        {
            get
            {
                return id_usuario;
            }

            set
            {
                id_usuario = value;
            }
        }


        public string Password
        {
            get
            {
                return password;
            }

            set
            {
                password = value;
            }
        }

        public int Empleado_id
        {
            get
            {
                return empleado_id;
            }

            set
            {
                empleado_id = value;
            }
        }

        public string Nombre_usuario
        {
            get
            {
                return nombre_usuario;
            }

            set
            {
                nombre_usuario = value;
            }
        }
    }
}