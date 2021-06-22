<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="edit-profile.aspx.cs" Inherits="SoundHive.edit_profile" %>
<asp:Content ID="css" ContentPlaceHolderID="CssContent" runat="server">
	<webopt:bundlereference runat="server" path="~/EditProfile" />
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	<div class="" style="box-sizing:border-box;">
				<h1 class="title">Edit Profile</h1>

	<div>
	<div class="grid">
		<div class="form-group a">
			<label id="UserAlreadyExists" runat="server"></label>
			<label for="name">USERNAME</label>
			<asp:Textbox ID="name" runat="server" ></asp:Textbox>
		</div>
		<div class="form-group b">
			<label for="password">PASSWORD</label>
                       <%-- <input type="password" id="Password" runat="server">--%>
						<asp:TextBox type="password" ID="Password" runat="server"></asp:TextBox>
             
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2"
                            runat="server" ControlToValidate="password"
                            ErrorMessage="Password must be a minimum of eight characters, having atleast one letter and one number"
                            ForeColor="Red"
                            ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$">

                        </asp:RegularExpressionValidator>
		</div>
<%--		<div class="form-group b">
			<label for="firstname">First Name</label>
			<asp:Textbox ID="firstname"  runat="server"></asp:Textbox>
		</div>--%>

		<div class="form-group email-group">
			 <label for="email">EMAIL</label>
                        <asp:TextBox ID="email" runat="server"></asp:TextBox>
       
                        <asp:RegularExpressionValidator
                            ID="RegularExpressionValidator1"
                            runat="server"
                            ControlToValidate="email"
                            ErrorMessage="Please enter valid email"
                            ForeColor="Red"
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">

                        </asp:RegularExpressionValidator>
		</div>

		<%--<div class="form-group phone-group">
			<label for="phone">Telephone</label>
			<asp:Textbox ID="phone" runat="server"></asp:Textbox>
		</div>--%>

		<%--<div class="textarea-group">
			<label for="bio">Bio</label>
			<textarea id="bio"></textarea>
		</div>--%>

		<div class="form-group">
			<label for="DOB">DATE OF BIRTH</label>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>     <asp:Calendar ID="DOB" runat="server" BorderStyle="Solid" NextPrevFormat="CustomText" TitleStyle-BorderStyle="Dashed" SelectionMode="Day" SelectedDate="1/1/1980 12:00:00 AM" VisibleDate="1/1/1980 12:00:00 AM"></asp:Calendar>
                       </ContentTemplate>
                        </asp:UpdatePanel>
		</div>

		 
		
		<%--<div class="form-group">
			<label for="zip">Postal Code</label>
			<asp:Textbox ID="zip" runat="server"></asp:Textbox>
		</div>--%>
		
	</div>

	
	</div>
		<div class="button-container">
		<asp:Button ID="Button1" CssClass="button" runat="server" Text="Delete Account" OnClick="Delete_Click" ></asp:Button>
	</div>
	<div class="button-container">
		<asp:Button ID="EditProfile" CssClass="button" runat="server" Text="Register Modifications" OnClick="EditProfile_Click" ></asp:Button>
	</div>
</div>
</asp:Content>
