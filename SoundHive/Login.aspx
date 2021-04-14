<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SoundHive.Login1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Csscontent" runat="server">
    <webopt:bundlereference runat="server" path="~/Content/Login" />

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div id="header">
  <div class="logo"></div>
</div>
<div id="main">
  <div class="loginfb"></div>
  <div class="linel"></div>
  <div class="liner"></div>
  <div id="form">
    <input name="input" placeholder="Username" type="text" /><input name="input" placeholder="Password" type="password" />
    <h5>
      Remember
    </h5>
    <input class="btn-toggle btn-toggle-round" id="btn-toggle-1" name="remember" type="checkbox" /><label for="btn-toggle-1"></label><input name="login" type="submit" value="Log in" />
  </div>
  <div id="footer">
    <a href="#">Sign Up</a><br /><a href="#">Forgot Password?</a>
  </div>
</div>
    </asp:Content>



