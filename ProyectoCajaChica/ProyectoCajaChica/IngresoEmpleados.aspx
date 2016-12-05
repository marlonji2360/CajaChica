<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IngresoEmpleados.aspx.cs" Inherits="ProyectoCajaChica.IngresoEmpleados" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="col-md-6">
            <asp:Label ID="LblNombre" runat="server" Text="Nombre"></asp:Label>
            <asp:TextBox ID="TxtNombre" runat="server" placeholder="Nombre"></asp:TextBox>
            <asp:Label ID="LblApellido" runat="server" Text="Apellido"></asp:Label>
            <asp:TextBox ID="TxtApellido" runat="server" placeholder="Apellido"></asp:TextBox>

            
        </div>
        <div = class ="col-md-6">
            <asp:DropDownList ID="DropDepto" runat="server" DataSourceID="SqlDataSource1" DataTextField="nombre" DataValueField="id_departamento"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CajaChicaConnectionString %>" SelectCommand="SELECT * FROM [Departamento]"></asp:SqlDataSource>
        </div>
        <div = class="col-md-6">
            <asp:Button ID="BtnGuardar" runat="server" Text="Guardar" OnClick="BtnGuardar_Click" />
        </div>
        </br>
        <div = class="col-md-6">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id_empleado" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField HeaderText="Operaciones" ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                    <asp:BoundField DataField="apellido" HeaderText="apellido" SortExpression="apellido" />
                    <asp:BoundField DataField="departamento_id_departamento" HeaderText="Departamento" SortExpression="departamento_id_departamento" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:CajaChicaConnectionString %>" DeleteCommand="DELETE FROM [Empleados] WHERE [id_empleado] = @original_id_empleado AND [nombre] = @original_nombre AND [apellido] = @original_apellido AND [departamento_id_departamento] = @original_departamento_id_departamento" InsertCommand="INSERT INTO [Empleados] ([nombre], [apellido], [departamento_id_departamento]) VALUES (@nombre, @apellido, @departamento_id_departamento)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Empleados]" UpdateCommand="UPDATE [Empleados] SET [nombre] = @nombre, [apellido] = @apellido, [departamento_id_departamento] = @departamento_id_departamento WHERE [id_empleado] = @original_id_empleado AND [nombre] = @original_nombre AND [apellido] = @original_apellido AND [departamento_id_departamento] = @original_departamento_id_departamento">
                <DeleteParameters>
                    <asp:Parameter Name="original_id_empleado" Type="Decimal" />
                    <asp:Parameter Name="original_nombre" Type="String" />
                    <asp:Parameter Name="original_apellido" Type="String" />
                    <asp:Parameter Name="original_departamento_id_departamento" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="nombre" Type="String" />
                    <asp:Parameter Name="apellido" Type="String" />
                    <asp:Parameter Name="departamento_id_departamento" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="nombre" Type="String" />
                    <asp:Parameter Name="apellido" Type="String" />
                    <asp:Parameter Name="departamento_id_departamento" Type="Decimal" />
                    <asp:Parameter Name="original_id_empleado" Type="Decimal" />
                    <asp:Parameter Name="original_nombre" Type="String" />
                    <asp:Parameter Name="original_apellido" Type="String" />
                    <asp:Parameter Name="original_departamento_id_departamento" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
