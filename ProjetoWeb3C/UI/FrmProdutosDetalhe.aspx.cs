using ProjetoWeb3C.BLL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoWeb3C.UI
{
    public partial class FrmProdutosDetalhe : System.Web.UI.Page
    {
        tblProdutoBLL bllProduto = new tblProdutoBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            int idProduto = int.Parse(Request.QueryString["codigoProduto"]);
            DataTable cursor = bllProduto.consultarProdutos(idProduto);
            if (cursor.Rows.Count > 0)
            {
                txtCodigo.Text = cursor.Rows[0][0].ToString();
                txtNome.Text = cursor.Rows[0][1].ToString();
                txtDescricao.Text = cursor.Rows[0][2].ToString();
                impProduto.ImageUrl = "~//imgProdutos//" + cursor.Rows[0][8].ToString();
            }
            else
            {
                Response.Redirect("Default.aspx");
            }
        }

        protected void btnRetornar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}