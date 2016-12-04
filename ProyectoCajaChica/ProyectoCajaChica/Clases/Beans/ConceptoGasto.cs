using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProyectoCajaChica.Clases.Beans
{
    public class ConceptoGasto
    {
        private int id_conceptoGasto;
        private String nombreGasto;

        public int Id_conceptoGasto
        {
            get
            {
                return id_conceptoGasto;
            }

            set
            {
                id_conceptoGasto = value;
            }
        }

        public string NombreGasto
        {
            get
            {
                return nombreGasto;
            }

            set
            {
                nombreGasto = value;
            }
        }
    }
}