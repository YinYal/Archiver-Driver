<%@ Page Title="" Language="C#" MasterPageFile="~/PageMaster.Master" AutoEventWireup="true" CodeBehind="contacts.aspx.cs" Inherits="Archiver_Driver.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="pt-3">Faça contato</h2>

    <div action="#" id="contact" name="contact" method="post">

        <p>Preencha os campos abaixo para entrar em contato com a equipe do aplicativo.</p>

        <p class="red center small">Todos os campos são obrigatórios.</p>

        <div class="form-control pb-5">
            <label class="form-label">Nome completo:</label>
            <asp:TextBox ID="contactName" CssClass="form-control" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="reqMin" runat="server" ControlToValidate="contactName" Display="None" />

            <label class="form-label">Seu e-mail:</label>
            <asp:TextBox ID="contactEmail" CssClass="form-control" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="contactEmail" Display="None" />

            <label class="form-label">Telefone:</label>
            <asp:TextBox ID="contactTell" CssClass="form-control" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="contactTell" Display="None" />

            <label class="form-label">Assuntos:</label>
            <asp:TextBox ID="contactSubject" CssClass="form-control" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="contactSubject" Display="None" />

            <label class="form-label">Mensagem:</label>
            <asp:TextBox ID="contactMessage" runat="server" CssClass="form-control col-3 mb-4" Height="67px" TextMode="MultiLine" Columns="50" Rows="5" MaxLength="120"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="contactMessage" Display="None" />

            <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" OnClick="Button1_Click" Text="Enviar" />
        </div>
    </div>
</asp:Content>
