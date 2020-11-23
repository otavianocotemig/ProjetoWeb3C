<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmProdutosDetalhe.aspx.cs" Inherits="ProjetoWeb3C.UI.FrmProdutosDetalhe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Detalhes do Produto</title>
     <link href="../Content/bootstrap.css" rel="stylesheet" />
     <link href="../Content/signin.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">

            <h3>Detalhes do Produto</h3>
           
            <asp:Label ID="Label1" runat="server" Text="Código"></asp:Label>
            <asp:TextBox ID="txtCodigo" runat="server" class="form-control" ReadOnly="True"></asp:TextBox>

            <asp:Label ID="Label2" runat="server" Text="Nome"></asp:Label>
            <asp:TextBox ID="txtNome" runat="server" class="form-control" ReadOnly="True"> </asp:TextBox>

            <asp:Label ID="Label3" runat="server" Text="Descricao"></asp:Label>
            <asp:TextBox ID="txtDescricao" runat="server" class="form-control" ReadOnly="True"> </asp:TextBox>


            <br />
            <asp:Label ID="Label4" runat="server" Text="Foto do Produto"></asp:Label>
            <br />
          
            <asp:ImageButton ID="impProduto" runat="server" Height="139px" Width="152px" />
            <br />


               <asp:Button ID="btnRetornar" runat="server" class="btn btn-lg btn-primary" Text="Retornar" OnClick="btnRetornar_Click" />
        </div>
    </form>
</body>
</html>
