﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ProjetoFinal.logincad" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="css/global.css" rel="stylesheet" />
    <link href="css/bootstrap.css" rel="stylesheet" />
    <title>Login</title>
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
                                <asp:TextBox ID="tbEmail" CssClass="form-control" Text="Digite seu E-mail" onfocus="this.value=''" runat="server" Width="254px"></asp:TextBox>
                            </div>

                            <div class="form-group mb-2">
                                <label for="tbSenha">Sua senha:</label>
                                <asp:TextBox ID="tbPass" CssClass="form-control" runat="server" TextMode="Password" Width="254px"></asp:TextBox>
                            </div>

                            <div class="text-center">
                                <asp:Button ID="btnlogar" CssClass="btn btn-primary" runat="server" Text="Entrar" OnClick="Btnlogar_Click" />
                                <br />
                                  <input class="form-check-input mb-4" type="checkbox" value="" id="checkbox" />
                                  <label class="form-check-label" for="flexCheckDefault">Mantenha-me conectado</label>
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
    </div>
</body>
</html>
