<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="IngresoSolicitud.aspx.cs" Inherits="ProyectoCajaChica.IngresoSolicitud" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <h1>Ingreso Solicitud</h1>

    <div class="col-md-6">
        <asp:Label ID="lblMonto" runat="server" Text="Cantidad Solicitada"></asp:Label>
        <asp:TextBox ID="TxtCantidad" runat="server" placeholder="Cantidad"></asp:TextBox>
    </div>
    <div class="col-md-6">
         <asp:Label ID="Label1" runat="server" Text="Concepto de Gasto"></asp:Label>
        <asp:DropDownList ID="DropIdConcepto" runat="server" DataSourceID="SqlDataSource1" DataTextField="nombregasto" DataValueField="id_concepto"></asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CajaChicaConnectionString %>" SelectCommand="SELECT * FROM [Concepto_Gasto]"></asp:SqlDataSource>
    </div>
    <div class="col-md-6">
         <asp:Label ID="Label2" runat="server" Text="Persona Quien Solicita"></asp:Label>
        <asp:DropDownList ID="DropIdEmpleado" runat="server" DataSourceID="SqlDataSource2" DataTextField="nombre" DataValueField="id_empleado"></asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CajaChicaConnectionString %>" SelectCommand="SELECT * FROM [Empleados]"></asp:SqlDataSource>
    </div>
    <div class="col-md-6">
         <asp:Label ID="Label3" runat="server" Text="Caja a Solicitar"></asp:Label>
        <asp:DropDownList ID="DropIdCaja" runat="server" DataSourceID="SqlDataSource3" DataTextField="nombre_caja" DataValueField="id_caja"></asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CajaChicaConnectionString %>" SelectCommand="SELECT * FROM [Caja]"></asp:SqlDataSource>
    </div>
    <div class="col-md-6">
        <asp:Button ID="BtnGuardar" runat="server" Text="Guardar" OnClick="BtnGuardar_Click" />
    </div>
    </form>
</asp:Content>
