<%@ Page Title="Alterar" Language="C#" MasterPageFile="~/PageMaster.Master" AutoEventWireup="true" CodeBehind="alt.aspx.cs" Inherits="Archiver_Driver.alt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="ltrCookie" runat="server" Text="" Visible="false"></asp:Label>

    <div class="container-fluid">
        <div class="form-control bg-light mb-3 mt-5 pt-4">
            <h2>Alterar o nome do arquivo</h2>
            <p class="pb-3">
                Para alterar o nome do arquivo digite o novo nome do arquivo no campo "Digite o nome aqui" e em seguida de um click no botão "Atulizar". Ao termino do processo
        você será redirecionado para a <a href="index.aspx">página principal do Archiver Driver</a>.
            </p>
            <div class="input-group d-grid d-sm-flex w-100 pb-4">
                <label id="kk" class="input-group-text" for="tbSenha">Atualizar nome do arquivo: </label>
                <asp:TextBox ID="tbSenha" CssClass="form-control w-auto" onfocus="this.value=''" Text="Digite o nome aqui" runat="server"></asp:TextBox>
                <asp:Button CssClass="btn btn-success" ID="btnatualizar" runat="server" Text="Atualizar" OnClick="btnatualizar_Click" />
            </div>
        </div>
    </div>
</asp:Content>
