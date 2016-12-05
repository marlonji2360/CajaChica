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
    public partial class IngresoDepartamentos : System.Web.UI.Page
    {
        private ModeloDepartamento md;
        protected void Page_Load(object sender, EventArgs e)
        {
            md = new ModeloDepartamento();
        }

        protected void BtnGuardar_Click(object sender, EventArgs e)
        {
            Departamento d = new Departamento();
            d.Nombre = TxtDepto.Text;
            md.crearDepartamento(d);

            TxtDepto.Text = "";
            TxtDepto.Focus();

            SqlDataSource1.DataBind();
            TablaDepto.DataBind();
        }
    }
}