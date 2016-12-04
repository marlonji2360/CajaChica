using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProyectoCajaChica.Clases.Beans
{
    public class Transaccion
    {
        private int id_transaccion;
        private float monto;
        private int id_tipoTransaccion;
        private int id_caja;

        public int Id_transaccion
        {
            get
            {
                return id_transaccion;
            }

            set
            {
                id_transaccion = value;
            }
        }

        public float Monto
        {
            get
            {
                return monto;
            }

            set
            {
                monto = value;
            }
        }

        public int Id_tipoTransaccion
        {
            get
            {
                return id_tipoTransaccion;
            }

            set
            {
                id_tipoTransaccion = value;
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