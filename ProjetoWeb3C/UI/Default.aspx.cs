using ProjetoWeb3C.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoWeb3C.UI
{
    public partial class Default : System.Web.UI.Page
    {
        // Instanciar a classe da BLL e DTO
        tblProdutoBLL produtoBLL = new tblProdutoBLL();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnPesquisar_Click(object sender, EventArgs e)
        {
            string condicao = " nomeproduto like '%" + txtPesquisar.Text + "%'";
            GridProdutos.DataSource = produtoBLL.ListarProdutos(condicao);
            GridProdutos.DataBind();
        }
    }
}