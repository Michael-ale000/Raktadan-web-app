<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Raktadan.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin</title>
    <link rel="stylesheet" href="admin.css" />
</head>
<body>
    <div class="container">
       <nav class="navbar">
           <ul>
               <li><a href="#Home">Home</a></li>
               <li><a href="#Donation">Donation Verification</a></li>
               <li><a href="#Request">Request Verification</a></li>
               
           </ul>
       </nav> 
        <section id="Home">
            <h1>Blood Stock</h1>
            <div class="grid-container">
              <div class="grid-item">A+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%Response.Write(dt.Rows[0][1].ToString()); %>unit</div>
              <div class="grid-item">A-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%Response.Write(dt.Rows[1][1].ToString()); %>unit</div>
              <div class="grid-item">B+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%Response.Write(dt.Rows[2][1].ToString()); %>unit</div>  
              <div class="grid-item">B-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%Response.Write(dt.Rows[3][1].ToString()); %>unit</div>
              <div class="grid-item">AB+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%Response.Write(dt.Rows[4][1].ToString()); %>unit</div>
              <div class="grid-item">AB-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%Response.Write(dt.Rows[5][1].ToString()); %>unit</div> 
              <div class="grid-item">O+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%Response.Write(dt.Rows[6][1].ToString()); %>unit</div>
              <div class="grid-item">O-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%Response.Write(dt.Rows[7][1].ToString()); %>unit</div>  
            </div>
        </section>
        <section id="Donation">
            <h1>Donation Verification</h1>
            <table class="table">
                <thead>
                    <tr>
                        <th>Name</th>
                        <th>Age</th>
                        <th>Address</th>
                        <th>Diseases History</th>
                        <th>Blood donated</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td>
                            <form id="donor" runat="server">
                                <asp:Button ID="Button1" runat="server" Text="Accept" />
                                <asp:Button ID="Button2" runat="server" Text="Reject" />
                            </form>
                        </td>
                    </tr>
                </tbody>
            </table>
        </section>
        <section id="Request">
            <h1>Request Verification</h1>
            <p>welcome to our site where you can donate or recieve the blood in an easy manner so be brave to donate and kindly recieve the blood through this portal </p>
        </section>
        
    </div>

</body>
</html>
