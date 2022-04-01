<%@ Page Title="" Language="C#" MasterPageFile="~/PageMaster.Master" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="Archiver_Driver.dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Dashboard - Archiver Driver</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id], [email], [name], [password], [adm] FROM [client]" DeleteCommand="DELETE FROM [client] WHERE [Id] = @Id" InsertCommand="INSERT INTO [client] ([email], [name], [password], [adm]) VALUES (@email, @name, @password, @adm)" UpdateCommand="UPDATE [client] SET [email] = @email, [name] = @name, [password] = @password, [adm] = @adm WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="adm" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="adm" Type="Boolean" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id], [email], [name], [tell], [subject], [message] FROM [contacts]" DeleteCommand="DELETE FROM [contacts] WHERE [Id] = @Id" InsertCommand="INSERT INTO [contacts] ([email], [name], [tell], [subject], [message]) VALUES (@email, @name, @tell, @subject, @message)" UpdateCommand="UPDATE [contacts] SET [email] = @email, [name] = @name, [tell] = @tell, [subject] = @subject, [message] = @message WHERE [Id] = @Id">
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
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [idDoc], [idUser], [title], [type], [path], [date] FROM [doc]" DeleteCommand="DELETE FROM [doc] WHERE [idDoc] = @idDoc" InsertCommand="INSERT INTO [doc] ([idUser], [title], [type], [path], [date]) VALUES (@idUser, @title, @type, @path, @date)" UpdateCommand="UPDATE [doc] SET [idUser] = @idUser, [title] = @title, [type] = @type, [path] = @path, [date] = @date WHERE [idDoc] = @idDoc">
        <DeleteParameters>
            <asp:Parameter Name="idDoc" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="idUser" Type="String" />
            <asp:Parameter Name="title" Type="String" />
            <asp:Parameter Name="type" Type="String" />
            <asp:Parameter Name="path" Type="String" />
            <asp:Parameter Name="date" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="idUser" Type="String" />
            <asp:Parameter Name="title" Type="String" />
            <asp:Parameter Name="type" Type="String" />
            <asp:Parameter Name="path" Type="String" />
            <asp:Parameter Name="date" Type="DateTime" />
            <asp:Parameter Name="idDoc" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [idLog], [idUser], [title], [stats], [date] FROM [log]"></asp:SqlDataSource>

    <br />

    <div class="text-center">

        <div class="form-control bg-secondary">
            <h2 class="text-light pb-2">Tabela de Usuario </h2>

            <asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered table-condensed table-responsive table-light table-striped" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" InsertVisible="False" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                    <asp:CheckBoxField DataField="adm" HeaderText="adm" SortExpression="adm" />
                </Columns>
            </asp:GridView>
        </div>
        <asp:Label ID="Label1" runat="server" Visible="false"></asp:Label>

        <br />

        <div class="form-control bg-secondary">
            <h2 class="text-light pb-2">Tabela de contato</h2>

            <asp:GridView ID="GridView2" runat="server" AllowPaging="True" CssClass="table table-bordered table-condensed table-responsive table-light table-striped" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="tell" HeaderText="tell" SortExpression="tell" />
                    <asp:BoundField DataField="subject" HeaderText="subject" SortExpression="subject" />
                    <asp:BoundField DataField="message" HeaderText="message" SortExpression="message" />
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
        </div>


    <br />

    <div class="form-control bg-secondary">
        <h2 class="text-light pb-2">Tabela de logs</h2>

            <asp:GridView ID="GridView4" runat="server" AllowPaging="True" CssClass="table table-bordered table-condensed table-responsive table-light table-striped" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="idLog" DataSourceID="SqlDataSource4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="idLog" HeaderText="idLog" InsertVisible="False" ReadOnly="True" SortExpression="idLog" />
                    <asp:BoundField DataField="idUser" HeaderText="idUser" SortExpression="idUser" />
                    <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                    <asp:BoundField DataField="stats" HeaderText="stats" SortExpression="stats" />
                    <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666"  ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
        </div>
    </div>
</asp:Content>
