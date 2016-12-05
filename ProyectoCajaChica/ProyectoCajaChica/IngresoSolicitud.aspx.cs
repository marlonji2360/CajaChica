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
    public partial class IngresoSolicitud : System.Web.UI.Page
    {
        private ModeloSolicitud ms;
        protected void Page_Load(object sender, EventArgs e)
        {
            ms = new ModeloSolicitud();
        }

        protected void BtnGuardar_Click(object sender, EventArgs e)
        {
            Solicitud sol = new Solicitud();
            sol.Monto_solicitado = float.Parse(TxtCantidad.Text);
            sol.Id_concepto = int.Parse(DropIdConcepto.SelectedItem.Value.ToString());
            sol.Id_empleado = int.Parse(DropIdEmpleado.SelectedItem.Value.ToString());
            sol.Id_caja = int.Parse(DropIdCaja.SelectedItem.Value.ToString());

            ms.crearSolicitud(sol);

            TxtCantidad.Text = "";
            TxtCantidad.Focus();
        }
    }
}