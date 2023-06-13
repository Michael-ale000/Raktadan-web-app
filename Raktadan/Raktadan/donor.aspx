<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="donor.aspx.cs" Inherits="Raktadan.donor" %>
<!DOCTYPE html>
<html>
  <head runat="server">
      <title>donor form</title>
    <link rel="stylesheet" href="donorreal.css" />
</head>
<body id="main" runat="server">
    <div class="container">
          <form id="Form1">
              <h3>PERSONAL INFORMATION</h3>
              <input type="text" ID="txt_first_name"  placeholder="First name" runat="server" required />
              <input type="text" ID="txt_second_name" placeholder="Last name"  runat="server"  required />
              <input type="text" ID="txt_age" placeholder="Age"  runat="server"  required />
              <input type="text" ID="txt_address" placeholder="Address"  runat="server"  required />
              <input type="text" ID="txt_phone_number" placeholder="Phone number"  runat="server"  required />
              <div class="btn_next">
                  <button type="button" id="Next1">Next</button>
              </div>
          </form>
          <form id="Form2">
            <h3>HEALTH INFORMATION</h3>
            <div class="option">
                <label>Gender:</label>
                <div class="select">
                    <select name="format" id="gender">
                       <option selected disabled>Choose option</option>
                       <option value="male">Male</option>
                       <option value="female">Female</option>
                    </select>
                </div>
            </div>
            <br/>
            <div class="option">
                <label>Blood Type:</label>
                <div class="select">
                    <select name="format" id="blood_type">
                       <option selected disabled>Choose option</option>
                       <option value="Apos">A+</option>
                       <option value="Aneg">A-</option>
                        <option value="Bpos">B+</option>
                        <option value="Bneg">B-</option>
                        <option value="ABpos">AB+</option>
                        <option value="ABneg">AB-</option>
                        <option value="Opos">O+</option>
                        <option value="Oneg">O-</option>
                    </select>
                </div>
            </div><br />
            <div class="option"> 
                 <label>Diseases History:</label>
                 <textarea name="past_diseases" rows="5" columns="80" placeholder="Describe about the diseases you currently suffering or any other past diseases"></textarea>
            </div><br />
            <div class="btn_next">
                <button type="button" id="Back1">Back</button>
                <button type="button" id="Next2">Next</button>
            </div>
        </form>
        <form id="Form3" runat="server">
            <h3>BLOOOD DONATION DETAILS</h3>
             <input type="text" ID="Text1" placeholder="fname"  runat="server"  required />
            <div class="option">
                <label>Blood You Donating:</label>
                <div class="select">
                    <select name="format" id="blood_donating" required>
                       <option selected disabled>Choose option</option>
                       <option value="A+">A+</option>
                       <option value="A-">A-</option>
                        <option value="B+">B+</option>
                        <option value="B-">B-</option>
                        <option value="AB+">AB+</option>
                        <option value="AB-">AB-</option>
                        <option value="O+">O+</option>
                        <option value="O-">O-</option>
                    </select>
                </div>
            </div><br />
            <div class="option">
                <label>Donation Center:</label>
                <div class="select">
                    <select name="format" id="Donation_center" required>
                       <option selected disabled>Choose option</option>
                       <option value="location1">Eastern Hospital,Dharan</option>
                       <option value="location2">Bir Hospital,Kathmandu</option>
                        <option value="location2">Institute Of Medicine(Maharajgunj),Kathmandu</option>
                        <option value="location3">Western Regional Hospital,Pokhara</option>
                        <option value="location4">Red Cross Bloodbank,Pokhara</option>
                        <option value="location5">FarWestern Regional Hospital,Dipayal</option>
                        <option value="location5">Dadheldhura Hospital,Dadheldhura</option>
                    </select>
                </div>
            </div><br />
            <div class="btn_next">
                <button type="button" id="Back2">Back</button>
                <asp:Button class="Submit" id="Submit" runat="server" Text="SUBMIT" OnClick="Button1_Click" />
            </div>
        </form>
        <div class="step-row">
            <div id="progress"></div>
            <div class="step-col"><small>step1</small></div>
            <div class="step-col"><small>step2</small></div>
            <div class="step-col"><small>step3</small></div>
        </div>
    </div>
    <script>
        var Form1 = document.getElementById("Form1");
        var Form2 = document.getElementById("Form2");
        var Form3 = document.getElementById("Form3");

        var Next1 = document.getElementById("Next1");
        var Back1 = document.getElementById("Back1");
        var Next2 = document.getElementById("Next2");
        var Back2 = document.getElementById("Back2");
        var progress = document.getElementById("progress");
        Next1.onclick = function () {
            Form1.style.left = "-450px";
            Form2.style.left = "40px";
            progress.style.width = "300px";
        }
        Back1.onclick = function () {
            Form1.style.left = "40px";
            Form2.style.left = "+550px";
            progress.style.width = "150px";
        }
        Next2.onclick = function () {
            Form2.style.left = "-450px";
            Form3.style.left = "40px";
            progress.style.width = "600px";
        }
        Back2.onclick = function () {
            Form2.style.left = "40px";
            Form3.style.left = "+550px";
            progress.style.width = "300px";
        }
    </script>
    
</body>
</html>
