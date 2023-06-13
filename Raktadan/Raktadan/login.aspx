<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Raktadan.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>login</title>
    <link href="login.css" rel="stylesheet" />
    <h1 style="height: 43px">RAKTADAN</h1>
</head>
<body>
    <form id="form1" runat="server">
        <div class="box">
            <p class="login">login</p>
                <div class="main" style="margin-right: 0px">
                   <asp:TextBox ID="username" placeholder="username" runat="server"></asp:TextBox><br />
                   <asp:TextBox ID="password" TextMode="Password" placeholder="password" runat="server"></asp:TextBox><br />
                   <asp:Button ID="Button1" runat="server" Text="submit" OnClick="Submit_Click" /><br />
                   Not a member?<br />
                   <asp:Button ID="Button2" runat="server" Text="sign up" OnClick="Signup_Click" />
               </div>
        </div>
    </form>
</body>
</html>
