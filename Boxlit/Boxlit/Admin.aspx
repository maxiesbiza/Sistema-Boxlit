<%@ Page Title="Panel de Administrador" Language="C#" MasterPageFile="~/plantillas/PanelAdmin.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Boxlit.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<body>
    <!--Script para no poder volver atras la pagina-->
    <script Language="JavaScript">
    if(history.forward(1)){
    history.replace(history.forward(1));
    }
    </script>
</body> 
</asp:Content>
