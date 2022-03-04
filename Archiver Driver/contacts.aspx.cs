using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Archiver_Driver
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //capturar a string de conexão
            System.Configuration.Configuration rootWebConfig = System.Web.Configuration.WebConfigurationManager.OpenWebConfiguration("/MyWebSiteRoot");
            System.Configuration.ConnectionStringSettings connString;
            connString = rootWebConfig.ConnectionStrings.ConnectionStrings["ConnectionString"];
            //cria um objeto de conexão
            SqlConnection con = new SqlConnection();
            con.ConnectionString = connString.ToString();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "Insert into contato (nome,email,telefone,assunto,mensagem) values (@nome,@email,@telefone,@assunto,@mensagem)";
            cmd.Parameters.AddWithValue("nome", contactName.Text);
            cmd.Parameters.AddWithValue("email", contactEmail.Text);
            cmd.Parameters.AddWithValue("telefone", contactNumber.Text);
            cmd.Parameters.AddWithValue("assunto", contactAssunto.Text);
            cmd.Parameters.AddWithValue("mensagem", contactMessage.Text);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.DataBind();
        }

        protected void contactMessage_TextChanged(object sender, EventArgs e)
        {

        }
    }
}