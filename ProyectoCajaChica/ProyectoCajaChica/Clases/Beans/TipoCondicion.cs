using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProyectoCajaChica.Clases.Beans
{
    public class TipoCondicion
    {
        private int id_condicion;
        private float montoMaximo;
        private string condicion;
        private int id_conceptoFactura;

        public int Id_condicion
        {
            get
            {
                return id_condicion;
            }

            set
            {
                id_condicion = value;
            }
        }

        public float MontoMaximo
        {
            get
            {
                return montoMaximo;
            }

            set
            {
                montoMaximo = value;
            }
        }

        public string Condicion
        {
            get
            {
                return condicion;
            }

            set
            {
                condicion = value;
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