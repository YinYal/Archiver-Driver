<%@ Page Title="" Language="C#" MasterPageFile="~/PageMaster.Master" AutoEventWireup="true" CodeBehind="users.aspx.cs" Inherits="Archiver_Driver.register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="cpf" DataSourceID="SqlDataSourceusers" InsertItemPosition="LastItem">
        <AlternatingItemTemplate>
            <tr style="background-color:#FFF8DC;">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Excluir" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Editar" />
                </td>
                <td>
                    <asp:Label ID="cpfLabel" runat="server" Text='<%# Eval("cpf") %>' />
                </td>
                <td>
                    <asp:Label ID="emailuserLabel" runat="server" Text='<%# Eval("emailuser") %>' />
                </td>
                <td>
                    <asp:Label ID="nomeuserLabel" runat="server" Text='<%# Eval("nomeuser") %>' />
                </td>
                <td>
                    <asp:Label ID="senhaLabel" runat="server" Text='<%# Eval("senha") %>' />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="background-color:#008A8C;color: #FFFFFF;">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Atualizar" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancelar" />
                </td>
                <td>
                    <asp:Label ID="cpfLabel1" runat="server" Text='<%# Eval("cpf") %>' />
                </td>
                <td>
                    <asp:TextBox ID="emailuserTextBox" runat="server" Text='<%# Bind("emailuser") %>' />
                </td>
                <td>
                    <asp:TextBox ID="nomeuserTextBox" runat="server" Text='<%# Bind("nomeuser") %>' />
                </td>
                <td>
                    <asp:TextBox ID="senhaTextBox" runat="server" Text='<%# Bind("senha") %>' />
                </td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                <tr>
                    <td>Nenhum dado foi retornado.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Inserir" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Limpar" />
                </td>
                <td>
                    <asp:TextBox ID="cpfTextBox" runat="server" Text='<%# Bind("cpf") %>' />
                </td>
                <td>
                    <asp:TextBox ID="emailuserTextBox" runat="server" Text='<%# Bind("emailuser") %>' />
                </td>
                <td>
                    <asp:TextBox ID="nomeuserTextBox" runat="server" Text='<%# Bind("nomeuser") %>' />
                </td>
                <td>
                    <asp:TextBox ID="senhaTextBox" runat="server" Text='<%# Bind("senha") %>' />
                </td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="background-color:#DCDCDC;color: #000000;">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Excluir" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Editar" />
                </td>
                <td>
                    <asp:Label ID="cpfLabel" runat="server" Text='<%# Eval("cpf") %>' />
                </td>
                <td>
                    <asp:Label ID="emailuserLabel" runat="server" Text='<%# Eval("emailuser") %>' />
                </td>
                <td>
                    <asp:Label ID="nomeuserLabel" runat="server" Text='<%# Eval("nomeuser") %>' />
                </td>
                <td>
                    <asp:Label ID="senhaLabel" runat="server" Text='<%# Eval("senha") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                <th runat="server"></th>
                                <th runat="server">CPF</th>
                                <th runat="server">E-mail</th>
                                <th runat="server">Nome</th>
                                <th runat="server">Senha</th>
                            </tr>
                            <tr id="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                        <asp:DataPager ID="DataPager1" runat="server">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Excluir" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Editar" />
                </td>
                <td>
                    <asp:Label ID="cpfLabel" runat="server" Text='<%# Eval("cpf") %>' />
                </td>
                <td>
                    <asp:Label ID="emailuserLabel" runat="server" Text='<%# Eval("emailuser") %>' />
                </td>
                <td>
                    <asp:Label ID="nomeuserLabel" runat="server" Text='<%# Eval("nomeuser") %>' />
                </td>
                <td>
                    <asp:Label ID="senhaLabel" runat="server" Text='<%# Eval("senha") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSourceusers" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [usuario] WHERE [cpf] = @cpf" InsertCommand="INSERT INTO [usuario] ([cpf], [emailuser], [nomeuser], [senha]) VALUES (@cpf, @emailuser, @nomeuser, @senha)" SelectCommand="SELECT [cpf], [emailuser], [nomeuser], [senha] FROM [usuario]" UpdateCommand="UPDATE [usuario] SET [emailuser] = @emailuser, [nomeuser] = @nomeuser, [senha] = @senha WHERE [cpf] = @cpf">
        <DeleteParameters>
            <asp:Parameter Name="cpf" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="cpf" Type="String" />
            <asp:Parameter Name="emailuser" Type="String" />
            <asp:Parameter Name="nomeuser" Type="String" />
            <asp:Parameter Name="senha" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="emailuser" Type="String" />
            <asp:Parameter Name="nomeuser" Type="String" />
            <asp:Parameter Name="senha" Type="String" />
            <asp:Parameter Name="cpf" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </asp:Content>
