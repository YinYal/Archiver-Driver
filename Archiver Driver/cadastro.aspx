<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cadastro.aspx.cs" Inherits="ProjetoFinal.cadastro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Cadastro</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="css/bootstrap.css" />
    <link rel="stylesheet" href="css/global.css" />
</head>
<body id="bg-body">
    <!-- Configurações de tamanho da página e ajuste da janela do "meio" -->
    <div class="container-fluid">
        <div class="d-flex aligns-items-center position-absolute top-50 start-50 translate-middle" id="glass">
            <div class="border rounded-3 ps-5 pe-5 pt-3 pb-3">

                <!--FORMULÁRIO DE CADASTRO-->
                <div class="text-white lead" id="cadastro">
                    <form id="form1" runat="server">
                        <h1 class="text-center border-bottom text-uppercase display-5">Cadastro</h1>

                        <div class="form-group mb-1">
                            <label for="nome_cad">Seu nome:</label>
                            <br />
                            <asp:TextBox ID="tbNome" CssClass="form-control" runat="server" Width="254px"></asp:TextBox>
                        </div>

                        <div class="form-group mb-1">
                            <label for="cpf_cad">Seu CPF:</label>
                            <br />
                            <asp:TextBox ID="tbCpf" CssClass="form-control" runat="server" Width="254px"></asp:TextBox>
                        </div>

                        <div class="form-group mb-1">
                            <label for="email_cad">Seu e-mail</label>
                            <br />
                            <asp:TextBox ID="tbEmail" runat="server" CssClass="form-control" Width="254px"></asp:TextBox>
                        </div>

                        <div class="form-group mb-1">
                            <label for="senha_cad">Sua Senha</label>
                            <br />
                            <asp:TextBox ID="tbSenha" runat="server" TextMode="Password" CssClass="form-control" Width="254px"></asp:TextBox>
                        </div>

                        <div class="form-group mb-3">
                            <label for="confsenhacad">Confirme sua senha:</label>
                            <br />
                            <asp:TextBox ID="tbSenhaconfi" runat="server" TextMode="Password" CssClass="form-control" Width="254px"></asp:TextBox>
                        </div>

                            <asp:Button ID="btCadastrar" CssClass="btn btn-primary" runat="server" Text="Cadastrar" OnClick="btCadastrar_Click" />
                        <asp:CompareValidator ID="CompareValidator1" runat="server" CssClass="text-danger" ControlToCompare="tbSenha" ControlToValidate="tbSenhaconfi" ErrorMessage="Senha Incorreta !!"></asp:CompareValidator>

                        <p class="link text-center">Já tem conta?
                            <a href="login.aspx">Ir para Login</a> </p>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <asp:SqlDataSource ID="SqlDataSourceuser" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [usuario] WHERE [cpf] = @cpf" InsertCommand="INSERT INTO [usuario] ([cpf], [emailuser], [senha], [nomeuser]) VALUES (@cpf, @emailuser, @senha, @nomeuser)" SelectCommand="SELECT [cpf], [emailuser], [senha], [nomeuser] FROM [usuario]" UpdateCommand="UPDATE [usuario] SET [emailuser] = @emailuser, [senha] = @senha, [nomeuser] = @nomeuser WHERE [cpf] = @cpf">
        <DeleteParameters>
            <asp:Parameter Name="cpf" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="cpf" Type="String" />
            <asp:Parameter Name="emailuser" Type="String" />
            <asp:Parameter Name="senha" Type="String" />
            <asp:Parameter Name="nomeuser" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="emailuser" Type="String" />
            <asp:Parameter Name="senha" Type="String" />
            <asp:Parameter Name="nomeuser" Type="String" />
            <asp:Parameter Name="cpf" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</body>
</html>
