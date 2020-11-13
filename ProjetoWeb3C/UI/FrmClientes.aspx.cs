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
    public partial class FrmClientes : System.Web.UI.Page
    {
        // Instanciar a BLL e DTO
        tblClienteBLL bllCliente = new tblClienteBLL();
        tblClienteDTO dtoCliente = new tblClienteDTO();

        protected void Page_Load(object sender, EventArgs e)
        {
                      
        }

        public void exibirGrid()
        {
            string condicao = "nome_cliente like '%" + txtPesquisar.Text + "%'" +
                              " or sobrenome_cliente like '%" + txtPesquisar.Text + "%'";

            gridClientes.DataSource = bllCliente.PesquisarClientes(condicao);
            gridClientes.DataBind();
        }
        protected void btnRetornar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void gridClientes_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gridClientes.PageIndex = e.NewPageIndex;
            exibirGrid();
        }

        protected void gridClientes_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            dtoCliente.Id_cliente = Convert.ToInt32( e.Values[0]);
            bllCliente.ExcluirCliente(dtoCliente);
            exibirGrid();
        }

        protected void btnGravar_Click(object sender, EventArgs e)
        {
            try
            {
                // Passagem dos dados da UI para o DTO
                dtoCliente.Nome_cliente = txtNome.Text.ToString();
                dtoCliente.Sobrenome_cliente = txtSobrenome.Text.ToString();
                dtoCliente.Email_cliente = txtEmail.Text.ToString();
                dtoCliente.Senha_cliente = txtSenha.Text.ToString();
                dtoCliente.Cpf_cliente = txtCpf.Text.ToString();
               
                bllCliente.InserirCliente(dtoCliente);
                msgerro.Text = "Cliente inserido com Sucesso";
                //
                // Limpar os Campos
                LimparCampos();
                gridClientes.DataSource = bllCliente.ListarClientes();
              
            }
            catch (Exception ex)
            {
                msgerro.Text = ex.Message;
            }
        }

        public void LimparCampos()
        {
            txtNome.Text = "";
            txtSobrenome.Text = "";
            txtEmail.Text = "";
            txtSenha.Text = "";
            txtCpf.Text = "";
        }

        protected void gridClientes_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gridClientes.EditIndex = e.NewEditIndex;
            exibirGrid();
        }

        protected void gridClientes_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gridClientes.EditIndex = -1;
            exibirGrid();
        }

        protected void gridClientes_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {

                dtoCliente.Nome_cliente = e.NewValues[1].ToString();
                dtoCliente.Sobrenome_cliente = e.NewValues[2].ToString();
                dtoCliente.Email_cliente = e.NewValues[3].ToString();
                dtoCliente.Senha_cliente = e.NewValues[4].ToString();
                dtoCliente.Cpf_cliente = e.NewValues[4].ToString();
                bllCliente.AlterarCliente(dtoCliente);
                gridClientes.EditIndex = -1;
                exibirGrid();
            }
            catch (Exception ex)
            {
                msgerro.Text = ex.Message;

            }
        }

        protected void btnPesquisar_Click(object sender, EventArgs e)
        {
            string condicao = "nome_cliente like '%" + txtPesquisar.Text + "%'" +
                              " or sobrenome_cliente like '%" + txtPesquisar.Text + "%'";

            gridClientes.DataSource = bllCliente.PesquisarClientes(condicao);
            gridClientes.DataBind();

        }
    }
}