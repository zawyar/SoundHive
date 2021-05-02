<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="SoundHive.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CssContent" runat="server">
     <webopt:bundlereference runat="server" path="~/Content/RegistrationCSS" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
      <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.min.css">
      <link rel="stylesheet" href="style.css">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

  

  <div class="fluid-container">
    <div class="container">
      <div class="col-lg-12 row main-section animated jackInTheBox">
        <div class="col-lg-5 detail-section">
          <div class="information">
            <h2 class="heading__h2">Music for everyone.</h2>
            <h3 class="heading__h3">Premium Subscription</h3>
            <div class="little-info">
              <h2 class="heading__h2__1">$9.99 / month</h2>
              <li>Shuffle play</li>
              <li>Ad Free</li>
              <li>Unlimited skips</li>
              <li>Listen Offline</li>
              <li>Play any track</li>
              <li>High Quality Audio</li>
              <span style="font-size:0.85em;">Lorem ipsum dolor sit amet.</span>
              <br>
              <span style="font-size:0.85em;">Lorem ipsum dolor sit amet.</span>
            </div>
            <p style="font-size:0.6em; margin:0 auto; padding:0;">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quis, odio! Lorem ipsum dolor. Lorem ipsum dolor sit amet.</p>
          </div>
        </div>
        <div class="col-lg-7 form-section">
          <div class="form-conatiner">
            <h2 class="heading__h2"><img src="favicon.ico" style="height:5%;width:5%"></img> SoundHive</h2>
            <p class="links__p"><a href="Login">Sign In</a> | <a href="/Registration" style="font-weight:700;">Sign Up</a></p>

            <br><br>
              <label for="name">NAME</label>
              <asp:Textbox  ID="name"  runat="server"></asp:Textbox>
              <asp:RequiredFieldValidator Cssclass="error" ID="RequiredFieldValidator3" 
        ControlToValidate="name"
        runat="server" 
        ErrorMessage="Please enter name">
    </asp:RequiredFieldValidator>
              <br />
              <br />
              <label for="email">EMAIL</label>
              <asp:Textbox  ID="email"  runat="server"></asp:Textbox>
              <asp:RequiredFieldValidator Cssclass="error" ID="RequiredFieldValidator1" 
        ControlToValidate="email"
        runat="server" 
        ErrorMessage="Please enter email">
    </asp:RequiredFieldValidator>
              <br />
              <br />
              <label for="name">PASSWORD</label>
              <asp:Textbox  ID="Textbox2"  runat="server"></asp:Textbox>
              <asp:RequiredFieldValidator Cssclass="error" ID="RequiredFieldValidator2" 
        ControlToValidate="Textbox2"
        runat="server" 
        ErrorMessage="Please enter password">
    </asp:RequiredFieldValidator>
              <br />
              <br />
              <asp:CheckBox runat="server"></asp:CheckBox>
               <span> I agree at <span><b>terms and conditions</b></span></span>
              <br><br>
              <center><button class="button">Sign Up</button></center>
          </div>
        </div>
      </div>
    </div>
  </div>

</asp:Content>
