<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ProjetoWeb3C.UI.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Projeto Web 3C</title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Projeto Web 3C</h1>
        <div>
            <asp:TextBox ID="txtPesquisar" runat="server" Width="372px"></asp:TextBox>
            <asp:Button ID="btnPesquisar" runat="server" OnClick="btnPesquisar_Click" Text="Pesquisar" Width="114px" />
            <br />
            <br />
            <asp:GridView ID="GridProdutos" runat="server" Height="99px" Width="152px">
            </asp:GridView>
        </div>
    </form>
</body>
</html>
