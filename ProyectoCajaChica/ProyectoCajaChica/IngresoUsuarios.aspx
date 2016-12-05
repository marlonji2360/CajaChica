<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IngresoUsuarios.aspx.cs" Inherits="ProyectoCajaChica.IngresoUsuarios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="col-md-6">
            <asp:Label ID="LblUsuario" runat="server" Text="Usuario"></asp:Label>
            <asp:TextBox ID="TxtUsuario" runat="server" placeholder="Usuario"></asp:TextBox>
            <asp:Label ID="LblPassword" runat="server" Text="Password"></asp:Label>
            <asp:TextBox ID="TxtPassword" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>


        </div>
        <div class="col-md-6">
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="nombre" DataValueField="id_empleado"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CajaChicaConnectionString %>" SelectCommand="SELECT * FROM [Empleados]"></asp:SqlDataSource>
        </div>
        <div class="col-md-6">
            <asp:Button ID="btnGuardar" runat="server" Text="Guardar" OnClick="btnGuardar_Click" />
        </di>
            </br>
        <div class="col-md-6">
            <asp:GridView ID="TablaUsuarios" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id_usuario" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField HeaderText="Operaciones" ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="id_usuario" HeaderText="id_usuario" InsertVisible="False" ReadOnly="True" SortExpression="id_usuario" />
                    <asp:BoundField DataField="usuario" HeaderText="usuario" SortExpression="usuario" />
                    <asp:BoundField DataField="empleados_id_empleado" HeaderText="Codigo Empleado" SortExpression="id_usuario" />
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
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:CajaChicaConnectionString %>" DeleteCommand="DELETE FROM [Usuario] WHERE [id_usuario] = @original_id_usuario AND [usuario] = @original_usuario AND [password] = @original_password AND [empleados_id_empleado] = @original_empleados_id_empleado" InsertCommand="INSERT INTO [Usuario] ([usuario], [password], [empleados_id_empleado]) VALUES (@usuario, @password, @empleados_id_empleado)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Usuario]" UpdateCommand="UPDATE [Usuario] SET [usuario] = @usuario, [password] = @password, [empleados_id_empleado] = @empleados_id_empleado WHERE [id_usuario] = @original_id_usuario AND [usuario] = @original_usuario AND [password] = @original_password AND [empleados_id_empleado] = @original_empleados_id_empleado">
                <DeleteParameters>
                    <asp:Parameter Name="original_id_usuario" Type="Decimal" />
                    <asp:Parameter Name="original_usuario" Type="String" />
                    <asp:Parameter Name="original_password" Type="String" />
                    <asp:Parameter Name="original_empleados_id_empleado" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="usuario" Type="String" />
                    <asp:Parameter Name="password" Type="String" />
                    <asp:Parameter Name="empleados_id_empleado" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="usuario" Type="String" />
                    <asp:Parameter Name="password" Type="String" />
                    <asp:Parameter Name="empleados_id_empleado" Type="Decimal" />
                    <asp:Parameter Name="original_id_usuario" Type="Decimal" />
                    <asp:Parameter Name="original_usuario" Type="String" />
                    <asp:Parameter Name="original_password" Type="String" />
                    <asp:Parameter Name="original_empleados_id_empleado" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
