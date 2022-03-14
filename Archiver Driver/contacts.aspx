<%@ Page Title="" Language="C#" MasterPageFile="~/PageMaster.Master" AutoEventWireup="true" CodeBehind="contacts.aspx.cs" Inherits="Archiver_Driver.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Faça contato</h2>

    <form action="#" id="contact" name="contact" method="post">

        <p>Preencha os campos abaixo para entrar em contato com a equipe do aplicativo.</p>

        <p class="red center small">Todos os campos são obrigatórios.</p>

        <p>
            Nome completo:
        </p>
        <p>
            <asp:TextBox ID="contactName" runat="server"></asp:TextBox>
        </p>

        <p>
            Seu e-mail:
        </p>
        <p>
            <asp:TextBox ID="contactEmail" runat="server"></asp:TextBox>
        </p>
        <p>
            Telefone:
        </p>
        <p>
            <asp:TextBox ID="contactTell" runat="server"></asp:TextBox>
        </p>

        <p>
            Assuntos:
        </p>
        <p>
            <asp:TextBox ID="contactSubject" runat="server"></asp:TextBox>
        </p>

        <p>
            Mensagem:
        </p>
        <p>
            <asp:TextBox ID="contactMessage" runat="server" Height="67px" Width="297px" TextMode="MultiLine" Columns="50" Rows="5" MaxLength="120"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Enviar" />
        </p>

    </form>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSourceContact" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="tell" HeaderText="tell" SortExpression="tell" />
            <asp:BoundField DataField="subject" HeaderText="subject" SortExpression="subject" />
            <asp:BoundField DataField="message" HeaderText="message" SortExpression="message" />
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
    <asp:SqlDataSource ID="SqlDataSourceContact" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [contacts] WHERE [Id] = @Id" InsertCommand="INSERT INTO [contacts] ([email], [name], [tell], [subject], [message]) VALUES (@email, @name, @tell, @subject, @message)" SelectCommand="SELECT [Id], [email], [name], [tell], [subject], [message] FROM [contacts]" UpdateCommand="UPDATE [contacts] SET [email] = @email, [name] = @name, [tell] = @tell, [subject] = @subject, [message] = @message WHERE [Id] = @Id">
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
</asp:Content>
