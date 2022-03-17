<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="Archiver_Driver.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Arquivo Enviado para o servidor:
            <input id="oFile" type="file" runat="server" name="oFile">
            <asp:Button ID="btnUpload" type="submit" Text="Upload" runat="server"></asp:Button>
            <asp:Panel ID="frmConfirmation" Visible="False" runat="server">
                <asp:Label ID="lblUploadResult" runat="server"></asp:Label>
                <br />
            </asp:Panel>
            <asp:Label ID="ltrCookie" runat="server" Visible="false"></asp:Label>
        </div>
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
    </form>
</body>
</html>
