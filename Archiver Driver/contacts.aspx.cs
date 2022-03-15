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
        public object GridView1 { get; private set; }

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
            cmd.CommandText = "Insert into contacts (name,email,tell,subject,message) values (@name,@email,@tell,@subject,@message)";
            cmd.Parameters.AddWithValue("@name", contactName.Text);
            cmd.Parameters.AddWithValue("@email", contactEmail.Text);
            cmd.Parameters.AddWithValue("@tell", contactTell.Text);
            cmd.Parameters.AddWithValue("@subject", contactSubject.Text);
            cmd.Parameters.AddWithValue("@message", contactMessage.Text);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("~/contacts.aspx");
        }

        protected void contactMessage_TextChanged(object sender, EventArgs e)
        {

        }
    }
}