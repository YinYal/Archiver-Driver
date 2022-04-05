using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Archiver_Driver
{
    public partial class dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            getPropriedadesCookie2("admC");

            if (Label1.Text != "True")
            {
                Response.Redirect("~/index.aspx");
            }

        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource4_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {
        }

        public void getPropriedadesCookie2(string nomeCookie)
        {
            // Obtém a requisição com dos dados do cookie
            HttpCookie cookie = ObterRequisicaoCookie2(nomeCookie);
            if (cookie != null)
            {
                // Separa os valores das propriedade
                string valores = cookie.Value.ToString();

                // Escreve os valores das propriedades encontradas
                Label1.Text = valores;
            }
            else Label1.Text = string.Empty;
        }

        /*
         * Método 03
         * Método responsável por Obter a requisição HttpCookie de um determinado cookie caso ele exista
         */
        private HttpCookie ObterRequisicaoCookie2(string nomeCookie)
        {
            try
            {
                // Retornando o cookie caso exista
                return this.Page.Request.Cookies[nomeCookie];
            }
            catch
            {
                // Caso não exista o cookie informado, retorna NULL
                return null;
            }
        }

        /*
        * Método 04
        * Método responsável por remover um determinado cookie
        */
        private void removerCookie2(string nomeCookie)
        {
            // Removendo o Cookie
            Response.Cookies[nomeCookie].Expires = DateTime.Now.AddDays(-1);
        }

    }
}