<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="IngresoConceptoGasto.aspx.cs" Inherits="ProyectoCajaChica.IngresoConceptoGasto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Ingreso Conceptos Gastos</h1>

    <div class="col-md-6">
        <asp:Label ID="LblNombre" runat="server" Text="Nombre Gasto"></asp:Label>
        <asp:TextBox ID="TxtNombre" runat="server" placeholder="Tipo de Gasto"></asp:TextBox>
    </div>
    <div class="col-md-6">
        <asp:Button ID="BtnGuardar" runat="server" Text="Guardar" OnClick="BtnGuardar_Click" />
    </div>
    <div class="col-md-6">
        <asp:GridView ID="TablaConceptoGasto" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id_concepto" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField HeaderText="Operaciones" ShowEditButton="True" ShowDeleteButton="True" />
                <asp:BoundField DataField="nombregasto" HeaderText="Tipo De Gasto" SortExpression="nombregasto" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:CajaChicaConnectionString %>" DeleteCommand="DELETE FROM [Concepto_Gasto] WHERE [id_concepto] = @original_id_concepto AND [nombregasto] = @original_nombregasto" InsertCommand="INSERT INTO [Concepto_Gasto] ([nombregasto]) VALUES (@nombregasto)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Concepto_Gasto]" UpdateCommand="UPDATE [Concepto_Gasto] SET [nombregasto] = @nombregasto WHERE [id_concepto] = @original_id_concepto AND [nombregasto] = @original_nombregasto">
            <DeleteParameters>
                <asp:Parameter Name="original_id_concepto" Type="Decimal" />
                <asp:Parameter Name="original_nombregasto" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="nombregasto" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="nombregasto" Type="String" />
                <asp:Parameter Name="original_id_concepto" Type="Decimal" />
                <asp:Parameter Name="original_nombregasto" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
   
</asp:Content>
