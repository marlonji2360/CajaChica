using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProyectoCajaChica.Clases.Beans
{
    public class ConceptoFactura
    {
        private int id_conceptoFactura;
        private String tipoConcepto;

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

        public string TipoConcepto
        {
            get
            {
                return tipoConcepto;
            }

            set
            {
                tipoConcepto = value;
            }
        }
    }
}