using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProyectoCajaChica.Clases.Beans
{
    public class Empleados
    {
        private int id_empleado;
        private String nombre;
        private String apellido;
        private int id_departamento;

        public int Id_empleado
        {
            get
            {
                return id_empleado;
            }

            set
            {
                id_empleado = value;
            }
        }

        public string Nombre
        {
            get
            {
                return nombre;
            }

            set
            {
                nombre = value;
            }
        }

        public string Apellido
        {
            get
            {
                return apellido;
            }

            set
            {
                apellido = value;
            }
        }

        public int Id_departamento
        {
            get
            {
                return id_departamento;
            }

            set
            {
                id_departamento = value;
            }
        }
    }
}