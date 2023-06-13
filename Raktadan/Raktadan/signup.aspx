<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="Raktadan.signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>signup</title>
    <link href="signup.css" rel="stylesheet" />
</head>
<body>
    <form class="main" id="form1" runat="server">
        <section>
            <div style="margin-bottom: 29px; height: 312px; width: 495px;">
                <p class="head">SIGN UP</p>
                 <asp:TextBox ID="Txt_first_name" placeholder="First Name" runat="server" Height="26px" Width="176px"></asp:TextBox><br />
                 <asp:TextBox ID="Txt_second_name" placeholder="Last Name" runat="server" Height="26px" Width="176px"></asp:TextBox><br />
                <asp:TextBox ID="Txt_email" placeholder="Email" runat="server" Height="26px" Width="176px" TextMode="Email" ></asp:TextBox><br />
                <asp:TextBox ID="Txt_user" placeholder="Username" runat="server" Height="26px" Width="176px"></asp:TextBox><br />
                <asp:TextBox ID="Txt_pwd" TextMode="Password" placeholder="password" runat="server" Height="26px" Width="176px"></asp:TextBox><br />
                <asp:Button ID="Button1" runat="server" Text="sign up" OnClick="Button1_Click" Height="28px" Width="99px" />
            </div>
        </section>
    </form>
</body>
</html>
