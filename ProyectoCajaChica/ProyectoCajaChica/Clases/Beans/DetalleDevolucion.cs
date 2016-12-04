using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProyectoCajaChica.Clases.Beans
{
    public class DetalleDevolucion
    {
        private int id_detalledevolucion;
        private float totalfacturas;
        private int id_factura;
        private int id_ordenDevolucion;

        public int Id_detalledevolucion
        {
            get
            {
                return id_detalledevolucion;
            }

            set
            {
                id_detalledevolucion = value;
            }
        }

        public float Totalfacturas
        {
            get
            {
                return totalfacturas;
            }

            set
            {
                totalfacturas = value;
            }
        }

        public int Id_factura
        {
            get
            {
                return id_factura;
            }

            set
            {
                id_factura = value;
            }
        }

        public int Id_ordenDevolucion
        {
            get
            {
                return id_ordenDevolucion;
            }

            set
            {
                id_ordenDevolucion = value;
            }
        }
    }
}