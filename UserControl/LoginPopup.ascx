<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LoginPopup.ascx.cs" Inherits="BGBeauty_Website.UserControl.LoginPopup" %>


    <div class="modal popup-login-style" id="loginActive">
        <button type="button" class="close-btn" data-bs-dismiss="modal"><span aria-hidden="true">&times;</span></button>
        <div class="modal-overlay">
            <div class="modal-dialog p-0" role="document">
                <div class="modal-content">
                    <div class="modal-body">
                        <div class="login-content">
                            <h2>Log in</h2>
                            <h3>Log in your account</h3>
                            <div>
                                <asp:TextBox runat="server" ID="TxtUserName" class="Input_Txt"></asp:TextBox>
                                <asp:TextBox ID="TxtPassword" runat="server" TextMode="Password" class="Input_Txt" ></asp:TextBox>
                                <div class="remember-forget-wrap">
                                    <div class="remember-wrap">
                                        <asp:CheckBox ID="Ch_remember" runat="server" />
                                        <p>Remember</p>
                                        <span class="checkmark"></span>
                                    </div>
                                    <%--<div class="forget-wrap">
                                        <a href="#">Forgot your password?</a>
                                    </div>--%>
                                </div>
                                <asp:LinkButton runat="server" ID="Btn_Login" OnClick="Btn_Login_Click" Class="Btn_Login_Style">Log in</asp:LinkButton>
                                <div class="member-register">
                                    <p> Not a member? <a href="/Language/En/Customers/CustomerRegister"> Register now</a></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

<%--<input type="hidden" ClientIDMode="Static"  id="TxtLoginPopup" runat="server"/>--%>