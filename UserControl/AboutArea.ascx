<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AboutArea.ascx.cs" Inherits="BGBeautyProject_Website.UserControl.AboutArea" %>


<section class="about-area">
    <div class="container">
        <div class="about-item position-relative">
            <asp:Repeater runat="server" ID="Repeater_AboutArea">
                <ItemTemplate>

                    <div class="row align-items-center">
                        <%# Eval("Wpm_Content") %>
                        <div class="col-lg-6 order-1 order-lg-2">
                            <div class="about-thumb">
                                <img src='/Files/WPM/<%# Eval("Wpm_PageUID") %>/<%# Eval("Wpm_ImageURL") %>' width="569" height="577" alt="Image-HasTech">
                            </div>
                        </div>
                    </div>

                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</section>
