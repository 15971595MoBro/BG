<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ContactUsFooter.ascx.cs" Inherits="BGBeautyProject_Website.UserControl.ContactUsFooter" %>




 <div class="row">
                <div class="col-xl-12">
                    <div class="register-contact  clearfix" style="padding:20px;">
                        <div id="contact-form" class="contact-form">
                            <div class="address-wrapper row">
                                <div class="col-md-12">
                                    <div class="address-fname">
                                        <asp:TextBox runat="server" ID="txtname" placeholder="Name *" CssClass="form-control" ValidationGroup="ContactFooter"/>
                                        <asp:RequiredFieldValidator ForeColor="Red" CssClass="errorstyle" ID="RequiredFieldValidator1" ValidationGroup="ContactFooter" ControlToValidate="txtname" runat="server" ErrorMessage="Name is Required" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        <asp:Label Text="result" ID="txtusrerror" Style="color: red; opacity: 0;" runat="server"></asp:Label>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="address-phone">
                                        <asp:TextBox runat="server" ID="txtMobile" placeholder="Phone *" CssClass="form-control" ValidationGroup="ContactFooter"/>
                                        <asp:RequiredFieldValidator ForeColor="Red" CssClass="errorstyle" ID="RequiredFieldValidator4" ValidationGroup="ContactFooter" ControlToValidate="txtMobile" runat="server" ErrorMessage=" Mobile is Required" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="address-email">
                                        <asp:TextBox runat="server" ID="txtmail" placeholder="Email *" CssClass="form-control" ValidationGroup="ContactFooter" />
                                        <asp:RequiredFieldValidator ForeColor="Red" CssClass="errorstyle" ID="RequiredFieldValidator2" ValidationGroup="ContactFooter" ControlToValidate="txtmail" runat="server" ErrorMessage="Email is Required" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ForeColor="Red" CssClass="errorstyle" ID="RegularExpressionValidator1" ValidationGroup="ContactFooter" ControlToValidate="txtmail" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" runat="server" ErrorMessage="Email Not Valid" SetFocusOnError="True"></asp:RegularExpressionValidator>
                                    </div>
                                </div>
                           
                                <div class="col-md-12">
                                    <div class="address-textarea">
                                        <asp:TextBox runat="server" class="TxtAreaFooter" CssClass="form-control" TextMode="MultiLine" ID="txtRequirement" Height="100" placeholder="Message *"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="footer-content mail-content clearfix">
                                <div class="send-email float-md-right">
                                    <asp:LinkButton runat="server" ID="Btn_Send" OnClick="Btn_Send_Click" class="return-customer-btn" ValidationGroup="ContactFooter" data-aos="fade-up" data-aos-delay="200">Submit <i class="fa fa-arrow-right"></i></asp:LinkButton>
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