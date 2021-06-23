<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CreatePlaylist.aspx.cs" Inherits="SoundHive.CreatePlaylist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CssContent" runat="server">
    <webopt:bundlereference runat="server" path="~/Content/UploadSongsCSS" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
 
    <div class="parent">
    <div class="center">
       
    
     <asp:Label ID="Label1" Cssclass="Labels" runat="server" Text="Add a Playlist"></asp:Label>
        

         <br />
        <br />
            <asp:Label ID="Label6" runat="server" Cssclass="Labels" Text="Name: "></asp:Label>

    <asp:Textbox Cssclass="Name" ID="Name" runat="server"></asp:Textbox>
         
    
         <asp:RequiredFieldValidator Cssclass="error" ID="RequiredFieldValidator3" 
        ControlToValidate="Name"
        runat="server" 
        ErrorMessage="Please add a playlist name">
    </asp:RequiredFieldValidator>
    
    <asp:Button ID="Button1" Cssclass="Button" runat="server" Text="Create Playlist" OnClick="Button1_Click" />
        
    </div>  
        </div>

      
</asp:Content>