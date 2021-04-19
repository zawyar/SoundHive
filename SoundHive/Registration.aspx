<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="SoundHive.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CssContent" runat="server">
     <webopt:bundlereference runat="server" path="~/Content/Registration" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Document</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.min.css">
  <link rel="stylesheet" href="style.css">
</head>

<body>
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
            <h2 class="heading__h2"><i style="font-size: 1.5em;" class="fa fa-spotify"></i> Spotify</h2>
            <br><br>
            <p class="links__p"><a href="#">Sign In</a> | <a href="#" style="font-weight:700;">Sign Up</a></p>
            <form action="/">
              <label for="name">NAME</label>
              <input type="text" id="name" placeholder="Enter your full name">
              <label for="name">EMAIL</label>
              <input type="text" id="name" placeholder="Enter your email address">
              <label for="name">PASSWORD</label>
              <input type="text" id="name" placeholder="Set a strong password">
              <input type="checkbox" id="checbox">
              <span> I agree at <span><b>terms and conditions</b></span></span>
              <br><br>
              <center><button class="button">Sign Up</button></center>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</body>
</asp:Content>
