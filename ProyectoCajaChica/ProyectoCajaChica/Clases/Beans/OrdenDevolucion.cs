using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProyectoCajaChica.Clases.Beans
{
    public class OrdenDevolucion
    {
        private int id_devolucion;
        private DateTime fecha;
        private float totalefectivo;
        private float totalfacturas;
        private float total;
        private int id_caja;
        private int id_solicitud;

        public int Id_devolucion
        {
            get
            {
                return id_devolucion;
            }

            set
            {
                id_devolucion = value;
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

        public float Totalefectivo
        {
            get
            {
                return totalefectivo;
            }

            set
            {
                totalefectivo = value;
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

        public float Total
        {
            get
            {
                return total;
            }

            set
            {
                total = value;
            }
        }

        
        public int Id_solicitud
        {
            get
            {
                return id_solicitud;
            }

            set
            {
                id_solicitud = value;
            }
        }

        public int Id_caja
        {
            get
            {
                return id_caja;
            }

            set
            {
                id_caja = value;
            }
        }
    }
}