<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Raktadan.home" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home page</title>
    <link rel="stylesheet" href="home.css"/>
</head>
<body>
    <div class="container">
       <nav class="navbar">
           <ul>
               <li><a href="#home">Home</a></li>
               <li><a href="#about">About</a></li>
               <li><a href="#contact">Contact</a></li>
               <li><a href="login.aspx">Logout</a></li>
           </ul>
       </nav> 
        <section id="home">
            <h1>RAKTADAN</h1>
            <div class="grid-container">
                <div class="grid-item"><a id="link1" href="donaranother.aspx">DONATION</a></div>
                <div class="grid-item"><a id="link2" href="patient.aspx">REQUEST</a></div>
                <div class="grid-item"><a id="link3" href="BloodStock.aspx">BLOOD STOCK</a></div>
            </div>
        </section>
        <section id="about">
            <h2>ABOUT</h2> <br /><br />
            <div class="aboutmain"> The Raktadan is a blood bank management system that is designed to help blood banks to gather blood from various sources.
                The softare is designed to handle the daily donations or requests to the blood bank and search the details when required.
               <br /><h3> OUR OBJECTIVES:</h3>
                -To give information regarding the stock of blood in the community.<br />
                -To make blood donation-receiving cycle easier.<br />
                -To collect and study the data about the donors and receivers.<br />
                -To keep contacts of blood donars for emergency cases.<br />
            </div>
        </section>
        <section id="contact">
            <h2>CONTACT</h2>
            <div class="contactmain">
            <form action="https://formsubmit.co/blooddonation028@gmail.com" method="post"><br/><br />
                <input type="text"  id="txt_first_name" placeholder="Full Name" runat="server" /><br /><br />
                <input type="email" id="txt_emalil" placeholder="Email" runat="server"/><br /><br />
                <select name="Region" placeholder="Choose region">
                    <option>Choose Province</option>
                    <option>Province 1</option>
                    <option>Province 2</option>
                    <option>Bagmati</option>
                    <option>Gandaki</option>
                    <option>Lumbini</option>
                    <option>Karnali</option>
                    <option>Sudur Paschim</option>
                </select><br /><br />
                <textarea name="message" placeholder="Message" rows="10" cols="80"  ></textarea><br/><br />
                <button type="submit">Send</button>
            </form>
             <form>
             </form>
            </div>
        </section>
    </div>

</body>
</html>

