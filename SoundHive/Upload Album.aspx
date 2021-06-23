<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Upload Album.aspx.cs" Inherits="SoundHive.Upload_Album" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CssContent" runat="server">
    <webopt:bundlereference runat="server" path="~/Content/UploadSongsCSS" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
 
    <div class="parent">
    <div class="center">
       
    
     <asp:Label ID="Label1" Cssclass="Labels" runat="server" Text="Add an Album"></asp:Label>
        

         <br />
        <br />
            <asp:Label ID="Label6" runat="server" Cssclass="Labels" Text="Name: "></asp:Label>

    <asp:Textbox Cssclass="Name" ID="Name" runat="server"></asp:Textbox>
         
    
         <asp:RequiredFieldValidator Cssclass="error" ID="RequiredFieldValidator3" 
        ControlToValidate="Name"
        runat="server" 
        ErrorMessage="Please add an album name">
    </asp:RequiredFieldValidator>
    <br />
        <br />
        <label for="Release Date">Album Release Date</label>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>     <asp:Calendar ID="ReeleaseDate" runat="server" BorderStyle="Solid" NextPrevFormat="CustomText" TitleStyle-BorderStyle="Dashed" SelectionMode="Day" SelectedDate="1/1/1980 12:00:00 AM" VisibleDate="1/1/1980 12:00:00 AM"></asp:Calendar>
                       </ContentTemplate>
                        </asp:UpdatePanel>
                        
    
 
  
    <asp:Label ID="Label4" runat="server" Cssclass="Labels" Text="Genre: "></asp:Label>
    <br />
     <asp:DropDownList id="EnterGenre"  runat="server"></asp:DropDownList>
       
    <asp:RequiredFieldValidator Cssclass="error" ID="RequiredFieldValidator2" 
        ControlToValidate="EnterGenre"
        runat="server" 
        ErrorMessage="Please enter genre of song">
    </asp:RequiredFieldValidator>
    <br />
            <asp:Label ID="Label9" runat="server" Cssclass="Labels" Text="Album Image: "></asp:Label>

   <asp:FileUpload  id="AlbumImageUpload" runat="server"></asp:FileUpload>
        <asp:RequiredFieldValidator Cssclass="error" ID="RequiredFieldValidator7" 
        ControlToValidate="AlbumImageUpload"
        runat="server" 
        ErrorMessage="Please enter genre of song">
    </asp:RequiredFieldValidator>
        <br />
    <asp:Button ID="Button1" Cssclass="Button" runat="server" Text="Create Album" OnClick="Button1_Click" />
        
    </div>  
        </div>

      
</asp:Content>
