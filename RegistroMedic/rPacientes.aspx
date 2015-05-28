<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="rPacientes.aspx.cs" Inherits="RegistroMedic.Web" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link  rel="stylesheet" type="text/scss" href="Margenes.scss" media="screen">
    <style type="text/css">
        .auto-style6 {
        width: 130px;
        color: #FF0000;
    }
        .auto-style35 {
            width: 541px;
            height: 102px;
        }
        .auto-style36 {
            width: 228px;
            height: 102px;
        }
        .auto-style37 {
            width: 919px;
            height: 102px;
        }
        .auto-style41 {
        width: 38%;
        height: 370px;
    }
    .auto-style57 {
        width: 541px;
        height: 41px;
    }
    .auto-style58 {
        width: 228px;
        height: 41px;
    }
    .auto-style59 {
        width: 919px;
        height: 41px;
    }
    .auto-style60 {
        width: 541px;
        height: 42px;
    }
    .auto-style61 {
        width: 228px;
        height: 42px;
    }
    .auto-style62 {
        width: 919px;
        height: 42px;
    }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" href="Bootstrap\css\bootstrap.css">
    <link rel ="stylesheet" href="..\Scripts\toastr.min.js"></link>
        <table>
        </table>
    
    <table table" height: 375px;" class="auto-style41">
       
            <tr>
                <td class="auto-style57">IdPaciente</td>
                <td class="auto-style58">
                    <asp:TextBox ID="TextBoxIdPaciente" runat="server" class="form-control" Height="28px" Width="219px" ></asp:TextBox>
                </td>
                <td class="auto-style59">
       <asp:Button ID="btnConsulta" class="btn btn-primary" runat="server" Text="Consulta" CausesValidation="False" OnClick="btnConsulta_Click" PostBackUrl="~/Consulta.aspx"  />
                </td>
            </tr>
            <tr>
                <td class="auto-style57">Nombres</td>
                <td class="auto-style58">
                    <asp:TextBox ID="TextBoxNombre" runat="server" class="form-control" Width="219px" Height="28px"></asp:TextBox>
                </td>
                <td class="auto-style59">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxNombre" CssClass="auto-style6" ErrorMessage="Nombre No Puede Estar Vacio">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style57">Apellidos</td>
                <td class="auto-style58">
                    <asp:TextBox ID="TextBoxApellido" runat="server" class="form-control" Width="219px" O Height="28px"></asp:TextBox>
                </td>
                <td class="auto-style59">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxApellido" CssClass="auto-style6" ErrorMessage="Apellido No Puede Estar Vacio" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style57">Direccion</td>
                <td class="auto-style58">
                    <asp:TextBox ID="TextBoxDireccion" runat="server" class="form-control" Width="219px" Height="28px"></asp:TextBox>
                </td>
                <td class="auto-style59">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxDireccion" CssClass="auto-style6" ErrorMessage="Direccion No Puede Estar Vacio">*</asp:RequiredFieldValidator>
                &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style57">Telefono</td>
                <td class="auto-style58">
                    <asp:TextBox ID="TextBoxTelefono" runat="server" class="form-control" Width="219px" Height="28px"></asp:TextBox>
                </td>
                <td class="auto-style59">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBoxTelefono" CssClass="auto-style6" ErrorMessage="Telefono No Puede Estar Vacio">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style57">Celular</td>
                <td class="auto-style58">
                    <asp:TextBox ID="TextBoxCelular" class="form-control" runat="server" Width="219px" Height="28px"></asp:TextBox>
                </td>
                <td class="auto-style59">
                    </td>
            </tr>
            <tr>
                <td class="auto-style57">Cedula</td>
                <td class="auto-style58">
                    <asp:TextBox ID="TextBoxCedula" class="form-control" runat="server" Width="219px" Height="28px"></asp:TextBox>
                </td>
                <td class="auto-style59">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBoxCedula" CssClass="auto-style6" ErrorMessage="Cedula No Puede Estar Vacio">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style57">Fecha Nacimiento</td>
                <td class="auto-style58">
                    <asp:TextBox ID="TextBoxFechaNac" class="form-control" runat="server" Width="219px" TextMode="Date" Height="29px"></asp:TextBox>
                </td>
                <td class="auto-style59">
                    </td>
            </tr>
            <tr>
                <td class="auto-style60">Fecha Salida</td>
                <td class="auto-style61">
                    <asp:TextBox ID="TextBoxFechaIng" class="form-control" runat="server" Width="219px" TextMode="Date" Height="28px"></asp:TextBox>
                </td>
                <td class="auto-style62">
                    </td>
            </tr>
            <tr>
                <td class="auto-style57">Sexo</td>
                <td class="auto-style58">
                    <asp:DropDownList ID="DropDownListSexo" class="form-control" runat="server" Width="133px" Height="28px">
                        <asp:ListItem Value="0">Femenino</asp:ListItem>
                        <asp:ListItem Value="1">Masculino</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style59">
                    </td>
            </tr>
            <tr>
                <td class="auto-style35">Ocupacion</td>
                <td class="auto-style36">
                    <asp:TextBox ID="TextBoxOcupacion" runat="server" class="form-control" Width="219px"></asp:TextBox>
                </td>
                <td class="auto-style37">
                 
                </td>
            </tr>
        </table>
    
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" style="color: #FF0000" />
       

        <asp:Button ID="btnLimpiar" class="btn btn-primary" runat="server" Text="Limpiar" OnClick="btnLimpiar_Click" />
       <asp:Button ID="btnGuardar" class="btn btn-primary" runat="server" Text="Guardar" OnClick="btnGuardar_Click" />
        <asp:Button ID="btnEliminar" class="btn btn-primary" runat="server" Text="Eliminar" OnClick="btnEliminar_Click" Visible="False" />
       

     
     
</asp:Content>
