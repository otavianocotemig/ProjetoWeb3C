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
            exibirGrid();
        }

        public void exibirGrid()
        {
            gridClientes.DataSource = bllCliente.ListarClientes();
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
    }
}