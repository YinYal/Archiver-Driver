<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cadastro.aspx.cs" Inherits="ProjetoFinal.cadastro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
          <title>Formulário de Login e Registro com HTML5 e CSS3</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0" /> 
  <link rel="stylesheet" type="text/css" href="css/logincad.css" />
</head>
<body>

  <div class="container" >     
    <div class="content">   
    
      <!--FORMULÁRIO DE CADASTRO-->
      <div id="cadastro">
        <form id="form1" runat="server">
          <h1>Cadastro</h1> 
           
          <p> 
            <label for="nome_cad">Seu nome:</label>
              <asp:TextBox ID="tbNome" runat="server"></asp:TextBox>
          </p>

            <p>
                <label for="cpf_cad">Seu CPF:</label>
                <asp:TextBox ID="tbCpf" runat="server"></asp:TextBox>
            </p>

          <p> 
            <label for="email_cad">Seu e-mail</label>            
              <asp:TextBox ID="tbEmail" runat="server"></asp:TextBox>
          </p>

            <p> 
            <label for="senha_cad">Sua Senha</label>            
              <asp:TextBox ID="tbSenha" runat="server" TextMode="Password"></asp:TextBox>
          </p>
            <p>
                <label for="confsenhacad">Confirme sua senha:</label>
                <asp:TextBox ID="tbSenhaconfi" runat="server" TextMode="Password"></asp:TextBox>
          </p>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="tbSenha" ControlToValidate="tbSenhaconfi"  ErrorMessage="Senha Incorreta !!"></asp:CompareValidator>
           
          <p>
              <asp:Button ID="btCadastrar" runat="server" Text="Cadastrar" OnClick="btCadastrar_Click" />
          </p>
           
          <p class="link">  
            Já tem conta?
            <a href="login.aspx"> Ir para Login 
              <asp:ListView ID="ListView1" runat="server" DataKeyNames="cpf" DataSourceID="SqlDataSourceuser" InsertItemPosition="LastItem">
                  <AlternatingItemTemplate>
                      <tr style="">
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
                              <asp:Label ID="senhaLabel" runat="server" Text='<%# Eval("senha") %>' />
                          </td>
                          <td>
                              <asp:Label ID="nomeuserLabel" runat="server" Text='<%# Eval("nomeuser") %>' />
                          </td>
                      </tr>
                  </AlternatingItemTemplate>
                  <EditItemTemplate>
                      <tr style="">
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
                              <asp:TextBox ID="senhaTextBox" runat="server" Text='<%# Bind("senha") %>' />
                          </td>
                          <td>
                              <asp:TextBox ID="nomeuserTextBox" runat="server" Text='<%# Bind("nomeuser") %>' />
                          </td>
                      </tr>
                  </EditItemTemplate>
                  <EmptyDataTemplate>
                      <table runat="server" style="">
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
                              <asp:TextBox ID="senhaTextBox" runat="server" Text='<%# Bind("senha") %>' />
                          </td>
                          <td>
                              <asp:TextBox ID="nomeuserTextBox" runat="server" Text='<%# Bind("nomeuser") %>' />
                          </td>
                      </tr>
                  </InsertItemTemplate>
                  <ItemTemplate>
                      <tr style="">
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
                              <asp:Label ID="senhaLabel" runat="server" Text='<%# Eval("senha") %>' />
                          </td>
                          <td>
                              <asp:Label ID="nomeuserLabel" runat="server" Text='<%# Eval("nomeuser") %>' />
                          </td>
                      </tr>
                  </ItemTemplate>
                  <LayoutTemplate>
                      <table runat="server">
                          <tr runat="server">
                              <td runat="server">
                                  <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                      <tr runat="server" style="">
                                          <th runat="server"></th>
                                          <th runat="server">cpf</th>
                                          <th runat="server">emailuser</th>
                                          <th runat="server">senha</th>
                                          <th runat="server">nomeuser</th>
                                      </tr>
                                      <tr id="itemPlaceholder" runat="server">
                                      </tr>
                                  </table>
                              </td>
                          </tr>
                          <tr runat="server">
                              <td runat="server" style="">
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
                      <tr style="">
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
                              <asp:Label ID="senhaLabel" runat="server" Text='<%# Eval("senha") %>' />
                          </td>
                          <td>
                              <asp:Label ID="nomeuserLabel" runat="server" Text='<%# Eval("nomeuser") %>' />
                          </td>
                      </tr>
                  </SelectedItemTemplate>
              </asp:ListView>
              <asp:SqlDataSource ID="SqlDataSourceuser" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [usuario] WHERE [cpf] = @cpf" InsertCommand="INSERT INTO [usuario] ([cpf], [emailuser], [senha], [nomeuser]) VALUES (@cpf, @emailuser, @senha, @nomeuser)" SelectCommand="SELECT [cpf], [emailuser], [senha], [nomeuser] FROM [usuario]" UpdateCommand="UPDATE [usuario] SET [emailuser] = @emailuser, [senha] = @senha, [nomeuser] = @nomeuser WHERE [cpf] = @cpf">
                  <DeleteParameters>
                      <asp:Parameter Name="cpf" Type="String" />
                  </DeleteParameters>
                  <InsertParameters>
                      <asp:Parameter Name="cpf" Type="String" />
                      <asp:Parameter Name="emailuser" Type="String" />
                      <asp:Parameter Name="senha" Type="String" />
                      <asp:Parameter Name="nomeuser" Type="String" />
                  </InsertParameters>
                  <UpdateParameters>
                      <asp:Parameter Name="emailuser" Type="String" />
                      <asp:Parameter Name="senha" Type="String" />
                      <asp:Parameter Name="nomeuser" Type="String" />
                      <asp:Parameter Name="cpf" Type="String" />
                  </UpdateParameters>
              </asp:SqlDataSource>
              </a>
          </p>
        </form>
      </div>
    </div>
  </div>

</body>
</html>
