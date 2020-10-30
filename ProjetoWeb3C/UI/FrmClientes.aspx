<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmClientes.aspx.cs" Inherits="ProjetoWeb3C.UI.FrmClientes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Clientes</title>
      <link href="../Content/bootstrap.css" rel="stylesheet" />
     <link href="../Content/signin.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
        <div>
            <h3>Clientes</h3>
           
            <asp:Label ID="Label1" runat="server" Text="Nome"></asp:Label>
            <asp:TextBox ID="txtNome" runat="server" class="form-control"> </asp:TextBox>

            <asp:Label ID="Label2" runat="server" Text="SobreNome"></asp:Label>
            <asp:TextBox ID="txtSobrenome" runat="server" class="form-control"> </asp:TextBox>

            <asp:Label ID="Label3" runat="server" Text="CPF"></asp:Label>
            <asp:TextBox ID="txtCpf" runat="server" class="form-control"> </asp:TextBox>

            <asp:Label ID="Label8" runat="server" Text="Email"></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server"  CssClass="form-control"> </asp:TextBox>
         
            <asp:Label ID="Label4" runat="server" Text="Senha"></asp:Label>
            <asp:TextBox ID="txtSenha" type="password" runat="server" class="form-control"> </asp:TextBox>

                
            <br />
             <asp:Button ID="btnGravar" runat="server" class="btn btn-lg btn-primary" Text="Gravar"  />
             <asp:Button ID="btnRetornar" runat="server" class="btn btn-lg btn-primary" Text="Retornar" OnClick="btnRetornar_Click"  />

              <asp:GridView ID="gridClientes" CssClass="table table-striped" runat="server" AllowPaging="True" PageSize="3" OnPageIndexChanging="gridClientes_PageIndexChanging" OnRowDeleting="gridClientes_RowDeleting">
                  <Columns>
                      <asp:CommandField ShowDeleteButton="True" />
                  </Columns>
                  <PagerSettings PageButtonCount="3" Position="TopAndBottom" />
            </asp:GridView>
         </div>
          

        </div>
        
    </form>
</body>
</html>
