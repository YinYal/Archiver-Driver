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

    <div class="container-fluid">
    <div class="d-flex aligns-items-center position-absolute top-50 start-50 translate-middle" id="glass">
        <div class="border rounded-3 p-5 text-uppercase text-white">
                    <!--FORMULÁRIO DE CADASTRO-->
                    <div id="cadastro">
                        <form id="form1" runat="server">
                            <h1 class="text-center">Cadastro</h1>

                            <p>
                                <label for="nome_cad">Seu nome:</label> <br />
                                <asp:TextBox ID="tbNome" runat="server" Width="254px"></asp:TextBox>
                            </p>

                            <p>
                                <label for="cpf_cad">Seu CPF:</label> <br />
                                <asp:TextBox ID="tbCpf" runat="server" Width="254px"></asp:TextBox>
                            </p>

                            <p>
                                <label for="email_cad">Seu e-mail</label> <br />
                                <asp:TextBox ID="tbEmail" runat="server" Width="254px"></asp:TextBox>
                            </p>

                            <p>
                                <label for="senha_cad">Sua Senha</label> <br />
                                <asp:TextBox ID="tbSenha" runat="server" TextMode="Password" Width="254px"></asp:TextBox>
                            </p>
                            <p>
                                <label for="confsenhacad">Confirme sua senha:</label> <br />
                                <asp:TextBox ID="tbSenhaconfi" runat="server" TextMode="Password" Width="254px"></asp:TextBox>
                            </p>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="tbSenha" ControlToValidate="tbSenhaconfi" ErrorMessage="Senha Incorreta !!"></asp:CompareValidator>

                            <p>
                                <asp:Button ID="btCadastrar" runat="server" Text="Cadastrar" OnClick="btCadastrar_Click" />
                            </p>

                            <p class="link">
                                Já tem conta?
            <a href="login.aspx">
                        Ir para Login 
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
        </a>
          </p>
        </form>
    </div>


</body>
</html>
