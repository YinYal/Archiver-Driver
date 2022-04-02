<%@ Page Title="" Language="C#" MasterPageFile="~/PageMaster.Master" AutoEventWireup="true" CodeBehind="config.aspx.cs" Inherits="Archiver_Driver.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Configurações - Archiver Driver</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="ltrCookie" runat="server" Text="" Visible="false"></asp:Label>
    <h2 class="text-center mt-2 mb-4">Configurações do perfil</h2>

    <div class="form-control mt-2 bg-light">
        <h3>Alterar senha do usuário</h3>
        <p>Precisamos que preencha os campos abaixo. Caso tenha algum problema com a alteração da sua senha, favor entrar em contato conosco na aba de <a href="contacts.aspx">contato</a>.</p>

        <label for="tbSenha" class="form-label">Nova senha :</label>

        <asp:TextBox ID="tbPass" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>

        <div id="passwordHelpBlock" class="form-text mb-2">
            Sua senha deve ter de 8 a 20 caracteres, conter letras e números e não conter espaços, caracteres especiais ou emojis.
        </div>

        <label for="tbSenha" class="form-label">Repita senha:</label>
        <asp:TextBox ID="tbConfiPass" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>

        <div id="passwordHelpBlock1" class="form-text mb-2">
            Sua senha deve ser identica a senha digitada anteriormente.
        </div>
        <asp:CompareValidator ID="CompareValidator1" runat="server" CssClass="text-danger" ControlToCompare="tbPass" ControlToValidate="tbConfiPass" ErrorMessage="As senhas não coincidem!"></asp:CompareValidator>
        <br />
        <div class="text-center pt-3 mb-2">
            <asp:Button ID="btnatualizar" CssClass="btn btn-primary btn-lg ms-auto" runat="server" Text="Atualizar" OnClick="btnatualizar_Click" />
            <asp:Button ID="btClear" runat="server" CssClass="btn btn-danger btn-lg ms-4" OnClick="btClear_Click" Text="Limpar" />
        </div>
    </div>



    <div class="form-control mt-4 bg-light">
        <h3>Alterar nome do usuário</h3>
        <p>Precisamos que preencha os campos abaixo. Caso tenha algum problema com a alteração do seu nome, favor entrar em contato conosco na aba de <a href="contacts.aspx">contato</a>.</p>

        <label for="tbUser" class="form-label">Alterar nome de Usuário :</label>
        <asp:TextBox ID="tbUser" CssClass="form-control mb-2" runat="server"></asp:TextBox>

        <label for="tbUser" class="form-label">Repitir nome de Usuário :</label>
        <asp:TextBox ID="tbtConfiUser" CssClass="form-control mb-2" runat="server"></asp:TextBox>

        <asp:CompareValidator ID="CompareValidator2" runat="server" CssClass="text-danger" ControlToCompare="tbPass" ControlToValidate="tbConfiPass" ErrorMessage="As senhas não coincidem!"></asp:CompareValidator>
        <br />
        <div class="text-center pt-3 mb-2">
            <asp:Button ID="btAttName" CssClass="btn btn-primary btn-lg ms-auto" runat="server" Text="Atualizar" OnClick="btAttName_Click" />
            <asp:Button ID="btClear1" runat="server" CssClass="btn btn-danger btn-lg ms-4" OnClick="btClear1_Click" Text="Limpar" />
        </div>
    </div>
</asp:Content>
