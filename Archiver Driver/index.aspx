<%@ Page Title="" Language="C#" MasterPageFile="~/PageMaster.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Archiver_Driver.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Página inicial - Archiver Driver</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [title], [type], [path], [date], [idDoc] FROM [doc]"></asp:SqlDataSource>

    <div class="d-md-flex d-block pt-3 container-fluid">
        <!-- Barra lateral da aplicação -->
        <aside class="col-md-3 d-md-block d-grid border p-3 pt-4">

            <!-- Botão de Pesquisa -->
            <div class="input-group rounded pb-4">
                <input type="search" class="form-control rounded" placeholder="Pesquisar..." aria-label="Search" aria-describedby="search-addon" />
                <span class="input-group-text border-0" id="search-addon">
                    <i class="fas fa-search"></i>
                </span>
            </div>

            <!-- Botão de Upload de arquivos -->
            <div class="d-grid">
                <asp:Label runat="server" CssClass="form-label"> Envie seu documento (PDF):</asp:Label>
                <input id="oFile" type="file" class="form-control form-control-sm" accept="application/pdf" runat="server" name="oFile" />
                <asp:Button ID="btnUpload" CssClass="btn btn-secondary mt-2 text-center btn-sm" type="submit" Text="Upload" runat="server" OnClick="btnUpload_Click1"></asp:Button>
                <asp:Panel ID="frmConfirmation" Visible="False" runat="server">
                    <asp:Label ID="lblUploadResult" runat="server"></asp:Label>
                    <asp:Label ID="ltriduser" runat="server" Visible="false"></asp:Label>
                    <asp:Label ID="ltrCookie" runat="server" Visible="false"></asp:Label>
                </asp:Panel>
            </div>

            <!-- Conteúdo da página  -->
        </aside>
        <article class="container-fluid">
            <asp:Label ID="managerCookie" runat="server" Text="" Visible="false"></asp:Label>
            <asp:Label ID="lblAlt" runat="server"></asp:Label>
            <div class="table-responsive">
                <table class="table table-dark table-hover table-bordered table-sm align-middle caption-top">
                    <caption class="font-weight-bold">Lista de Arquivos do usuário</caption>
                    <tr class="text-center">
                        <th>Título</th>
                        <th>Data</th>
                        <th>Download</th>
                        <th>Remover</th>
                        <th>Alterar</th>
                    </tr>
                    <div id="row_table" runat="server">
                    </div>
                </table>
            </div>
        </article>
    </div>
</asp:Content>
