<%@ Page Title="" Language="C#" MasterPageFile="~/PageMaster.Master" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="Archiver_Driver.dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id], [name], [password], [email] FROM [client]" DeleteCommand="DELETE FROM [client] WHERE [Id] = @Id" InsertCommand="INSERT INTO [client] ([name], [password], [email]) VALUES (@name, @password, @email)" UpdateCommand="UPDATE [client] SET [name] = @name, [password] = @password, [email] = @email WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="email" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [contacts] WHERE [Id] = @Id" InsertCommand="INSERT INTO [contacts] ([email], [name], [tell], [subject], [message]) VALUES (@email, @name, @tell, @subject, @message)" SelectCommand="SELECT [Id], [email], [name], [tell], [subject], [message] FROM [contacts]" UpdateCommand="UPDATE [contacts] SET [email] = @email, [name] = @name, [tell] = @tell, [subject] = @subject, [message] = @message WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="tell" Type="String" />
            <asp:Parameter Name="subject" Type="String" />
            <asp:Parameter Name="message" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="tell" Type="String" />
            <asp:Parameter Name="subject" Type="String" />
            <asp:Parameter Name="message" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [doc] WHERE [idUser] = @idUser" InsertCommand="INSERT INTO [doc] ([path], [ex], [title]) VALUES (@path, @ex, @title)" SelectCommand="SELECT [path], [ex], [title], [idUser] FROM [doc]" UpdateCommand="UPDATE [doc] SET [path] = @path, [ex] = @ex, [title] = @title WHERE [idUser] = @idUser">
        <DeleteParameters>
            <asp:Parameter Name="idUser" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="path" Type="String" />
            <asp:Parameter Name="ex" Type="String" />
            <asp:Parameter Name="title" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="path" Type="String" />
            <asp:Parameter Name="ex" Type="String" />
            <asp:Parameter Name="title" Type="String" />
            <asp:Parameter Name="idUser" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [log] WHERE [idLog] = @idLog" InsertCommand="INSERT INTO [log] ([idUser], [title], [stats], [date]) VALUES (@idUser, @title, @stats, @date)" SelectCommand="SELECT [idUser], [title], [stats], [idLog], [date] FROM [log]" UpdateCommand="UPDATE [log] SET [idUser] = @idUser, [title] = @title, [stats] = @stats, [date] = @date WHERE [idLog] = @idLog">
        <DeleteParameters>
            <asp:Parameter Name="idLog" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="idUser" Type="Int32" />
            <asp:Parameter Name="title" Type="String" />
            <asp:Parameter Name="stats" Type="String" />
            <asp:Parameter Name="date" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="idUser" Type="Int32" />
            <asp:Parameter Name="title" Type="String" />
            <asp:Parameter Name="stats" Type="String" />
            <asp:Parameter Name="date" Type="DateTime" />
            <asp:Parameter Name="idLog" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <h2>Tabela de contato</h2>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="882px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="name" HeaderText="nome" SortExpression="name" />
            <asp:BoundField DataField="tell" HeaderText="telefone" SortExpression="tell" />
            <asp:BoundField DataField="subject" HeaderText="assunto" SortExpression="subject" />
            <asp:BoundField DataField="message" HeaderText="mensagem" SortExpression="message" />
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
    </asp:GridView>

    <br />
    <h2>Tabela de usuario</h2>
    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Width="894px" HorizontalAlign="Justify">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" Wrap="False" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="name" HeaderText="nome" SortExpression="name" />
            <asp:BoundField DataField="password" HeaderText="senha" SortExpression="password" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
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
    </asp:GridView>

    <br />

    <h2>Tabela de documentos</h2>
    <asp:GridView ID="GridView4" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="idUser" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" Width="894px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="idUser" HeaderText="id" SortExpression="idUser" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="title" HeaderText="titulo" SortExpression="title" />
            <asp:BoundField DataField="path" HeaderText="caminho" SortExpression="path" />
            <asp:BoundField DataField="ex" HeaderText="extensão" SortExpression="ex" />
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
    </asp:GridView>
    <br />
    <h2>Tabela de logs</h2>
    <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="idLog" DataSourceID="SqlDataSource4" ForeColor="#333333" GridLines="None" Width="894px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="idUser" HeaderText="idUser" SortExpression="idUser" />
            <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
            <asp:BoundField DataField="stats" HeaderText="stats" SortExpression="stats" />
            <asp:BoundField DataField="idLog" HeaderText="idLog" InsertVisible="False" ReadOnly="True" SortExpression="idLog" />
            <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
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
    </asp:GridView>
    </asp:Content>
