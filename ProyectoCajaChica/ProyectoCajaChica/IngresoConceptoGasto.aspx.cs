using ProyectoCajaChica.Clases.Beans;
using ProyectoCajaChica.Clases.Modelos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoCajaChica
{
    public partial class IngresoConceptoGasto : System.Web.UI.Page
    {
        private ModeloConceptoGasto mcg;
        protected void Page_Load(object sender, EventArgs e)
        {
            mcg = new ModeloConceptoGasto();
        }

        protected void BtnGuardar_Click(object sender, EventArgs e)
        {
            ConceptoGasto cg = new ConceptoGasto();
            cg.NombreGasto = TxtNombre.Text;

            mcg.crearConceptoGasto(cg);

            TxtNombre.Text = "";
            TxtNombre.Focus();
            SqlDataSource1.DataBind();
            TablaConceptoGasto.DataBind();
        }
    }
}