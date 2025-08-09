<%@ Page Title="" Language="C#" MasterPageFile="~/Language/En/InternalMasterPage.Master" AutoEventWireup="true" CodeBehind="CustomerRegister.aspx.cs" Inherits="BGBeautyProject_Website.Language.En.Customers.CustomerRegister" %>

<asp:Content ID="Content5" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <!-- Breadcrumb Area Start Here -->
    <div class="breadcrumb-area">
        <div class="container">
            <ol class="breadcrumb breadcrumb-list">
                <li class="breadcrumb-item"><a href="/">Home</a></li>
                <li class="breadcrumb-item active">Register</li>
            </ol>
        </div>
    </div>
    <!-- Breadcrumb Area End Here -->


    <!-- Regester Page Start Here -->
    <div class="register-area ptb-90">
        <div class="container">
            <h3 class="login-header">Create an account </h3>
            <div class="row">
                <div class="offset-xl-1 col-xl-10">
                    <div class="register-form login-form clearfix">
                        <div>
                            <p>Already have an account? <a href="/Language/En/Customers/CustomerLogin">Log in instead!</a></p>
                            
                            <div class="form-group row mb-20">
                                <asp:Label runat="server" for="f-name" class="col-lg-3 col-md-3 col-form-label">First Name</asp:Label>
                                <div class="col-lg-6 col-md-6">
                                    <asp:TextBox ID="TxtFirstName" runat="server" CssClass="form-control" ValidationGroup="LoginGroup"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ValidationGroup="LoginGroup" ErrorMessage="First Name is required" ForeColor="Red" SetFocusOnError="True" ControlToValidate="TxtFirstName" Display="Dynamic"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="form-group row mb-20">
                                <asp:Label runat="server" for="l-name" class="col-lg-3 col-md-3 col-form-label">Last Name</asp:Label>
                                <div class="col-lg-6 col-md-6">
                                    <asp:TextBox ID="TxtLastName" runat="server" CssClass="form-control" ValidationGroup="LoginGroup"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ValidationGroup="LoginGroup" ErrorMessage="Last Name is required" ForeColor="Red" SetFocusOnError="True" ControlToValidate="TxtLastName" Display="Dynamic"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="form-group row mb-20">
                                <asp:Label runat="server" for="email" class="col-lg-3 col-md-3 col-form-label">Email</asp:Label>
                                <div class="col-lg-6 col-md-6">
                                    <asp:TextBox ID="TxtEmail" runat="server" CssClass="form-control" ValidationGroup="LoginGroup"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationGroup="LoginGroup" ErrorMessage="Email not valid" ForeColor="Red" Display="Dynamic" SetFocusOnError="True" ControlToValidate="TxtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ValidationGroup="LoginGroup" runat="server" ErrorMessage="Email is required" ForeColor="Red" SetFocusOnError="True" ControlToValidate="TxtEmail" Display="Dynamic"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="form-group row mb-20">
                                <asp:Label runat="server" for="username" class="col-lg-3 col-md-3 col-form-label">User Name</asp:Label>
                                <div class="col-lg-6 col-md-6">
                                        <asp:TextBox ID="TxtUname" runat="server" CssClass="form-control" ValidationGroup="LoginGroup"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ValidationGroup="LoginGroup" runat="server" ErrorMessage="UserName is required" ForeColor="Red" SetFocusOnError="True" ControlToValidate="TxtUname" Display="Dynamic"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="form-group row mb-20">
                                <asp:label runat="server" for="inputPassword" class="col-lg-3 col-md-3 col-form-label">Password</asp:label>
                                <div class="position-relative col-lg-6 col-md-6">
                                    <asp:TextBox ID="TxtPass" runat="server" CssClass="form-control" TextMode="Password" ValidationGroup="LoginGroup"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator_Pass" ValidationGroup="LoginGroup" runat="server" ErrorMessage="Password is required" ForeColor="Red" SetFocusOnError="True" ControlToValidate="TxtPass" Display="Dynamic"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                          
                            <div class="register-box mt-40">
                                <asp:LinkButton ID="Btn_Save" class="login-btn float-right" runat="server" ValidationGroup="LoginGroup" OnClick="Btn_Save_Click1">Register</asp:LinkButton>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Register Page End Here -->




    <asp:HiddenField ID="HF_ID" runat="server" />
    <asp:HiddenField ID="HF_SecurityStamp" runat="server" />


</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder_Script" runat="server">
</asp:Content>
