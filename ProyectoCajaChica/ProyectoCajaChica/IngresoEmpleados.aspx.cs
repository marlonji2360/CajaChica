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
    public partial class IngresoEmpleados : System.Web.UI.Page
    {
        private ModeloEmpleados me;
        protected void Page_Load(object sender, EventArgs e)
        {
            me = new ModeloEmpleados();
        }

        protected void BtnGuardar_Click(object sender, EventArgs e)
        {
            Empleados em = new Empleados();
            em.Nombre = TxtNombre.Text;
            em.Apellido = TxtApellido.Text;
            em.Id_departamento = int.Parse(DropDepto.SelectedItem.Value.ToString());

            me.crearEmpleados(em);

            TxtApellido.Text = "";
            TxtNombre.Text = "";
            TxtNombre.Focus();

            SqlDataSource2.DataBind();
            GridView1.DataBind();
        }
    }
}