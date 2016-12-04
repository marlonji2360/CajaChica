using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProyectoCajaChica.Clases.Beans
{
    public class Departamento
    {
        private int id_departamento;
        private String nombre;

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
    }
}