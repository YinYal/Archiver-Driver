using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
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

        public static String Sha256_hash(String value)
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

        protected void Btnlogar_Click(object sender, EventArgs e)
        {
            String email = tbEmail.Text;
            String pass = Sha256_hash(tbPass.Text);
            System.Configuration.Configuration rootWebConfig = System.Web.Configuration.WebConfigurationManager.OpenWebConfiguration("/MyWebSiteRoot");
            System.Configuration.ConnectionStringSettings connString;
            connString = rootWebConfig.ConnectionStrings.ConnectionStrings["ConnectionString"];
            SqlConnection con = new SqlConnection
            {
                ConnectionString = connString.ToString()
            };
            SqlCommand cmd = new SqlCommand
            {
                Connection = con,
                CommandText = "select * from client where email = @email and password = @password"
            };
            cmd.Parameters.AddWithValue("email", email);
            cmd.Parameters.AddWithValue("password", pass);
            con.Open();
            SqlDataReader registro = cmd.ExecuteReader();
            if (registro.HasRows)
            {
                HttpCookie login = new HttpCookie("login", tbEmail.Text);
                Response.Cookies.Add(login);
                Response.Redirect("~/index.aspx");
            }
            else
            {
                Response.Write("<script> alert('Email ou Senha Incorretos!');</script>");
            }
        }
    }
}