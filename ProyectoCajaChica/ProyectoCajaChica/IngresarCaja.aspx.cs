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
    public partial class IngresarCaja : System.Web.UI.Page
    {
        private ModeloCaja mc;
        protected void Page_Load(object sender, EventArgs e)
        {
            mc = new ModeloCaja();
        }

        protected void BtnGuardar_Click(object sender, EventArgs e)
        {
            Caja ca = new Caja();
            ca.Nombre_caja = TxtNombre.Text;
            ca.Saldo_inicial = float.Parse(TxtSaldoInicial.Text);
            ca.Id_empleado = int.Parse(DropEmpleado.SelectedItem.Value.ToString());

            mc.crearCaja(ca);

            TxtNombre.Text = "";
            TxtSaldoInicial.Text = "";

            SqlDataSource1.DataBind();
            DropEmpleado.DataBind();

        }
    }
}