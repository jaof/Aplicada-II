<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="rSistemaFisiologico.aspx.cs" Inherits="RegistroMedic.rSistemaFisiologico" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 84px;
        }
        .auto-style7 {
            width: 295px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" href="Bootstrap\css\bootstrap.css">
  <p></p>
    <table class="auto-style7">
      <td class="auto-style6">
          <asp:Label ID="Label1" runat="server" Text="IdSistema"></asp:Label>
          <td>
              <asp:TextBox ID="TbIdSistema" class="form-control" runat="server"></asp:TextBox>
          </td>
      </td>
      <tr>
      <td class="auto-style6">
          <asp:Label ID="Label2" runat="server" Text="Sistema"></asp:Label>
          <td>
              <asp:TextBox ID="TbSistema" class="form-control"  runat="server"></asp:TextBox>
          </td>
      </td>
          </tr>
  </table>
           

        <asp:Button ID="btnLimpiar" class="btn btn-primary" runat="server" Text="Limpiar"  />
       <asp:Button ID="btnGuardar" class="btn btn-primary" runat="server" Text="Guardar" OnClick="btnGuardar_Click" />
        <asp:Button ID="btnEliminar" class="btn btn-primary" runat="server" Text="Eliminar" OnClick="btnEliminar_Click" Visible="False" />
       

     
     

</asp:Content>
