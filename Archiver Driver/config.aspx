<%@ Page Title="" Language="C#" MasterPageFile="~/PageMaster.Master" AutoEventWireup="true" CodeBehind="config.aspx.cs" Inherits="Archiver_Driver.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Configurações - Archiver Driver</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Configurações do sistema</h2>

    <asp:Label ID="ltrCookie" runat="server" Text="" Visible="false"></asp:Label>
     <label for="tbSenha">Atualizar Senha</label>
            
              <asp:TextBox ID="tbSenha" runat="server" TextMode="Password"></asp:TextBox>
            <asp:Button ID="btnatualizar" runat="server" Text="Atualizar" OnClick="btnatualizar_Click" /> 
</asp:Content>