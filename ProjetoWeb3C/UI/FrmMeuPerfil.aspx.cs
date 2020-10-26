using ProjetoWeb3C.BLL;
using ProjetoWeb3C.DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoWeb3C.UI
{
    public partial class FrmMeuPerfil : System.Web.UI.Page
    {
        tblClienteBLL bllCliente = new tblClienteBLL();
        tblClienteDTO dtoCliente = new tblClienteDTO();


        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                if (Session["usuario"] == null)
                {
                    Response.Redirect("login.aspx");
                }
                else
                {
                    // Pesquisando os dados do cliente logado e preenchendo os campos do formulário
                    DataTable dtResult = bllCliente.ListarClientes(Session["usuario"].ToString());
                    txtEmail.Text = dtResult.Rows[0]["email_cliente"].ToString();
                    txtCodigo.Text = dtResult.Rows[0]["id_cliente"].ToString();
                    txtNome.Text = dtResult.Rows[0]["nome_cliente"].ToString();
                    txtSobrenome.Text = dtResult.Rows[0]["sobrenome_cliente"].ToString();
                    txtCpf.Text = dtResult.Rows[0]["cpf_cliente"].ToString();
                }
            }

        }

        protected void btnAlterar_Click(object sender, EventArgs e)
        {
            try
            {
                // Atualizando os dados doDTo com os campos do formulário

                dtoCliente.Nome_cliente = txtNome.Text;
                dtoCliente.Sobrenome_cliente = txtSobrenome.Text;
                dtoCliente.Cpf_cliente = txtCpf.Text;
                dtoCliente.Email_cliente = txtEmail.Text;
                dtoCliente.Senha_cliente = txtNovaSenha.Text;

                string Erro = "OK";
                if (txtSenha.Text.ToString() != bllCliente.RecuperaSenha(txtEmail.Text.ToString()))
                {
                    msgerro.Text = "A senha atual não confere. Verifique";
                    Erro = "NOTOK";
                }

                if (txtNovaSenha.Text.ToString() != txtRNovaSenha.Text.ToString())
                {
                    msgerro.Text = "A nova senha digitada não são iguais. Verifique";
                    Erro = "NOTOK";
                }
                if (Erro == "OK")
                {
                    bllCliente.AlterarCliente(dtoCliente);
                    Response.Redirect("Default.aspx");
                }
            }
            catch (Exception ex)
            {
                msgerro.Text = ex.Message;
            }
        }

        protected void btnRetornar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}