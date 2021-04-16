<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UploadSongs.aspx.cs" Inherits="SoundHive.UploadSongs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CssContent" runat="server">
    <webopt:bundlereference runat="server" path="~/Content/UploadSongs" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
    <div>
     <asp:Label ID="Label1" Cssclass="Labels" runat="server" Text="Add an Album"></asp:Label>
    <asp:TextBox ID="TextBox1" Cssclass="TextB" runat="server"></asp:TextBox>
         <br />
        <br />
    <asp:DropDownList Cssclass="DropDownList" ID="DropDownList1" runat="server">
         <asp:ListItem Text="Select an Album" Value="0"></asp:ListItem>
         <asp:ListItem Text="Take Me Home" Value="1"></asp:ListItem>
         <asp:ListItem Text="Four" Value="2"></asp:ListItem>
         <asp:ListItem Text="Midnight Memories" Value="3"></asp:ListItem>
         <asp:ListItem Text="Up All Night" Value="4"></asp:ListItem>
         <asp:ListItem Text="AM" Value="5"></asp:ListItem>
    </asp:DropDownList>
        
    <br />
        <br />
    <asp:Label ID="Label2" Cssclass="Labels" runat="server" Text="Enter Details of Song"></asp:Label>
    <br />
 
    <asp:Label ID="Label3" Cssclass="Labels" runat="server" Text="Title: "></asp:Label>
    <br />
     <asp:TextBox ID="EnterTitle" Cssclass="TextB" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator CssClass="Validator" ID="RequiredFieldValidator1" 
        ControlToValidate="EnterTitle"
        runat="server" 
        ErrorMessage="Please enter title of song">
    </asp:RequiredFieldValidator>

        <br />
    <asp:Label ID="Label4" runat="server" Cssclass="Labels" Text="Genre: "></asp:Label>
    <br />
     <asp:TextBox ID="EnterGenre" Cssclass="TextB" runat="server"></asp:TextBox>
       
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
        ControlToValidate="EnterGenre"
        runat="server" 
        ErrorMessage="Please enter genre of song">
    </asp:RequiredFieldValidator>
    <br />

   <input id="File1" type="file" />
        <br />
    <asp:Button ID="Button1" Cssclass="Button" runat="server" Text="Upload" />
        
    </div>    
      
</asp:Content>
