<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="as.aspx.cs" Inherits="Archiver_Driver._as" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
          <form id="Form1" method="post" runat="server" enctype="multipart/form-data" action="as.aspx">
         Arquivo Enviado para o servidor: <input id="oFile" type="file" runat="server" name="oFile">
         <asp:button id="btnUpload" type="submit" text="Upload" runat="server"></asp:button>
         <asp:Panel ID="frmConfirmation" Visible="False" Runat="server">
            <asp:Label id="lblUploadResult" Runat="server"></asp:Label>
             <br />
         </asp:Panel>
      </form>
</body>
</html>
