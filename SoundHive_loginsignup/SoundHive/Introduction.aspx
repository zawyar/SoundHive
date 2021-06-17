<%@ Page Title="" Language="C#" MasterPageFile="~/Guest.Master" AutoEventWireup="true" CodeBehind="Introduction.aspx.cs" Inherits="SoundHive.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <webopt:bundlereference runat="server" path="~/Content/IntroductionCSS" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="bg-image"></div>
    <div>
       <div id="introduction">
           <h1 id="introTitle">Introduction</h1>
           </div>
           <p id="intropara">
    This music app was the brain child of three morons. One of the founders, who was somewhat lit, suggested the name Spnotify, to commemorate ripping off spotify, but the other two brain dead 
    founders decided against it and went with SoundHive. Thus, though reluctantly, SoundHive came into being.
    This site holds a vast library of Rick Rolls and We're no strangers to love You know the rules and so
    do I A full commitment's what I'm thinking of You wouldn't get this from any other guy I just wanna tell you how I'm feeling Gotta make you understand
    Never gonna give you up
    Never gonna let you down
    Never gonna run around and desert you
    Never gonna make you cry
    Never gonna say goodbye
    Never gonna tell a lie and hurt you
    We've known each other for so long
    Your heart's been aching but you're too shy to say it
    Inside we both know what's been going on
    We know the game and we're gonna play it
    And if you ask me how I'm feeling
    Don't tell me you're too blind to see
    Never gonna give you up
    Never gonna let you down
    Never gonna run around and desert you
    Never gonna make you cry
    Never gonna say goodbye
           </p>
       </div>
</asp:Content>
