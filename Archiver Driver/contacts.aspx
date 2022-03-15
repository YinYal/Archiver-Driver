<%@ Page Title="" Language="C#" MasterPageFile="~/PageMaster.Master" AutoEventWireup="true" CodeBehind="contacts.aspx.cs" Inherits="Archiver_Driver.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Faça contato</h2>

    <div action="#" id="contact" name="contact" method="post">

        <p>Preencha os campos abaixo para entrar em contato com a equipe do aplicativo.</p>

        <p class="red center small">Todos os campos são obrigatórios.</p>

        <div class="form-control">
            <label>Nome completo:</label>
            <asp:TextBox ID="contactName" CssClass="form-control" runat="server"></asp:TextBox>

            <label>Seu e-mail:</label>
            <asp:TextBox ID="contactEmail" CssClass="form-control" runat="server"></asp:TextBox>

            <label>Telefone:</label>
            <asp:TextBox ID="contactTell" CssClass="form-control" runat="server"></asp:TextBox>

            <label>Assuntos:</label>
            <asp:TextBox ID="contactSubject" CssClass="form-control" runat="server"></asp:TextBox>

            <label>Mensagem:</label>
            <asp:TextBox ID="contactMessage" runat="server" CssClass="form-control col-3 mb-4" Height="67px" TextMode="MultiLine" Columns="50" Rows="5" MaxLength="120"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" OnClick="Button1_Click" Text="Enviar" />
        </div>
    </div>
</asp:Content>
