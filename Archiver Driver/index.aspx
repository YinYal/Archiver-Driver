<%@ Page Title="" Language="C#" MasterPageFile="~/PageMaster.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Archiver_Driver.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Página inicial - Archiver Driver</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [title], [type], [path], [date], [idDoc] FROM [doc]">
    </asp:SqlDataSource>

    <div class="d-md-flex d-block pt-1">
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
                    <asp:Label ID="LblCookie" runat="server" Visible="false"></asp:Label>
                </asp:Panel>
            </div>

            <!-- Conteúdo da página  -->
        </aside>

        <div class="container-fluid text-md-center pt-4">

            <article class="col-4 w-100 gView">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AllowPaging="true" CssClass="gridview"
                    EmptyDataText="Sem arquivos salvos" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="Text" HeaderText="File Name" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="lnkDownload" Text="Download" CommandArgument='<%# Eval("Value") %>' runat="server" OnClick="DownloadFile"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="lnkDelete" Text="Delete" CommandArgument='<%# Eval("Value") %>' runat="server" OnClick="DeleteFile" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="lnkAlt" Text="Alterar" CommandArgument='<%# Eval("Value") %>' runat="server" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="lnkView" Text="Ver" CommandArgument='<%# Eval("Value") %>' runat="server" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    <PagerStyle CssClass="gridview_pager"></PagerStyle>
                </asp:GridView>
            </article>
        </div>
    </div>
</asp:Content>
