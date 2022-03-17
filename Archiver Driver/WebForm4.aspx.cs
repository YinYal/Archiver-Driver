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
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private void btnUpload_Click(object sender, System.EventArgs e)
        {
            string strFileName;
            string strFilePath;
            string strFolder;

            strFolder = Server.MapPath("./");
            strFileName = oFile.PostedFile.FileName;
            strFileName = Path.GetFileName(strFileName);
            if (oFile.Value != "")
            {
                if (!Directory.Exists(strFolder))
                {
                    Directory.CreateDirectory(strFolder);
                }
                string nomeFile = strFileName.Trim(' ');
                strFilePath = strFolder + "uploads/" + nomeFile;
                if (File.Exists(strFilePath))
                {
                    lblUploadResult.Text = strFileName + " Já existe no Servidor!";
                }
                else
                {
                    oFile.PostedFile.SaveAs(strFilePath);
                    lblUploadResult.Text = strFileName + " foi carregado com sucesso.";

                    System.Configuration.Configuration rootWebConfig = System.Web.Configuration.WebConfigurationManager.OpenWebConfiguration("/MyWebSiteRoot");
                    System.Configuration.ConnectionStringSettings connString;
                    connString = rootWebConfig.ConnectionStrings.ConnectionStrings["ConnectionString"];
                    SqlConnection con = new SqlConnection();
                    con.ConnectionString = connString.ToString();
                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = con;
                    cmd.CommandText = "Insert into doc (title,ex,path) values (@title,@ex,@path)";
                    cmd.Parameters.AddWithValue("title", strFileName);
                    // cmd.Parameters.AddWithValue("idUser", ltrCookie.Text);
                    cmd.Parameters.AddWithValue("ex", "Arquivo");
                    cmd.Parameters.AddWithValue("path", nomeFile.Trim(' '));
                    con.Open();
                    cmd.ExecuteNonQuery();

                    System.Configuration.ConnectionStringSettings connString2;
                    connString2 = rootWebConfig.ConnectionStrings.ConnectionStrings["ConnectionString"];
                    connString2 = rootWebConfig.ConnectionStrings.ConnectionStrings["ConnectionString"];
                    SqlConnection con2 = new SqlConnection();
                    con2.ConnectionString = connString2.ToString();
                    SqlCommand cmd2 = new SqlCommand();
                    cmd2.Connection = con2;
                    cmd2.CommandText = "Insert into log (title,ex) values (@title,@ex)";
                    // cmd2.Parameters.AddWithValue("idUser", ltrCookie.Text);
                    cmd2.Parameters.AddWithValue("title", strFileName);
                    cmd2.Parameters.AddWithValue("ex", "Criação");
                    con2.Open();
                    cmd2.ExecuteNonQuery();
                    con2.Close();
                }
            }
            else
            {
                lblUploadResult.Text = "Clique para selecionar um Arquivo.";
            }
            // Display the result of the upload.
            frmConfirmation.Visible = true;
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

    }
}
