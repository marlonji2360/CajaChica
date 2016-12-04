using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProyectoCajaChica.Clases.Beans
{
    public class Factura
    {
        private int id_factura;
        private int numeroFactura;
        private float totalfactura;
        private DateTime fecha;
        private String descripcion;
        private int id_proveedor;
        private int id_conceptoFactura;

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

        public int NumeroFactura
        {
            get
            {
                return numeroFactura;
            }

            set
            {
                numeroFactura = value;
            }
        }

        public float Totalfactura
        {
            get
            {
                return totalfactura;
            }

            set
            {
                totalfactura = value;
            }
        }

        public DateTime Fecha
        {
            get
            {
                return fecha;
            }

            set
            {
                fecha = value;
            }
        }

        public string Descripcion
        {
            get
            {
                return descripcion;
            }

            set
            {
                descripcion = value;
            }
        }

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

        public int Id_conceptoFactura
        {
            get
            {
                return id_conceptoFactura;
            }

            set
            {
                id_conceptoFactura = value;
            }
        }
    }
}