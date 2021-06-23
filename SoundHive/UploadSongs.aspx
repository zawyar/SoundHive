<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UploadSongs.aspx.cs" Inherits="SoundHive.UploadSongs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CssContent" runat="server">
    <webopt:bundlereference runat="server" path="~/Content/UploadSongsCSS" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
 
    <div class="parent">
    <div class="center">
       
    
        <asp:HyperLink  ID="HyperLink1" NavigateUrl="Upload Album.aspx"
 CssClass="btn btn-primary btn-success" runat="server" Text="Add Album"></asp:HyperLink>
         <br />
        <br />
    <asp:DropDownList Cssclass="DropDownList" ID="Album" runat="server">
         
    </asp:DropDownList>
         <asp:RequiredFieldValidator Cssclass="error" ID="RequiredFieldValidator3" 
        ControlToValidate="Album"
        runat="server" 
        ErrorMessage="Please add an album">
    </asp:RequiredFieldValidator>
    <br />
        <br />
    <asp:Label ID="Label2" Cssclass="Labels" runat="server" Text="Enter Details of Song"></asp:Label>
    <br />
 
    <asp:Label ID="Label3" Cssclass="Labels" runat="server" Text="Title: "></asp:Label>
    <br />
     <asp:TextBox ID="EnterTitle" Cssclass="TextB" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator Cssclass="error" ID="RequiredFieldValidator1" 
        ControlToValidate="EnterTitle"
        runat="server" 
        ErrorMessage="Please enter title of song">
    </asp:RequiredFieldValidator>

        <br />
    <br />


   <asp:FileUpload ID="SongUpload" runat="server" />
       <asp:RequiredFieldValidator Cssclass="error" ID="RequiredFieldValidator69" 
        ControlToValidate="SongUpload"
        runat="server" 
        ErrorMessage="Please upload a song file">
    </asp:RequiredFieldValidator>
        <br />
    <asp:Button ID="Button1" Cssclass="Button" runat="server" Text="Upload" OnClick="Button1_Click" />
        
    </div>  
        </div>

      
</asp:Content>
