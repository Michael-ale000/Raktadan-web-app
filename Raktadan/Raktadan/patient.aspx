<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="patient.aspx.cs" Inherits="Raktadan.patient" %>

<!DOCTYPE html>
<html>
  <head runat="server">
      <title>patient form</title>
    <link rel="stylesheet" href="patient.css" />
</head>
<body id="main" runat="server">
    <div class="container">
        <form id="Form" runat="server">
            <h3>FILL YOUR DETAILS</h3>
              <input type="text" ID="txt_first_name"  placeholder="First name" runat="server" required />
              <input type="text" ID="txt_last_name" placeholder="Last name"  runat="server"  required />
              <input type="text" ID="txt_age" placeholder="Age"  runat="server"  required />
              <input type="text" ID="txt_address" placeholder="Address"  runat="server"  required />
              <input type="text" ID="txt_phone_number" placeholder="Phone number"  runat="server"  required />
              <br />
            <br />
              <div class="option">
                <label>Gender:</label>
                <div class="select">
                    <select  id="gender" runat="server">
                       <option selected disabled>Choose option</option>
                       <option value="male">Male</option>
                       <option value="female">Female</option>
                    </select>
                </div>
            </div>
            <br/>
            <div class="option"> 
                 <label>Patient Condition:</label>
                 <textarea ID="patient_condition" runat="server" rows="5" columns="80" placeholder="Describe about the diseases you currently suffering or any other past diseases"></textarea>
            </div><br />
            <div class="option">
                <label>Blood You want to request:</label>
                <div class="select">
                    <select  id="blood_requesting" runat="server" required>
                       <option selected disabled>Choose option</option>
                       <option  value="Apos">A+</option>
                       <option value="Aneg" >A-</option>
                        <option value="Bpos">B+</option>
                        <option value="Bneg">B-</option>
                        <option value="ABpos">AB+</option>
                        <option value="ABneg">AB-</option>
                        <option value="Opos">O+</option>
                        <option value="Oneg">O-</option>
                    </select>
                </div>
            </div><br />
            <input type="text" ID="blood_quantity"  placeholder="Quantity of Blood(unit)" runat="server" required />
            <br />
            <div class="option">
                <label>Blood Banks:</label>
                <div class="select">
                    <select  id="blood_bank" runat="server" required>
                       <option selected disabled>Choose option</option>
                       <option value="Eastern Hospital,Dharan">Dharan</option>
                       <option value="Bir Hospital,Kathmandu">Kathmandu</option>
                        <option value="Western Regional Hospital,Pokhara">Pokhara</option>
                        <option value="FarWestern Regional Hospital,Dipayal">Dipayal</option>
                        <option value="Dadheldhura Hospital,Dadheldhura">Dadheldhura</option>
                    </select>
                </div>
            </div><br />
            <div class="btn_next">
                <asp:Button class="Submit" id="Submit" runat="server" Text="SUBMIT" OnClick="Button1_Click" />
            </div>
        </form>
        </div>
</body>
</html>
