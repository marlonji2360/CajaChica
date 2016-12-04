using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProyectoCajaChica.Clases.Beans
{
    public class Proveedores
    {
        private int id_proveedor;
        private String nombreProveedor;
        private String nit;

        public int Id_proveedor
        {
            get
            {
                return id_proveedor;
            }

            set
            {
                id_proveedor = value;
            }
        }

        public string NombreProveedor
        {
            get
            {
                return nombreProveedor;
            }

            set
            {
                nombreProveedor = value;
            }
        }

        public string Nit
        {
            get
            {
                return nit;
            }

            set
            {
                nit = value;
            }
        }
    }
}