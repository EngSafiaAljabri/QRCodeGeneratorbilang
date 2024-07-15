<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QREng.aspx.cs" Inherits="QRCodeGenerator.QREng" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>QR Code Generator</title>
    <style>
        .qr-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        .qr-code {
            max-width: 300px;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="qr-container">
            <h1>QR Code Generator</h1>
            <asp:TextBox ID="txtUrl0" runat="server" placeholder="Enter URL"></asp:TextBox>
            <asp:Button ID="btnGenerate" runat="server" Text="Generate QR Code" OnClick="btnGenerate_Click" />
            <asp:Image ID="imgQRCode0" runat="server" CssClass="qr-code" />
        </div>
    </form>
</body>
</html>