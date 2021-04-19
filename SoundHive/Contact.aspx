<%@ Page Title="" Language="C#" MasterPageFile="~/Guest.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="SoundHive.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <webopt:bundlereference runat="server" path="~/Content/Contact" />
  <head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Document</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.min.css">
  <link rel="stylesheet" href="style.css">
</head>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="fluid-container">
    <div class="container">
      <div class="col-lg-12 row main-section animated jackInTheBox">
        <div class="col-lg-5 detail-section">
          <div class="information">
            <h2 class="heading__h2">Contact Us</h2>
          
            <div class="little-info">
             
              <br>
              
            </div>
            <p style="font-weight:500; font-size:0.9em; margin:0 auto; padding:0;">In our humble opinion, no one should, to clarify, no one sane should be contacting us but if you are one of those people who desperately need to see the "Manager"
        , To cater to this species, we have provided some contacts which you can use to fulfill your Managerial Desires.
            </p>
              <br>
              <br>
              <h6 class="heading__h2" style="font-weight:500; font-size: 1.3em">Phone:</h6>
              <h6 class="heading__h21" style="font-weight:300">+92 900 78601</h6>
              <h6 class="heading__h2" style="font-weight:500; font-size: 1.3em">Email:</h6>
              <h6 class="heading__h21" style="font-weight:300">soundHive@support.com</h6>
              <h6 class="heading__h2" style="font-weight:500; font-size: 1.3em">Address:</h6>
              <h6 class="heading__h21" style="font-weight:300">852-B Milaad St, Block B Faisal Town, Lahore, Punjab 54770</h6>
          </div>
        </div>
        <div class="col-lg-7 form-section">
          <div class="form-conatiner">
            <h2 class="heading__h2"><img src="favicon.ico"/ style="height: 6% ; width: 6%"> SoundHive</h2>
            <br><br>
            <form action="/">
              <label for="name">NAME</label>
              <input type="text" id="name" placeholder="Enter your full name">
              <label for="name">EMAIL</label>
              <input type="text" id="name" placeholder="Enter your email address">
              <label for="name">MESSAGE</label>
               <br>
              <textarea rows="10" cols="54"></textarea>
                <br>
              <input type="checkbox" id="checbox">
              <span> I agree that <span><b>I want to see the Manager</b></span></span>
              <br><br>
              <center><button class="button">Send</button></center>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</asp:Content>
