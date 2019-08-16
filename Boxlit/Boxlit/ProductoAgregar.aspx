<%@ Page Title="" Language="C#" MasterPageFile="~/plantillas/PanelAdmin.Master" AutoEventWireup="true" CodeBehind="ProductoAgregar.aspx.cs" Inherits="Boxlit.ProductoAgregar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="regionTitulo" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="regionContenido" runat="server">
    <div class="row">

        <div class="col-lg-6">
            <!-- Circle Buttons -->
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Agregar Nuevo Producto</h6>
                </div>
                <div class="card-body">

                    <div class="col-sm-6 mb-3 mb-sm-0">
                    <input type="text" class="form-control form-control-user" id="nombreproducto" placeholder="Nombre del Producto">                    
                  </div>
                    &nbsp;
                    <div class="col-sm-6 mb-3 mb-sm-0">
                    <input type="text" class="form-control form-control-user" id="preciounitario" placeholder="Precio Unitario">                    
                  </div>
                    &nbsp;
                    <!-- dropdown -->
                    <div class="dropdown no-arrow mb-4">
                    &nbsp;<button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      Seleccionar Categoria
                    </button>
                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                      <a class="dropdown-item" href="#">Categoria 1</a>
                      <a class="dropdown-item" href="#">Categoria 2</a>
                      <a class="dropdown-item" href="#">Categoria 3</a>
                    </div>


                  </div>

                    <!-- boton confirmar -->

                    <a href="#" class="btn btn-success btn-icon-split">
                    <span class="icon text-white-50">
                      <i class="fas fa-check"></i>
                    </span>
                    <span class="text">Confirmar</span>
                  </a>
                    <!-- boton cancelar -->
                    <a href="#" class="btn btn-danger btn-icon-split">
                    <span class="icon text-white-50">
                      <i class="fas fa-trash"></i>
                    </span>
                    <span class="text">Cancelar</span>
                  </a>



                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="regionScript" runat="server">


</asp:Content>
