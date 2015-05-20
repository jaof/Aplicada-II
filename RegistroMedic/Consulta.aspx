<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Consulta.aspx.cs" Inherits="RegistroMedic.Consulta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 199px;
            }
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
        }
        .auto-style11 {
            width: 149px;
        }
        .auto-style12 {
            width: 59px;
        }
        .auto-style13 {
            width: 109px;
            text-align: center;
        }
    </style> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <span class="auto-style7"><strong><em style="text-align: center">Consulta De Pacientes</em></strong></span><table>

        <tr>
            <td class="auto-style6">

    <table>

        <tr>
            <td class="auto-style11">

                Filtar Por

            </td>
            <td class="auto-style3" colspan="3">

                <asp:TextBox ID="TextBoxFiltro" runat="server" Width="286px"></asp:TextBox>

            </td>
            <td class="auto-style12">

                <asp:Button ID="btnBuscar" runat="server" Text="Buscar" OnClick="Button1_Click1" />

            </td>

        </tr>

        <tr>
            <td class="auto-style11">

                <asp:DropDownList ID="TipoDropDownList" runat="server" Height="24px" Width="143px">
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

                <asp:TextBox ID="TextBoxDesde" runat="server" Width="134px" TextMode="Date"></asp:TextBox>

            </td>

            <td>

                Hasta</td>

            <td class="auto-style12">

                <asp:TextBox ID="TextBoxHasta" runat="server" Width="134px" TextMode="Date"></asp:TextBox>

            </td>

        </tr>

        </table>
                <table>

        <tr>
           

            </tr>

        </table>
    
        </tr>

        </table>

            <asp:GridView ID="VistaGridView" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="1087px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:HyperLinkField DataNavigateUrlFields="IdPaciente" DataNavigateUrlFormatString="~/Web.aspx?IdPaciente={0}" Text="Editar" />
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
