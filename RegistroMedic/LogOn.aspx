<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogOn.aspx.cs" Inherits="RegistroMedic.LogOn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<%--<head runat="server">z
    <link href="Bootstrap/css/Margenes.css" rel="stylesheet" />
    
    <style type="text/css">
        .auto-style1 {
            width: 50%;
            margin-left: 287px;
        }
        .auto-style2 {
            margin-left: 120px;
        }
        .auto-style3 {
            margin-left: 249px;
        }
    </style>
    
    <form id="log" runat="server" class="auto-style3">
        <div id="log" class="auto-style1">
  <h3 class="auto-style2">
      Inicio de Cesion</h3>
    <table>
      <tr>
        <td>
            Usuario:</td>
        <td>
          <asp:TextBox ID="UserEmail" runat="server" /></td>
        <td>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
            ControlToValidate="UserEmail"
            Display="Dynamic" 
            ErrorMessage="Cannot be empty." 
            runat="server" />
        </td>
      </tr>
      <tr>
        <td>
          Password:</td>
        <td>
          <asp:TextBox ID="UserPass" TextMode="Password" 
            runat="server" />
        </td>
        <td>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
            ControlToValidate="UserPass"
            ErrorMessage="Cannot be empty." 
            runat="server" />
        </td>
      </tr>
      <tr>
        <td>
          Recordarme me?</td>
        <td>
          <asp:CheckBox ID="Persist" runat="server" /></td>
      </tr>
    </table>
    <asp:button ID="Submit1" OnClick="Logon_Click" Text="Log On"  
       runat="server" />
    <p>
      <asp:label ID="Msg" ForeColor="red" runat="server" />
    </p>

</div>
    
    </form>
    </head>--%>
    <head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>Login Form</title>
  <link rel="stylesheet" href="Bootstrap/css/styleLog.css">
  <!--[if lt IE 9]><script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
</head>
<body>
    <form runat="server">
  <section class="container">
    <div class="login">
      <h1> <asp:Label ID="Msg" runat="server" Text="INICIO DE CESION"></asp:Label></h1>
      <form method="post" action="index.html">
        <p>
            <asp:TextBox ID="UserEmail" runat="server" />
        </p>
        <p>
            <asp:TextBox ID="UserPass" TextMode="Password"  runat="server" />
        </p>
        <p class="remember_me">
          <label>
            
              <asp:CheckBox ID="Persist" runat="server" />
            Recordarme
          </label>
        </p>
        <p class="submit"> <asp:button ID="Submit1" OnClick="Logon_Click" Text="Inicio Cesion"  
       runat="server" /></p>
      </form>
    </div>

    <div class="login-help">
      <p>Forgot your password? <a href="index.html">Click here to reset it</a>.</p>
    </div>
 </form>
</body>
</html>
