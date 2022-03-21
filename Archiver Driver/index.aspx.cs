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
        }
        protected void btnUpload_Click1(object sender, EventArgs e)
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
                // Save the uploaded file to the server.
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

                    cmd.CommandText = "Insert into doc (idUser,title,type,path) values (@idUser,@title,@type,@path)";
                    cmd.Parameters.AddWithValue("title", strFileName);
                    cmd.Parameters.AddWithValue("idUser", LblCookie.Text);
                    cmd.Parameters.AddWithValue("type", "PDF");
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

                    cmd2.CommandText = "Insert into log (idUser,title,stats) values (@idUser,@title,@stats)";
                    cmd2.Parameters.AddWithValue("idUser", LblCookie.Text);
                    cmd2.Parameters.AddWithValue("title", strFileName);
                    cmd2.Parameters.AddWithValue("stats", "criado");
                    con2.Open();
                    cmd2.ExecuteNonQuery();
                    con2.Close();
                }
            }
            else
            {
                lblUploadResult.Text = "Clique para selecionar um Arquivo.";
            }
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
                LblCookie.Text = valores;
            }
            else LblCookie.Text = string.Empty;
        }
        private HttpCookie ObterRequisicaoCookie(string nomeCookie)
        {
            try
            {
                // Retornando o cookie caso exista
                return this.Page.Request.Cookies[nomeCookie];
            }
            catch
            {
                return null;
            }
        }
        protected void btnLer_Click(object sender, EventArgs e)
        {
            getPropriedadesCookie("login");
        }

    }
}


