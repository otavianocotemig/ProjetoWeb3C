<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ProjetoWeb3C.UI.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Acesso ao Sistema</title>
     <link href="../Content/bootstrap.css" rel="stylesheet" />
     <link href="../Content/signin.css" rel="stylesheet" />
</head>
<body class="text-center">
    <form id="form1" class="form-signin" runat="server">
        <div>
            <h3>Acesso ao Sistema</h3>
            <asp:Label ID="Label1" runat="server" Text="Email"></asp:Label>
            <asp:TextBox ID="txtEmail" type="email" class="form-control" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Senha"></asp:Label>
            <asp:TextBox ID="txtSenha" type="password" class="form-control" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="btnLogin" class="btn btn-lg btn-primary btn-block" runat="server" Text="Login" OnClick="btnLogin_Click" />

              <asp:Label ID="msgerro" runat="server" ForeColor="#FF3300"></asp:Label>
        </div>
    </form>
</body>
</html>
