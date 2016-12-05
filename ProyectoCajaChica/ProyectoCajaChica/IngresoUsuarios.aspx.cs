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
    public partial class IngresoUsuarios : System.Web.UI.Page
    {
        private ModeloUsuario mu;
        protected void Page_Load(object sender, EventArgs e)
        {
            mu = new ModeloUsuario();
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            Usuario us = new Usuario();

            us.Nombre_usuario = TxtUsuario.Text;
            us.Password = TxtPassword.Text;
            us.Empleado_id = int.Parse(DropDownList1.SelectedItem.Value.ToString());

            mu.crearUsuario(us);

            TxtPassword.Text = "";
            TxtUsuario.Text = "";

            SqlDataSource1.DataBind();
            TablaUsuarios.DataBind();
        }
    }
}