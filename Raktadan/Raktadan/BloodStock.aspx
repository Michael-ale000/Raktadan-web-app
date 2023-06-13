<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BloodStock.aspx.cs" Inherits="Raktadan.BloodStock" %>

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
               <li><a href="home.aspx">Home</a></li>
               
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
        
    </div>

</body>
</html>
