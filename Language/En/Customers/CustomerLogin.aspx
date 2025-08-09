<%@ Page Title="" Language="C#" MasterPageFile="~/Language/En/InternalMasterPage.Master" AutoEventWireup="true" CodeBehind="CustomerLogin.aspx.cs" Inherits="BGBeautyProject_Website.Language.En.Customers.CustomerLogin" %>

<asp:Content ID="Content5" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <!-- Breadcrumb Area Start Here -->
    <div class="breadcrumb-area">
        <div class="container">
            <ol class="breadcrumb breadcrumb-list">
                <li class="breadcrumb-item"><a href="/">Home</a></li>
                <li class="breadcrumb-item active">Login</li>
            </ol>
        </div>
    </div>
    <!-- Breadcrumb Area End Here -->


    <!-- Login Page Start Here -->
    <div class="login ptb-90">
        <div class="container">
            <h3 class="login-header text-center">Log in to your account </h3>
            <div class="row">
                <div class="col-xl-6 col-lg-8 offset-xl-3 offset-lg-2">
                    <div class="login-form">
                        <div>
                            <div class="form-group row mb-20">
                                <asp:Label Text="UserName" runat="server" for="email" class="col-sm-3 col-form-label">Email</asp:Label>
                                <div class="col-sm-7">
                                    <asp:TextBox ID="TxtUserName" runat="server" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ForeColor="Red" runat="server" ErrorMessage="Email Required" ControlToValidate="TxtUserName" ValidationGroup="LoginGroup"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="form-group row mb-20">
                                <asp:Label Text="Password" runat="server" for="inputPassword" class="col-sm-3 col-form-label">Password</asp:Label>
                                <div class="col-sm-7 position-relative">
                                    <asp:TextBox ID="TxtPassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ForeColor="Red" runat="server" ErrorMessage="Password Required" ControlToValidate="TxtPassword" ValidationGroup="LoginGroup"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="login-details text-center mb-25">
                                <asp:CheckBox ID="Ch_remember" class="form-check-input" runat="server" Visible="false" />
                                <label class="form-check-label" for="Ch_remember" runat="server" visible="false">Remember Me</label>
                                <asp:LinkButton runat="server" class="login-btn" ValidationGroup="LoginGroup" ID="Btn_Login" OnClick="Btn_Login_Click1">Sign in</asp:LinkButton>

                            </div>
                            <div class="login-details text-center mb-10 login-footer">
                                <asp:LinkButton runat="server" class="login-btn" ID="LoginGuest" OnClick="LoginGuest_Click">Shopping as Guest</asp:LinkButton>
                            </div>
                            <div class="login-footer text-center">
                                <p>No account? <a href="/Language/En/Customers/CustomerRegister">Create one here</a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Login Page End Here -->




    <asp:HiddenField ID="HF_ID" runat="server" />
    <asp:HiddenField ID="HF_SecurityStamp" runat="server" />


</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder_Script" runat="server">
</asp:Content>

