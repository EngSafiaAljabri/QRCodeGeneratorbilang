<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QRArbic.aspx.cs" Inherits="QRCodeGenerator.QRArbic" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" dir="rtl">
<head runat="server">
    <title>مولد رمز الاستجابة السريعة</title>
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
            <h1>مولد رمز الاستجابة السريعة</h1>
            <asp:TextBox ID="txtUrl" runat="server" placeholder="أدخل الرابط"></asp:TextBox>
            <asp:Button ID="btnGenerate" runat="server" Text="إنشاء رمز الاستجابة السريعة" OnClick="btnGenerate_Click" />
            <asp:Image ID="imgQRCode" runat="server" CssClass="qr-code" />
        </div>
    </form>
</body>
</html>