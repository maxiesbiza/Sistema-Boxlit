<%@ Page Title="" Language="C#" MasterPageFile="~/plantillas/PanelAdmin.Master" AutoEventWireup="true" CodeBehind="Proveedores.aspx.cs" Inherits="Boxlit.Proveedores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        .estilo{
            margin: 20px 20px 0px 20px;
        }
        .center{
            margin:auto;
            width: 100%;
            text-align:center;
            background-color:cornsilk;
            margin-top: 20px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="regionTitulo" runat="server">
    &nbsp;&nbsp;
    Proveedores
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="regionContenido" runat="server">
    <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">Lista de Proveedores</h6>
                </div>
            <div class="card-body">
              <div class="table-responsive">
    <form role="form" runat="server">
    <div class ="center">
        <asp:Button ID="btnMostrarPanelNuevoProv" runat="server" Text="Agregar un nuevo proveedor" OnClick="btnMostrarPanelNuevoProv_Click" />
        <asp:Panel ID="PanelNuevoProveedor" runat="server" Visible="false">
            Nombre de la Empresa Proveedora<br />
            <asp:TextBox ID="txtNombreProv"  runat="server" ></asp:TextBox><br />
            <br />
            Nombre del contacto de la empresa<br />
            <asp:TextBox ID="txtContactoNombre" runat="server"></asp:TextBox><br />
            <br />
            CUIT<br />
            <asp:TextBox ID="txtCUIT" runat="server"></asp:TextBox><br />
            <br />
            Pais<br />
            <asp:TextBox ID="txtPais" runat="server"></asp:TextBox><br />
            <br />
            Ciudad<br />
            <asp:TextBox ID="txtCiudad" runat="server"></asp:TextBox><br />
            <br />
            Telefono<br />
            <asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox><br />
            <br />
            <asp:Button ID="btnMinimizar" runat="server" Text="Minimizar" OnClick="btnMinimizar_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnAgregar" runat="server" Text="Agregar" OnClick="btnAgregar_Click" ValidationGroup="registro"/>

        
        </asp:Panel>

    </div>
    

    <div class="center">
        <asp:GridView ID="GridViewProveedores" runat="server" OnSelectedIndexChanged="GridViewProveedores_SelectedIndexChanged" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="ProveedorID" HeaderText="ProvID" />
                <asp:BoundField DataField="ProveedorNombre" HeaderText="Nombre Proveedor" />
                <asp:BoundField DataField="ContactoNombre" HeaderText="Nombre Contacto" />
                <asp:BoundField DataField="CUIT" HeaderText="CUIT" />
                <asp:BoundField DataField="Pais" HeaderText="Pais" />
                <asp:BoundField DataField="Ciudad" HeaderText="Ciudad" />
                <asp:BoundField DataField="Telefono" HeaderText="Telefono" />
                <asp:ButtonField CommandName="Select" Text="Seleccionar" ButtonType="Button" />
            </Columns>
        </asp:GridView>
    </div>
    
    <div class="center">
        <asp:Panel ID="PanelBMProveedor" runat="server" Visible="false">
            <h3>Modifica/Eliminar Proveedor</h3><br />
            ID de Proveedor<br />
            <asp:TextBox ID="txtModProvID" runat="server" Enabled="False" Width="107px"></asp:TextBox><br />
            <br />
            Nombre de la Empresa Proveedora<br />
            <br />
            <asp:TextBox ID="txtModNombreProv" runat="server"></asp:TextBox><br />
            <br />
            Nombre del contacto de la empresa<br />
            <asp:TextBox ID="txtModContactoNombre" runat="server"></asp:TextBox><br />
            <br />
            CUIT<br />
            <asp:TextBox ID="txtModCUIT" runat="server"></asp:TextBox><br />
            <br />
            Pais<br />
            <asp:TextBox ID="txtModPais" runat="server"></asp:TextBox><br />
            <br />
            Ciudad<br />
            <asp:TextBox ID="txtModCiudad" runat="server"></asp:TextBox><br />
            <br />
            Telefono<br />
            <asp:TextBox ID="txtModTelefono" runat="server"></asp:TextBox><br />
            <br />
            <asp:Button ID="btnMinim" runat="server" Text="Minimizar" OnClick="btnMinim_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnModificar" runat="server" Text="Modificar" OnClick="btnModificar_Click" ValidationGroup="bm"/>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" OnClick="btnEliminar_Click" />
        </asp:Panel>


    </div>
        </form>
    </div>
    </div>
     </div>


</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="regionScript" runat="server">
</asp:Content>
