<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MainSlider.ascx.cs" Inherits="BGBeauty_Website.Language.En.UserControls.MainSlider" %>







<div class="slider-area">
    <!-- Slider Area Start Here -->
    <div class="slider-activation owl-carousel">
        <asp:Repeater runat="server" ID="Repeater_MainSlider">
            <ItemTemplate>
                <!-- Start Single Slide -->
                <div
                    class="slide align-center-left fullscreen animation-style-01" style="background-image: url('/Files/HomeSlides/<%# Eval("SlidePhotoName" , "{0}") %>'); background-position: center; background-repeat: no-repeat">
                    <div class="slider-progress"></div>
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="slider-content">
                                    <h1><%# Eval("SlideTitle" , "{0}") %></h1>
                                    <p>
                                        <%# Eval("SlideDescription" , "{0}") %>
                                    </p>
                                    <div class="slide-btn putty-color">
                                        <a href='<%# Eval("SlideURL" , "{0}") %>'><%# Eval("SlideButtonTitle" , "{0}") %></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Single Slide -->
            </ItemTemplate>
        </asp:Repeater>
    </div>
    <!-- Slider Area End Here -->
</div>
