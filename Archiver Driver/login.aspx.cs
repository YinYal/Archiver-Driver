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
                // Fez a leitura de todas as linha encontradas no banco
                registro.Read();
                //Cria o cookie do Login Com email do Banco de Dados
                string loginCookie = registro["email"].ToString();
                HttpCookie login = new HttpCookie("login", loginCookie);
                Response.Cookies.Add(login);

                //Cria o cookie do id do usuário
                string IdUserCookie = registro["Id"].ToString();
                // Preaparaçao para o Navegador
                HttpCookie IdUser = new HttpCookie("id_user", IdUserCookie);
                // Inserção do cookie no navegador
                Response.Cookies.Add(IdUser);

                //Cria o cookie do nome do usuario
                string nomeCookie = registro["name"].ToString(); // Resgata no Banco
                HttpCookie nomeC = new HttpCookie("nameC", nomeCookie);
                Response.Cookies.Add(nomeC);

                string admCookie = registro["adm"].ToString(); // Resgata no Banco
                HttpCookie admC = new HttpCookie("admC", admCookie);
                Response.Cookies.Add(admC);

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