using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoFinal
{
    public partial class logincad : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnlogar_Click(object sender, EventArgs e)
        {
            String emailuser = tbEmail.Text;
            String senha = tbSenha.Text;
            //
            //capturar a string de conexão
            System.Configuration.Configuration rootWebConfig = System.Web.Configuration.WebConfigurationManager.OpenWebConfiguration("/MyWebSiteRoot");
            System.Configuration.ConnectionStringSettings connString;
            connString = rootWebConfig.ConnectionStrings.ConnectionStrings["ConnectionString"];
            //cria um objeto de conexão
            SqlConnection con = new SqlConnection();
            con.ConnectionString = connString.ToString();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "select * from usuario where emailuser = @emailuser and senha = @senha";
            cmd.Parameters.AddWithValue("emailuser", emailuser);
            cmd.Parameters.AddWithValue("senha", senha);
            con.Open();
            SqlDataReader registro = cmd.ExecuteReader();
            if (registro.HasRows)
            {
                //Cria o cookie
                HttpCookie login = new HttpCookie("login", tbEmail.Text);
                Response.Cookies.Add(login);


                //string cookie = Request.Cookies["login"];

                //direcionar para a pagina principal
                Response.Redirect("~/index.aspx");
            }
            else
            {
                // Alert Javascript
                Response.Write("<script> alert('Email ou Senha Incorretos!');</script>");
            }
        }
    }
}