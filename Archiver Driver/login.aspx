<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ProjetoFinal.logincad" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="css/global.css" rel="stylesheet" />
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link rel="icon" type="image/x-icon" href="assets/favcon.ico" />
    <title>Login - Archiver Driver</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
<body id="bg-body">
    <div class="container">
        <div class="d-flex aligns-items-center position-absolute top-50 start-50 translate-middle" id="glass">
            <div class="border rounded-3 pe-5 ps-5 pt-3 pb-3">
                <a class="links" id="paracadastro"></a>
                <a class="links" id="paralogin"></a>
                <div class="content" id="bg-card">
                    <!--FORMULÁRIO DE LOGIN-->
                    <div class="text-white lead" id="login">
                        <form id="form1" runat="server">
                            <h1 class="mb-3 text-center border-bottom text-uppercase display-3">Login</h1>

                            <div class="form-group mb-0">
                                <label for="tbEmail">Seu e-mail:</label>
                                <asp:TextBox ID="tbEmail" CssClass="form-control w-100" Text="Digite seu E-mail" onfocus="this.value=''" runat="server"></asp:TextBox>
                            </div>

                            <div class="form-group mb-2">
                                <label for="tbSenha">Sua senha:</label>
                                <asp:TextBox ID="tbPass" CssClass="form-control w-100" runat="server" TextMode="Password"></asp:TextBox>
                            </div>

                            <div class="text-center">
                                <asp:Button ID="btnlogar" CssClass="btn btn-primary" runat="server" Text="Entrar" OnClick="Btnlogar_Click" />
                                <br />
                                <p class="link">
                                    Ainda não tem conta?
                                    <br />
                                    <a class="text-primary" href="register.aspx">Cadastrar-se</a>

                                </p>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-4 mb-3 ms-3 position-absolute start-0 bottom-0">
            <div class="box-cookies d-none d-flex justify-content-center mt-5 h-100">
                <div class="d-flex align-items-center align-self-center card p-3 text-center cookies">
                    <img src="https://i.imgur.com/Tl8ZBUe.png" width="50" /><span class="mt-2 msg-cookies">Nós armazenamos dados temporariamente para melhorar a sua experiência de navegação e recomendar conteúdo de seu interesse. Ao utilizar nossos serviços, você concorda com tal monitoramento.</span><a class="d-flex align-items-center" href="#">Politicas de privacidade<i class="fa fa-angle-right ml-2"></i></a>
                    <button class="btn btn-dark mt-3 px-4 btn-cookies" id="btn-cookies">Aceitar!</button>
                </div>
            </div>
        </div>
    </div>
    <script>
        (() => {
            if (!localStorage.pureJavaScriptCookies) {
                document.querySelector(".box-cookies").classList.remove('d-none');
            }

            const acceptCookies = () => {
                document.querySelector(".box-cookies").classList.add('d-none');
                localStorage.setItem("pureJavaScriptCookies", "accept");
            };

            const btnCookies = document.querySelector(".btn-cookies");

            btnCookies.addEventListener('click', acceptCookies);
        })();
    </script>
</body>
</html>
