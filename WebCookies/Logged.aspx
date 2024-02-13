<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Logged.aspx.cs" Inherits="WebCookies.Logged" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Logged In</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row justify-content-center align-items-center d-flex flex-column">
                <h2>Benvenuto</h2>
                <div class="col-4 my-5">
                    <div class="card">
                        <div style="background-color: rgba(0, 0, 0, 0.8); color: white; padding: 20px; border-radius: 10px;">
                            :
                        <asp:Label ID="Label1" runat="server" Text="Label" Style="color: white;"></asp:Label>.
               
                        <br />
                            <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="BtnLogout_Click" CssClass="border-0 p-2 bg-transparent text-light logout" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
