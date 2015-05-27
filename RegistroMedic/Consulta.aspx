<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Consulta.aspx.cs" Inherits="RegistroMedic.Consulta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 722px;
            height: 55px;
        }
        .auto-style7 {
            color: #0000FF;
        }
        .auto-style9 {
            width: 145px;
            text-align: center;
            height: 28px;
        }
        .auto-style13 {
            width: 109px;
            text-align: center;
            height: 28px;
        }
        .auto-style14 {
            width: 149px;
            height: 28px;
        }
        .auto-style15 {
            height: 28px;
        }
        .auto-style16 {
            width: 59px;
            height: 28px;
        }
        .auto-style17 {
            width: 149px;
            height: 31px;
        }
        .auto-style18 {
            width: 59px;
            height: 31px;
        }
        .auto-style19 {
            width: 834px;
            height: 31px;
        }
    </style> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" href="Bootstrap\css\bootstrap.css" >
    <span class="auto-style7"><strong><em style="text-align: center">Consulta De Pacientes</em></strong></span><table>

        <tr>
            <td class="auto-style6">

    <table>

        <tr>
            <td class="auto-style17">

                Filtar Por

            </td>
            <td class="auto-style19" colspan="3">

                <asp:TextBox ID="TextBoxFiltro" class="form-control" runat="server" Width="286px" Height="27px"></asp:TextBox>

            </td>
            <td class="auto-style18">

                <asp:Button ID="btnBuscar"  class="btn btn-primary" runat="server" Text="Buscar" OnClick="Button1_Click1" Height="28px" />

            </td>

        </tr>

        <tr>
            <td class="auto-style14">

                <asp:DropDownList ID="TipoDropDownList" class="form-control" runat="server" Height="28px" Width="143px">
                    <asp:ListItem>Nombre</asp:ListItem>
                    <asp:ListItem>Apellido</asp:ListItem>
                    <asp:ListItem>Cedula</asp:ListItem>
                    <asp:ListItem Value="FechaIng">Fecha Ingreso</asp:ListItem>
                    <asp:ListItem Value="FechaNac">Fecha Nacimiento</asp:ListItem>
                </asp:DropDownList>

            </td>
            <td class="auto-style13">

                Desde

            </td>

            <td class="auto-style9">

                <asp:TextBox ID="TextBoxDesde" class="form-control" runat="server" Width="208px" TextMode="Date" Height="28px"></asp:TextBox>

            </td>

            <td class="auto-style15">

                Hasta</td>

            <td class="auto-style16">

                <asp:TextBox ID="TextBoxHasta" class="form-control" runat="server" Width="172px" TextMode="Date" Height="28px"></asp:TextBox>

            </td>

        </tr>

        </table>
                <table>

        </table>
    
        </tr>

        </table>

            <asp:GridView ID="VistaGridView" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:HyperLinkField DataNavigateUrlFields="IdPaciente" DataNavigateUrlFormatString="~/rPacientes.aspx?IdPaciente={0}" Text="Editar" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>

            </td>
            <td class="auto-style5"></td>
    
    </asp:Content>
