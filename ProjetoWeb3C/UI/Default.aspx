<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ProjetoWeb3C.UI.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Projeto Web 3C</title>
     <link href="../Content/bootstrap.css" rel="stylesheet" />
     <link href="../Content/signin.css" rel="stylesheet" />
</head>
<body class="text-center">
    <form id="form1" runat="server">
        
          <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
            
              <a class="navbar-brand" href="FrmMain.aspx">Projeto Web 3C</a>
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>

              <div class="collapse navbar-collapse" id="navbarsExampleDefault">
                <ul class="navbar-nav mr-auto">
                  
                  <li  class="nav-item">
                    <a class="nav-link" href="FrmMeuPerfil.aspx">Meu Perfil</a>
                  </li>

                   <li  class="nav-item">
                    <a class="nav-link" href="FrmClientes.aspx">Clientes</a>
                  </li>
                
                </ul>
              
                  <br />
                 
              
              </div>
                    <asp:Label ID="usuario_logado" runat="server" Text="Usuário Não Logado." ForeColor="White"></asp:Label>
              <br />
                <asp:Button ID="btnSair" runat="server"  class="btn btn-lg btn-primary" Text="Sair" OnClick="btnSair_Click" />
              </nav>

        <br />
         <br />
        <br />
         <div class="jumbotron">
             <p>
            <asp:TextBox ID="txtPesquisar" runat="server" CssClass="form-control" ></asp:TextBox>
            <asp:Button ID="btnPesquisar" runat="server" OnClick="btnPesquisar_Click" class="btn btn-lg btn-primary" Text="Pesquisar" />
          </p>
            <asp:GridView ID="GridProdutos" CssClass="table-responsive-sm" runat="server" Height="99px" Width="152px" GridLines="Horizontal">
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:ImageButton ID="img1" runat="server" ImageUrl='<%# "~//imgProdutos//"+Eval("foto")  %>' Width="80px" Height="80px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </form>
     
</body>
</html>
