<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="SoundHive.Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CssContent" runat="server">
    <webopt:BundleReference runat="server" Path="~/Content/RegistrationCSS" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.min.css">
    <link rel="stylesheet" href="style.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">



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
                            <br>
                        </div>
                    </div>
                </div>
                <div class="col-lg-7 form-section">
                    <div class="form-conatiner">
                        <h2 class="heading__h2">
                            <img src="favicon.ico" style="height: 5%; width: 5%"></img>
                            SoundHive</h2>
                        <p class="links__p"><a href="Login">Sign In</a> | <a href="/Registration" style="font-weight: 700;">Sign Up</a></p>

                        <br>
                        <label id="UserAlreadyExists" runat="server"></label>

                        <br>
                        <label for="username">USERNAME</label>
                        <asp:TextBox ID="username" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="error" ID="RequiredFieldValidator3"
                            ControlToValidate="username"
                            runat="server"
                            ErrorMessage="Please enter name">
                        </asp:RequiredFieldValidator>

                        <br />
                        <label for="email">EMAIL</label>
                        <asp:TextBox ID="email" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="error" ID="RequiredFieldValidator1"
                            ControlToValidate="email"
                            runat="server"
                            ErrorMessage="Please enter email">
                        </asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator
                            ID="RegularExpressionValidator1"
                            runat="server"
                            ControlToValidate="email"
                            ErrorMessage="Please enter valid email"
                            ForeColor="Red"
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">

                        </asp:RegularExpressionValidator>
                        <br />
                        <br />
                        <label for="DOB">DATE OF BIRTH</label>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>     <asp:Calendar ID="DOB" runat="server" BorderStyle="Solid" NextPrevFormat="CustomText" TitleStyle-BorderStyle="Dashed" SelectionMode="Day" SelectedDate="1/1/1980 12:00:00 AM" VisibleDate="1/1/1980 12:00:00 AM"></asp:Calendar>
                       </ContentTemplate>
                        </asp:UpdatePanel>
                        <br />
                        <label for="password">PASSWORD</label>
                        <input type="password" id="password" runat="server">
                        <asp:RequiredFieldValidator CssClass="error" ID="RequiredFieldValidator2"
                            ControlToValidate="password"
                            runat="server"
                            ErrorMessage="Please enter password">
                        </asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2"
                            runat="server" ControlToValidate="password"
                            ErrorMessage="Password must be a minimum of eight characters, having atleast one letter and one number"
                            ForeColor="Red"
                            ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$">

                        </asp:RegularExpressionValidator>

                        <br />
                        <br />
                         <asp:Label ID="Label9" runat="server" Cssclass="Labels" Text="Image: "></asp:Label>

   <asp:FileUpload  id="ImageUpload" runat="server"></asp:FileUpload>
        <asp:RequiredFieldValidator Cssclass="error" ID="RequiredFieldValidator7" 
        ControlToValidate="ImageUpload"
        runat="server" 
        ErrorMessage="Please upload an image">
    </asp:RequiredFieldValidator>

                        <br>
                        <br>
                        <center><asp:Button ID="SignUp"  CssClass="button" Text="Sign Up" runat="server" OnClick="SignUp_Click"/></center>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
