using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Archiver_Driver
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            getPropriedadesCookie("login");
        }
        public static String sha256_hash(String value)
        {
            StringBuilder Sb = new StringBuilder();

            using (SHA256 hash = SHA256Managed.Create())
            {
                Encoding enc = Encoding.UTF8;
                Byte[] result = hash.ComputeHash(enc.GetBytes(value));

                foreach (Byte b in result)
                    Sb.Append(b.ToString("x2"));
            }

            return Sb.ToString();
        }


        protected void btnatualizar_Click(object sender, EventArgs e)
        {
            //capturar a string de conexão
            System.Configuration.Configuration rootWebConfig = System.Web.Configuration.WebConfigurationManager.OpenWebConfiguration("/MyWebSiteRoot");
            // Criado pelo SQL Data Source
            System.Configuration.ConnectionStringSettings connString;
            connString = rootWebConfig.ConnectionStrings.ConnectionStrings["ConnectionString"];
            //cria um objeto de conexão
            SqlConnection con = new SqlConnection();
            con.ConnectionString = connString.ToString();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            // Chamada da Update pelo SQL tabela usuario tabela senha quando email for igual o email do cookie
            cmd.CommandText = "Update client set password = @altPass where email = @email";

            // Varáveis do banco de dados iniciado por @ arroba
            cmd.Parameters.AddWithValue("altPass", sha256_hash(tbPass.Text));
            cmd.Parameters.AddWithValue("email", ltrCookie.Text);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            System.Configuration.ConnectionStringSettings connString2;
            connString2 = rootWebConfig.ConnectionStrings.ConnectionStrings["ConnectionString"];

            SqlConnection con2 = new SqlConnection();
            con2.ConnectionString = connString2.ToString();
            SqlCommand cmd2 = new SqlCommand();
            cmd2.Connection = con2;

            cmd2.CommandText = "Insert into log(title,stats,idUser) values (@title, @stats, @idUser)";
            cmd2.Parameters.AddWithValue("idUser", ltrCookie.Text);
            cmd2.Parameters.AddWithValue("title", "password");
            cmd2.Parameters.AddWithValue("stats", "alterado");
            con2.Open();
            cmd2.ExecuteNonQuery();
            con2.Close();
            Response.Redirect("~/index.aspx");
            // Alert Javascript
            Response.Write("<script> alert('Senha Alterada com Sucesso!');</script>");
        }
        public void getPropriedadesCookie(string nomeCookie)
        {
            // Obtém a requisição com dos dados do cookie
            HttpCookie cookie = ObterRequisicaoCookie(nomeCookie);
            if (cookie != null)
            {
                // Separa os valores das propriedade
                string valores = cookie.Value.ToString();

                // Escreve os valores das propriedades encontradas
                ltrCookie.Text = valores;
            }
            else ltrCookie.Text = string.Empty;
        }

        /*
         * Método 03
         * Método responsável por Obter a requisição HttpCookie de um determinado cookie caso ele exista
         */
        private HttpCookie ObterRequisicaoCookie(string nomeCookie)
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
        private void removerCookie(string nomeCookie)
        {
            // Removendo o Cookie
            Response.Cookies[nomeCookie].Expires = DateTime.Now.AddDays(-1);
        }



        protected void btnLer_Click(object sender, EventArgs e)
        {
            getPropriedadesCookie("login");
        }

        protected void btAttName_Click(object sender, EventArgs e)
        {
            System.Configuration.Configuration rootWebConfig = System.Web.Configuration.WebConfigurationManager.OpenWebConfiguration("/MyWebSiteRoot");
            // Criado pelo SQL Data Source
            System.Configuration.ConnectionStringSettings connString;
            connString = rootWebConfig.ConnectionStrings.ConnectionStrings["ConnectionString"];
            //cria um objeto de conexão
            SqlConnection con = new SqlConnection();
            con.ConnectionString = connString.ToString();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            // Chamada da Update pelo SQL tabela usuario tabela senha quando email for igual o email do cookie
            cmd.CommandText = "Update client set name = @name where email = @email";

            // Varáveis do banco de dados iniciado por @ arroba
            cmd.Parameters.AddWithValue("name", tbUser.Text);
            cmd.Parameters.AddWithValue("email", ltrCookie.Text);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            System.Configuration.ConnectionStringSettings connString2;
            connString2 = rootWebConfig.ConnectionStrings.ConnectionStrings["ConnectionString"];

            SqlConnection con2 = new SqlConnection();
            con2.ConnectionString = connString2.ToString();
            SqlCommand cmd2 = new SqlCommand();
            cmd2.Connection = con2;

            cmd2.CommandText = "Insert into log(title,stats,idUser) values (@title, @stats, @idUser)";
            cmd2.Parameters.AddWithValue("idUser", ltrCookie.Text);
            cmd2.Parameters.AddWithValue("title", "name");
            cmd2.Parameters.AddWithValue("stats", "alterado");
            con2.Open();
            cmd2.ExecuteNonQuery();
            con2.Close();
            Response.Redirect("~/index.aspx");

            // Alert Javascript
            Response.Write("<script> alert('Nome de Usuário trocado com sucesso!');</script>");
        }

        protected void btClear_Click(object sender, EventArgs e)
        {
            tbPass.Text = string.Empty;
            tbConfiPass.Text = string.Empty;
        }

        protected void btClear1_Click(object sender, EventArgs e)
        {
            tbUser.Text = string.Empty;
            tbtConfiUser.Text = string.Empty;

        }
    }
}