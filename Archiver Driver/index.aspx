<%@ Page Title="" Language="C#" MasterPageFile="~/PageMaster.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Archiver_Driver.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [doc] WHERE [idUser] = @idUser" InsertCommand="INSERT INTO [doc] ([title], [ex], [path]) VALUES (@title, @ex, @path)" SelectCommand="SELECT [idUser], [title], [ex], [path] FROM [doc]" UpdateCommand="UPDATE [doc] SET [title] = @title, [ex] = @ex, [path] = @path WHERE [idUser] = @idUser">
            <DeleteParameters>
                <asp:Parameter Name="idUser" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="title" Type="String" />
                <asp:Parameter Name="ex" Type="String" />
                <asp:Parameter Name="path" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="title" Type="String" />
                <asp:Parameter Name="ex" Type="String" />
                <asp:Parameter Name="path" Type="String" />
                <asp:Parameter Name="idUser" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

    <div class="d-md-flex d-block">
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
            <article>
                <h2>Página inicial</h2>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ut viverra nisi. Vestibulum sagittis rhoncus sagittis. Duis elementum, justo ultricies aliquet mattis, lacus ex maximus odio, sed interdum mauris justo eu nisl. Maecenas ac vulputate arcu. Vivamus at massa vehicula, rhoncus urna a, lobortis nisi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aenean vitae odio et orci congue tincidunt in in diam. Suspendisse ullamcorper, augue in mattis euismod, dui metus placerat mauris, in volutpat ante nunc eu odio. Nunc finibus leo neque. Sed porta leo nec porta viverra. Aenean tincidunt ante at magna gravida, eget rhoncus massa venenatis. Morbi in orci tristique, tempor arcu non, finibus odio. Vivamus auctor a diam pharetra consequat. Aenean lacus enim, vulputate in aliquet et, luctus ultrices purus. Nunc eu dolor sit amet nibh volutpat gravida.</p>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ut viverra nisi. Vestibulum sagittis rhoncus sagittis. Duis elementum, justo ultricies aliquet mattis, lacus ex maximus odio, sed interdum mauris justo eu nisl. Maecenas ac vulputate arcu. Vivamus at massa vehicula, rhoncus urna a, lobortis nisi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aenean vitae odio et orci congue tincidunt in in diam. Suspendisse ullamcorper, augue in mattis euismod, dui metus placerat mauris, in volutpat ante nunc eu odio. Nunc finibus leo neque. Sed porta leo nec porta viverra. Aenean tincidunt ante at magna gravida, eget rhoncus massa venenatis. Morbi in orci tristique, tempor arcu non, finibus odio. Vivamus auctor a diam pharetra consequat. Aenean lacus enim, vulputate in aliquet et, luctus ultrices purus. Nunc eu dolor sit amet nibh volutpat gravida.</p>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ut viverra nisi. Vestibulum sagittis rhoncus sagittis. Duis elementum, justo ultricies aliquet mattis, lacus ex maximus odio, sed interdum mauris justo eu nisl. Maecenas ac vulputate arcu. Vivamus at massa vehicula, rhoncus urna a, lobortis nisi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aenean vitae odio et orci congue tincidunt in in diam. Suspendisse ullamcorper, augue in mattis euismod, dui metus placerat mauris, in volutpat ante nunc eu odio. Nunc finibus leo neque. Sed porta leo nec porta viverra. Aenean tincidunt ante at magna gravida, eget rhoncus massa venenatis. Morbi in orci tristique, tempor arcu non, finibus odio. Vivamus auctor a diam pharetra consequat. Aenean lacus enim, vulputate in aliquet et, luctus ultrices purus. Nunc eu dolor sit amet nibh volutpat gravida.</p>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ut viverra nisi. Vestibulum sagittis rhoncus sagittis. Duis elementum, justo ultricies aliquet mattis, lacus ex maximus odio, sed interdum mauris justo eu nisl. Maecenas ac vulputate arcu. Vivamus at massa vehicula, rhoncus urna a, lobortis nisi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aenean vitae odio et orci congue tincidunt in in diam. Suspendisse ullamcorper, augue in mattis euismod, dui metus placerat mauris, in volutpat ante nunc eu odio. Nunc finibus leo neque. Sed porta leo nec porta viverra. Aenean tincidunt ante at magna gravida, eget rhoncus massa venenatis. Morbi in orci tristique, tempor arcu non, finibus odio. Vivamus auctor a diam pharetra consequat. Aenean lacus enim, vulputate in aliquet et, luctus ultrices purus. Nunc eu dolor sit amet nibh volutpat gravida.</p>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ut viverra nisi. Vestibulum sagittis rhoncus sagittis. Duis elementum, justo ultricies aliquet mattis, lacus ex maximus odio, sed interdum mauris justo eu nisl. Maecenas ac vulputate arcu. Vivamus at massa vehicula, rhoncus urna a, lobortis nisi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aenean vitae odio et orci congue tincidunt in in diam. Suspendisse ullamcorper, augue in mattis euismod, dui metus placerat mauris, in volutpat ante nunc eu odio. Nunc finibus leo neque. Sed porta leo nec porta viverra. Aenean tincidunt ante at magna gravida, eget rhoncus massa venenatis. Morbi in orci tristique, tempor arcu non, finibus odio. Vivamus auctor a diam pharetra consequat. Aenean lacus enim, vulputate in aliquet et, luctus ultrices purus. Nunc eu dolor sit amet nibh volutpat gravida.</p>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ut viverra nisi. Vestibulum sagittis rhoncus sagittis. Duis elementum, justo ultricies aliquet mattis, lacus ex maximus odio, sed interdum mauris justo eu nisl. Maecenas ac vulputate arcu. Vivamus at massa vehicula, rhoncus urna a, lobortis nisi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aenean vitae odio et orci congue tincidunt in in diam. Suspendisse ullamcorper, augue in mattis euismod, dui metus placerat mauris, in volutpat ante nunc eu odio. Nunc finibus leo neque. Sed porta leo nec porta viverra. Aenean tincidunt ante at magna gravida, eget rhoncus massa venenatis. Morbi in orci tristique, tempor arcu non, finibus odio. Vivamus auctor a diam pharetra consequat. Aenean lacus enim, vulputate in aliquet et, luctus ultrices purus. Nunc eu dolor sit amet nibh volutpat gravida.</p>
            </article>
        </div>
    </div>
</asp:Content>
