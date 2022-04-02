<%@ Page Title="" Language="C#" MasterPageFile="~/PageMaster.Master" AutoEventWireup="true" CodeBehind="alt.aspx.cs" Inherits="Archiver_Driver.alt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="ltrCookie" runat="server" Text="" Visible="false"></asp:Label>
    <label id="kk" for="tbSenha">Atualizar nome do arquivo</label>

    <asp:TextBox ID="tbSenha" runat="server"></asp:TextBox>
    <asp:Button ID="btnatualizar" runat="server" Text="Atualizar" OnClick="btnatualizar_Click" />
</asp:Content>
