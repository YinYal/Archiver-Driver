<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="ProjetoFinal.cadastro" %>

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
                            <asp:TextBox ID="tbName" CssClass="form-control" runat="server" Width="254px"></asp:TextBox>
                        </div>

                        <div class="form-group mb-1">
                            <label for="email_cad">Seu e-mail</label>
                            <br />
                            <asp:TextBox ID="tbEmail" runat="server" CssClass="form-control" Width="254px"></asp:TextBox>
                        </div>

                        <div class="form-group mb-1">
                            <label for="senha_cad">Sua Senha</label>
                            <br />
                            <asp:TextBox ID="tbPass" runat="server" TextMode="Password" CssClass="form-control" Width="254px"></asp:TextBox>
                        </div>

                        <div class="form-group mb-3">
                            <label for="confsenhacad">Confirme sua senha:</label>
                            <br />
                            <asp:TextBox ID="tbPassconfi" runat="server" TextMode="Password" CssClass="form-control" Width="254px"></asp:TextBox>
                        </div>

                        <div class="text-center">
                            <asp:CompareValidator ID="CompareValidator1" runat="server" CssClass="text-danger" ControlToCompare="tbPass" ControlToValidate="tbPassconfi" ErrorMessage="Senha Incorreta !!"></asp:CompareValidator>
                            <br />
                            <asp:Button ID="btCadastrar" CssClass="btn btn-primary" runat="server" Text="Cadastrar" OnClick="btCadastrar_Click" />

                            <p class="link text-center">
                                Já tem conta?
                            <a href="login.aspx">Ir para Login</a>
                            </p>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [client] WHERE [Id] = @Id" InsertCommand="INSERT INTO [client] ([name], [password], [email]) VALUES (@name, @password, @email)" SelectCommand="SELECT [Id], [name], [password], [email] FROM [client]" UpdateCommand="UPDATE [client] SET [name] = @name, [password] = @password, [email] = @email WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="email" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>

        </asp:SqlDataSource>
    </div>
</body>
</html>
