<%@ Page Title="" Language="C#" MasterPageFile="~/PageMaster.Master" AutoEventWireup="true" CodeBehind="contacts.aspx.cs" Inherits="Archiver_Driver.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Faça contato</h2>
      <form action="#" id="contact" name="contact" method="post">

        <p>Preencha os campos abaixo para entrar em contato com a equipe do aplicativo.</p>

        <p class="red center small">Todos os campos são obrigatórios.</p>

        <p>
            Nome completo:</p>
          <p>
            &nbsp;<asp:TextBox ID="contactName" runat="server"></asp:TextBox>
        </p>

        <p>
            Seu e-mail:</p>
          <p>
            &nbsp;<asp:TextBox ID="contactEmail" runat="server"></asp:TextBox>
        </p>
          <p>
              <p>
            Telefone:
            </p>
          <p>
            <asp:TextBox ID="contactNumber" runat="server"></asp:TextBox>
        </p>
          </p>

        <p>
            Assuntos:</p>
          <p>
            &nbsp;<asp:TextBox ID="contactAssunto" runat="server"></asp:TextBox>
        </p>

        <p>
            Mensagem:</p>
          <p>
            &nbsp;<asp:TextBox ID="contactMessage" runat="server" Height="67px" Width="297px" TextMode="MultiLine" Columns ="50" Rows ="5" MaxLength="120"></asp:TextBox>
        </p>
          <p>
              <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Enviar" />
        </p>
        

        
    </form>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSourceContact" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="nome" HeaderText="nome" SortExpression="nome" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="telefone" HeaderText="telefone" SortExpression="telefone" />
            <asp:BoundField DataField="assunto" HeaderText="assunto" SortExpression="assunto" />
            <asp:BoundField DataField="mensagem" HeaderText="mensagem" SortExpression="mensagem" />
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
    <asp:SqlDataSource ID="SqlDataSourceContact" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [contato] WHERE [Id] = @Id" InsertCommand="INSERT INTO [contato] ([nome], [email], [telefone], [assunto], [mensagem]) VALUES (@nome, @email, @telefone, @assunto, @mensagem)" SelectCommand="SELECT [Id], [nome], [email], [telefone], [assunto], [mensagem] FROM [contato]" UpdateCommand="UPDATE [contato] SET [nome] = @nome, [email] = @email, [telefone] = @telefone, [assunto] = @assunto, [mensagem] = @mensagem WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="nome" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="telefone" Type="String" />
            <asp:Parameter Name="assunto" Type="String" />
            <asp:Parameter Name="mensagem" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="nome" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="telefone" Type="String" />
            <asp:Parameter Name="assunto" Type="String" />
            <asp:Parameter Name="mensagem" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
