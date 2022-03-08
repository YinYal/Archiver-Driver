<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ProjetoFinal.logincad" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="css/global.css" rel="stylesheet" />
    <link href="css/bootstrap.css" rel="stylesheet" />
    <title>Login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" type="text/css" href="css/logincad.css" />
</head>
<body id="bg-body">
    <div class="container">
        <div class="d-flex aligns-items-center position-absolute top-50 start-50 translate-middle" id="glass">
            <div class="border rounded-3 p-5 text-uppercase">
                <a class="links" id="paracadastro"></a>
                <a class="links" id="paralogin"></a>

                <div class="content">
                    <!--FORMULÁRIO DE LOGIN-->
                    <div class="text-white" id="login">
                        <form id="form1" runat="server">
                            <h1 class="mb-5 text-center">Login</h1>
                            <p>
                                <label for="tbEmail">Seu e-mail:</label>
                                <br />
                                <asp:TextBox ID="tbEmail" Text="Digite seu E-mail" onfocus="this.value=''" runat="server" Width="254px"></asp:TextBox>
                            </p>

                            <p>
                                <label for="tbSenha">Sua Senha:</label>
                                <br />

                                <asp:TextBox ID="tbSenha" runat="server" TextMode="Password" Width="254px"></asp:TextBox>
                            </p>

                            <p>
                                <asp:Button ID="btnlogar" runat="server" Text="Logar" OnClick="btnlogar_Click" />
                            </p>

                            <p class="link">
                                Ainda não tem conta?
            <a href="cadastro.aspx">Cadastre-se</a>
                            </p>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
