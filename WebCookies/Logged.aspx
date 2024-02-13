<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Logged.aspx.cs" Inherits="WebCookies.Logged" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Logged In</title>
</head>
<body>
    <h2>Logout</h2>
    <form id="form1" runat="server">
        <div>
            : <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>.
            <br />
            <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="BtnLogout_Click" />
        </div>
    </form>
</body>
</html>
