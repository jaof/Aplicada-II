<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="rRevisionXSistemas.aspx.cs" Inherits="RegistroMedic.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 71px;
            text-align:left;
            height: 41px;
        }
        .auto-style5 {
            height: 42px;
        }
        .auto-style6 {
            height: 42px;
        }
        .auto-style7 {
            height: 42px;
            width: 73px;
        }
        .auto-style8 {
            height: 41px;
            width: 73px;
        }
        .auto-style9 {
            height: 18px;
            margin-top: 18;
        }
        .auto-style10 {
            margin-top: 17;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" href="Bootstrap\css\bootstrap.css">
    <p></p>
    <table style="height: 44px">
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="IdRevision"></asp:Label>
                <td>

            <asp:TextBox ID="TextBoxIdRevision" class="form-control" runat="server" Height="28px" Width="219px"></asp:TextBox>

            
                </td>
            </td>

        </tr>


        <td class="auto-style7">

            
     
            <asp:Label ID="Label1" runat="server" Text="Fecha"></asp:Label>
            
            
        </td>
        <td class="auto-style6">

            <asp:TextBox ID="TbFecha" class="form-control" runat="server" TextMode="Date" Height="28px" Width="219px"></asp:TextBox>

            
        </td>
        <tr>
            <td class="auto-style8">
            <asp:Label ID="Label2" runat="server" Text="Paciente"></asp:Label>
            
            </td>
            <td class="auto-style5">

                <asp:DropDownList ID="DdlPaciente" runat="server" class="form-control" Height="28px">
                </asp:DropDownList>

            
            </td>
        </tr>
    </table>
    <p class="auto-style9">
        &nbsp;&nbsp;&nbsp;
        Sistema&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Estado
    </p>
    <table class="auto-style10">
        <td class="auto-style5">
  
                <asp:DropDownList ID="DdlSistema" class="form-control" runat="server" Height="28px" Width="219px">
        </asp:DropDownList>
            
       </td><td class="auto-style5">
        <asp:TextBox ID="TbEstado" class="form-control" runat="server" Height="28px" Width="219px"></asp:TextBox>
        </td>
        <td class="auto-style4">
          <asp:Button ID="BtnADD" class="btn btn-primary" runat="server" Text="Agregar"  Height="28px" OnClick="BtnADD_Click" />
        </td>
        </table>
    <asp:GridView ID="GvDetalle" runat="server" Width="1154px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
      <h1>

          <asp:Button ID="BtnLimpiar" class="btn btn-primary" runat="server" Text="Limpiar" OnClick="BtnGuardar_Click" />

          <asp:Button ID="BtnGuardar" class="btn btn-primary" runat="server" Text="Guarar" OnClick="BtnGuardar_Click" />

          <asp:Button ID="BtnEliminar" class="btn btn-primary" runat="server" Text="Eliminar" OnClick="BtnGuardar_Click" />
      </h1>

</asp:Content>
