<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Archiver_Driver.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Logar<br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Email:"></asp:Label>
            <br />
            <asp:TextBox ID="txbEmail" runat="server" Width="220px"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Senha:"></asp:Label>
            <br />
            <asp:TextBox ID="txbpassword" runat="server" Width="219px"></asp:TextBox>
            <br />
            <asp:Button ID="bt_logar" runat="server" OnClick="bt_logar_Click" Text="Entrar" />
        </div>
    </form>
</body>
</html>
