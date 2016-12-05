<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IngresarCaja.aspx.cs" Inherits="ProyectoCajaChica.IngresarCaja" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="col-md-6">
            <asp:Label ID="LblNombre" runat="server" Text="Nombre Caja"></asp:Label>
            <asp:TextBox ID="TxtNombre" runat="server" placeholder="Nombre Caja"></asp:TextBox>
            <asp:Label ID="LblSaldoInicial" runat="server" Text="Saldo Inicial"></asp:Label>
            <asp:TextBox ID="TxtSaldoInicial" runat="server" placeholder="Saldo Inicial"></asp:TextBox>
            <asp:Button ID="BtnGuardar" runat="server" Text="Guardar" OnClick="BtnGuardar_Click" />
        </div>
        <div class="col-md6">
            <asp:DropDownList ID="DropEmpleado" runat="server" DataSourceID="SqlDataSource1" DataTextField="nombre" DataValueField="id_empleado"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CajaChicaConnectionString %>" SelectCommand="SELECT * FROM [Empleados]"></asp:SqlDataSource>
        </div>
    </div>
    </form>
</body>
</html>
