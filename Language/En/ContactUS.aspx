<%@ Page Title="" Language="C#" MasterPageFile="~/Language/En/InternalMasterPage.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="BGBeauty_Website.Language.En.ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .contact-message input, .contact-message textarea {
            width: 100%;
            border: none;
            padding: 10px 10px;
            border-bottom: 3px solid transparent;
            background-color: #f7f7f7;
            margin-bottom: 30px;
        }

        .contact-area {
            margin-top: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <asp:Repeater runat="server" ID="Repeater_HeaderWord">
        <ItemTemplate>
            <!-- Breadcrumb Area Start Here -->
            <div class="breadcrumb-area">
                <div class="container">
                    <ol class="breadcrumb breadcrumb-list">
                        <li class="breadcrumb-item"><a href="/">Home</a></li>
                        <li class="breadcrumb-item active"><%# Eval("Wpm_PageTitleInMenu") %></li>
                    </ol>
                </div>
            </div>
            <!-- Breadcrumb Area End Here -->
        </ItemTemplate>
    </asp:Repeater>


    <!-- Google Map Start -->
    <div class="goole-map">
        <div id="map">
            <!-- Google Map End -->
            <asp:Repeater runat="server" ID="Repeater_Contact_Map">
                <ItemTemplate>
                    <%# Eval("Wpm_Content" , "{0}") %>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>


    <!-- Regester Page Start Here -->
    <div class="register-area white-bg ptb-90">
        <div class="container">
            <h3 class="login-header">Contact us</h3>
            <div class="row">
                <div class="col-xl-12">
                    <div class="register-contact  clearfix">
                        <div id="contact-form" class="contact-form">
                            <div class="address-wrapper row">
                                <div class="col-md-12">
                                    <div class="address-fname">
                                        <asp:TextBox runat="server" ID="txtname" placeholder="Name *" CssClass="form-control" />
                                        <asp:RequiredFieldValidator ForeColor="Red" CssClass="errorstyle" ID="RequiredFieldValidator1" ControlToValidate="txtname" runat="server" ErrorMessage="Name is Required" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        <asp:Label Text="result" ID="txtusrerror" Style="color: red; opacity: 0;" runat="server"></asp:Label>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="address-phone">
                                        <asp:TextBox runat="server" ID="txtMobile" placeholder="Phone *" CssClass="form-control" />
                                        <asp:RequiredFieldValidator ForeColor="Red" CssClass="errorstyle" ID="RequiredFieldValidator4" ControlToValidate="txtMobile" runat="server" ErrorMessage=" Mobile is Required" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="address-email">
                                        <asp:TextBox runat="server" ID="txtmail" placeholder="Email *" CssClass="form-control" />
                                        <asp:RequiredFieldValidator ForeColor="Red" CssClass="errorstyle" ID="RequiredFieldValidator2" ControlToValidate="txtmail" runat="server" ErrorMessage="Email is Required" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ForeColor="Red" CssClass="errorstyle" ID="RegularExpressionValidator1" ControlToValidate="txtmail" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" runat="server" ErrorMessage="Email Not Valid" SetFocusOnError="True"></asp:RegularExpressionValidator>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="address-company">
                                        <asp:TextBox runat="server" ID="txtCompanyName" placeholder="Company Name *" CssClass="form-control" />
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="address-textarea">
                                        <asp:TextBox runat="server" CssClass="form-control" TextMode="MultiLine" ID="txtRequirement" Height="200" placeholder="Message *"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <asp:Image ImageUrl="Captcha.aspx" Height="55px" Width="186px" ID="Img_Captcha" runat="server" />
                                    <asp:TextBox runat="server" ID="txtVerificationCode" placeholder="Enter captcha above" CssClass="form-control" Style="margin-top: 5px;"></asp:TextBox>
                                    <asp:Label runat="server" ID="lblCaptchaMessage" Font-Size="Small"></asp:Label>
                                </div>
                            </div>
                            <div class="footer-content mail-content clearfix">
                                <div class="send-email float-md-right">
                                    <asp:LinkButton runat="server" ID="Btn_Send" OnClick="Btn_Send_Click" class="return-customer-btn" data-aos="fade-up" data-aos-delay="200">Post Comment <i class="fa fa-arrow-right"></i></asp:LinkButton>
                                </div>
                            </div>
                            <div class="col-12 d-flex justify-content-center">
                                <div class="form-messege">
                                    <div style="width: 100%; display: inline-block; margin-right: 5%;">
                                        <asp:HyperLink ID="HL_Ref" runat="server"></asp:HyperLink>
                                    </div>
                                </div>
                            </div>
                            <p class="form-message"></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Register Page End Here -->

</asp:Content>
