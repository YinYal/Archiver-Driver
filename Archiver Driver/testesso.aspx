<%@ Page Title="" Language="C#" MasterPageFile="~/PageMaster.Master" AutoEventWireup="true" CodeBehind="testesso.aspx.cs" Inherits="Archiver_Driver.testesso" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:TextBox ID="TextBox1" runat="server" />
<asp:RequiredFieldValidator ID="reqMin" runat="server"

ControlToValidate="TextBox1"

ErrorMessage="Required Field"

Display="None" />

<asp:Button ID="Button1" runat="server" Text="Submit" />
</asp:Content>
