using ProjetoWeb3C.BLL;
using ProjetoWeb3C.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoWeb3C.UI
{
    public partial class Login : System.Web.UI.Page
    {
        tblClienteDTO tblClienteDTO = new tblClienteDTO();
        tblClienteBLL tblClienteBLL = new tblClienteBLL();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {

            try
            {
                //Instanciando o DTO do cliente para armazenar os dados da tela
                tblClienteDTO.Email_cliente = txtEmail.Text.Trim();
                tblClienteDTO.Senha_cliente = txtSenha.Text.Trim();
                // Instanciando a BLL para pesquisa do email e senha do cliente no banco
                if (tblClienteBLL.Autenticar(tblClienteDTO.Email_cliente, tblClienteDTO.Senha_cliente))
                {
                    msgerro.Visible = true;
                    msgerro.Text = "Cliente Localizado";
                    // chamando o novo formulário

                    Session["usuario"] = tblClienteDTO.Email_cliente;
                    
                    Response.Redirect("Default.aspx");
                }
                else
                {
                    msgerro.Visible = true;
                    msgerro.Text = "Cliente Não Localizado. Verifique.";
                    Session["usuario"] = null;
                }
            }
            catch (Exception ex)
            {
                msgerro.Visible = true;
                msgerro.Text = ex.Message;
            }

        }
    }
}