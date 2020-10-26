<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmMeuPerfil.aspx.cs" Inherits="ProjetoWeb3C.UI.FrmMeuPerfil" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Meu Perfil</title>
      <link href="../Content/bootstrap.css" rel="stylesheet" />
     <link href="../Content/signin.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="jumbotron">
            <h1>Meu Perfil</h1>

            <asp:Label ID="Label7" runat="server" Text="Código Cliente"></asp:Label>
            <asp:TextBox ID="txtCodigo" runat="server" Enabled="False"> </asp:TextBox>
            <br />

            <asp:Label ID="Label1" runat="server" Text="Nome"></asp:Label>
            <asp:TextBox ID="txtNome" runat="server" class="form-control"> </asp:TextBox>

            <asp:Label ID="Label2" runat="server" Text="SobreNome"></asp:Label>
            <asp:TextBox ID="txtSobrenome" runat="server" class="form-control"> </asp:TextBox>

            <asp:Label ID="Label3" runat="server" Text="CPF"></asp:Label>
            <asp:TextBox ID="txtCpf" runat="server" class="form-control"> </asp:TextBox>

            <asp:Label ID="Label8" runat="server" Text="Email"></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server" Enabled= "False" CssClass="form-control"> </asp:TextBox>
            <br />
            <asp:Label ID="Label4" runat="server" Text="Senha Atual"></asp:Label>
            <asp:TextBox ID="txtSenha" type="password" runat="server" class="form-control"> </asp:TextBox>

            <asp:Label ID="Label5" runat="server" Text="Nova Senha"></asp:Label>
            <asp:TextBox ID="txtNovaSenha" type="password" runat="server" class="form-control"> </asp:TextBox>

            <asp:Label ID="Label6" runat="server" Text="Repita Nova Senha"></asp:Label>
            <asp:TextBox ID="txtRNovaSenha" type="password" runat="server" class="form-control"> </asp:TextBox>
        
            <br />
             <asp:Button ID="btnAlterar" runat="server" class="btn btn-lg btn-primary btn-block" Text="Alterar" OnClick="btnAlterar_Click" />
             <asp:Button ID="btnRetornar" runat="server" class="btn btn-lg btn-primary btn-block" Text="Retornar" OnClick="btnRetornar_Click" />


            <asp:Label ID="msgerro" runat="server" ForeColor="Red" Text="."></asp:Label>


        </div>
    </form>
</body>
</html>
