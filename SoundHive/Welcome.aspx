<%@ Page Title="" Language="C#" MasterPageFile="~/Guest.Master" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="SoundHive.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <webopt:bundlereference runat="server" path="~/Content/Welcome" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
        <h2 style="text-align:center; padding-top:20px; font-size: 45px; color: white; font-weight:700;">WELCOME <br /> TO SOUNDHIVE</h2>
     <div class="marsh">
    <img src="Content/Images/rick.png" alt="Rick Roll" style="max-height:100%; max-width: 100%;" />
         <img src="Content/Images/rickAstly.png" alt="Rick Roll" style="max-height:100%; max-width: 100%;" />
 </div>
 <div class=headcontent>
    Feel the Music <i class="fas fa-music"></i>
 </div>
 <div class="content">
    <em>Never Gonna Give you up <br> Never gonna let you down <br> Never gonna run around and desert you <br> Never gonna make you cry <br> Never gonna say goodbye <br> Never gonna tell a lie and hurt you</em> 
 </div>
 <a href="Login" class="button">Join Now</a>
        
</asp:Content>
