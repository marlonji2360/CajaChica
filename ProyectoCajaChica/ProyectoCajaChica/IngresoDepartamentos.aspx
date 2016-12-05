<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IngresoDepartamentos.aspx.cs" Inherits="ProyectoCajaChica.IngresoDepartamentos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
     <h1>INGRESO DEPARTAMENTOS</h1>
    <form id="form1" runat="server">
        <div class="col-md-6">
            <asp:Label ID="LblDepto" runat="server" Text="Departamento"></asp:Label>
            <asp:TextBox ID="TxtDepto" runat="server" placeholder="Departamento"></asp:TextBox>
            <asp:Button ID="BtnGuardar" runat="server" Text="Guardar" OnClick="BtnGuardar_Click" />
        </div>
        </br>
        <div class="col-md-6">
            <asp:GridView ID="TablaDepto" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id_departamento" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField HeaderText="Operaciones" ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="nombre" HeaderText="Departamento" SortExpression="nombre" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:CajaChicaConnectionString %>" DeleteCommand="DELETE FROM [Departamento] WHERE [id_departamento] = @original_id_departamento AND [nombre] = @original_nombre" InsertCommand="INSERT INTO [Departamento] ([nombre]) VALUES (@nombre)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Departamento]" UpdateCommand="UPDATE [Departamento] SET [nombre] = @nombre WHERE [id_departamento] = @original_id_departamento AND [nombre] = @original_nombre">
                <DeleteParameters>
                    <asp:Parameter Name="original_id_departamento" Type="Decimal" />
                    <asp:Parameter Name="original_nombre" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="nombre" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="nombre" Type="String" />
                    <asp:Parameter Name="original_id_departamento" Type="Decimal" />
                    <asp:Parameter Name="original_nombre" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
