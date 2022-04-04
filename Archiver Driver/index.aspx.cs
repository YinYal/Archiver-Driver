using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Archiver_Driver
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            getPropriedadesCookie("login");

            //capturar a string de conexão
            System.Configuration.Configuration rootWebConfig = System.Web.Configuration.WebConfigurationManager.OpenWebConfiguration("/MyWebSiteRoot");
            System.Configuration.ConnectionStringSettings connString;
            connString = rootWebConfig.ConnectionStrings.ConnectionStrings["ConnectionString"];
            //cria um objeto de conexão
            SqlConnection con = new SqlConnection();
            con.ConnectionString = connString.ToString();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "select * from doc where idUser = @email";
            cmd.Parameters.AddWithValue("email", ltrCookie.Text);
            con.Open();
            SqlDataReader registro = cmd.ExecuteReader();

            while (registro.Read())
            {
                string dateDoc = "<td class='wi50 ps-2'>" + registro["date"].ToString() + "</td>";
                string titleDoc = "<td>" + registro["title"].ToString() + "</td>";
                string pathDoc = "<td class='w-10'><a class='btn btn-primary w-100' target='_blank' href='uploads/" + registro["path"].ToString() + "'>Download</a></td>";
                string remove = "<td class='w-10'><a class='btn btn-danger w-100' href='delete.aspx?id=" + registro["idDoc"].ToString() + "'>Remover</a></td>";
                string altDoc = "<td class='w-10'><a class='btn btn-success w-100' href='alt.aspx?id=" + registro["idDoc"].ToString() + "' > Alterar</a></td>";

                row_table.InnerHtml += "<div>"+ titleDoc + dateDoc + pathDoc + remove + altDoc + "</div>";
            }
            con.Close();

        }
        public void getPropriedadesCookie(string nomeCookie)
        {
            // Obtém a requisição com dos dados do cookie
            HttpCookie cookie = ObterRequisicaoCookie(nomeCookie);
            if (cookie != null)
            {
                // Separa os valores das propriedade
                string valores = cookie.Value.ToString();
                // Varre os valores das propriedades encontrados               
                // Escreve os valores das propriedades encontradas
                ltrCookie.Text = valores;
            }
            else ltrCookie.Text = string.Empty;
        }

        public void getPropriedadesCookie2(string nomeCookie)
        {
            // Obtém a requisição com dos dados do cookie
            HttpCookie cookie = ObterRequisicaoCookie(nomeCookie);
            if (cookie != null)
            {
                // Separa os valores das propriedade
                string valores = cookie.Value.ToString();
                // Varre os valores das propriedades encontrados               
                // Escreve os valores das propriedades encontradas
                ltriduser.Text = valores;
            }
            else ltriduser.Text = string.Empty;
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

        protected void btnLer_Click(object sender, EventArgs e)
        {
            getPropriedadesCookie("login");
        }

        protected void btnUpload_Click1(object sender, EventArgs e)
        {
            getPropriedadesCookie2("id_user");


            // Nome do Arquivo
            string strFileName;
            // Caminho do Arquivo
            string strFilePath;
            // Diretório do Arquivo
            string strFolder;

            strFolder = Server.MapPath("./");
            // Get the name of the file that is posted.
            strFileName = oFile.PostedFile.FileName;
            strFileName = Path.GetFileName(strFileName);
            if (oFile.Value != "")
            {
                // Create the directory if it does not exist.
                if (!Directory.Exists(strFolder))
                {
                    Directory.CreateDirectory(strFolder);
                }
                // Save the uploaded file to the server.
                string nameFile = ltriduser.Text + "-" + strFileName;
                strFilePath = strFolder + "uploads/" + nameFile;

                oFile.PostedFile.SaveAs(strFilePath);
                lblUploadResult.Text = nameFile + " foi carregado com sucesso.";

                System.Configuration.Configuration rootWebConfig = System.Web.Configuration.WebConfigurationManager.OpenWebConfiguration("/MyWebSiteRoot");
                System.Configuration.ConnectionStringSettings connString;
                connString = rootWebConfig.ConnectionStrings.ConnectionStrings["ConnectionString"];

                SqlConnection con = new SqlConnection();
                con.ConnectionString = connString.ToString();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;

                cmd.CommandText = "Insert into doc (idUser,title,type,path) values (@idUser,@title,@type,@path)";
                cmd.Parameters.AddWithValue("title", strFileName);
                cmd.Parameters.AddWithValue("idUser", ltrCookie.Text);
                cmd.Parameters.AddWithValue("type", "PDF");
                cmd.Parameters.AddWithValue("path", nameFile);
                con.Open();
                cmd.ExecuteNonQuery();

                System.Configuration.ConnectionStringSettings connString2;
                connString2 = rootWebConfig.ConnectionStrings.ConnectionStrings["ConnectionString"];
                connString2 = rootWebConfig.ConnectionStrings.ConnectionStrings["ConnectionString"];

                SqlConnection con2 = new SqlConnection();
                con2.ConnectionString = connString2.ToString();
                SqlCommand cmd2 = new SqlCommand();
                cmd2.Connection = con2;

                cmd2.CommandText = "Insert into log (idUser,title,stats) values (@idUser,@title,@stats)";
                cmd2.Parameters.AddWithValue("idUser", ltrCookie.Text);
                cmd2.Parameters.AddWithValue("title", strFileName);
                cmd2.Parameters.AddWithValue("stats", "criado");
                con2.Open();
                cmd2.ExecuteNonQuery();
                con2.Close();
                Response.Redirect("~/index.aspx");

            }
            else
            {
                lblUploadResult.Text = "Clique para selecionar um Arquivo.";
            }
            frmConfirmation.Visible = true;
        }

    }
}


