<%@ Page Title="" Language="C#" MasterPageFile="~/Language/En/InternalMasterPage.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="BGBeauty_Website.Language.En.AboutUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .about-intro-area{
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-orient: vertical;
            -webkit-box-direction: normal;
            -ms-flex-direction: column;
            flex-direction: column;
            -webkit-box-pack: center;
            -ms-flex-pack: center;
            justify-content: center;
            -webkit-box-align: start;
            -ms-flex-align: start;
            align-items: flex-start;
            height: 528px;
            background-color: #fcf6f6;
        }
        .intro-right {
            position: absolute;
            top: auto;
            bottom: 0;
            right: 15px;
        }
        .intro-right-image {
            max-width: 100%;
            display: block;
        }
        .about-intro-content .title {
    margin: 0 0 21px;
    color: #3c3c3c;
    font-size: 48px;
    font-weight: 300;
    text-transform: uppercase;
    line-height: 1;
}
        .about-intro-content p {
    line-height: 28px;
    color: #3c3c3c;
    margin: 0;
    padding-right: 10px;
}
        @media only screen and (min-width: 768px) and (max-width: 991px), only screen and (max-width: 767px){

            .intro-right {
                display: none;
            }
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
        <!-- About Intro Area start-->
    <div class="about-intro-area">
        <div class="container position-relative h-100 d-flex align-items-center" style="margin-bottom: 14px;">
            <asp:Repeater runat="server" ID="Repeater_About">
                <ItemTemplate>

                    <div class="row">
                        <div class="col-lg-6 col-md-12">
                                <%#  Eval("Wpm_Content" , "{0}") %>
                        </div>
                    </div>
            
                    <div class="intro-right">
                        <img src='/Files/WPM/<%#  Eval("Wpm_PageUID") %>/<%#  Eval("Wpm_ImageURL") %>' alt="" class="intro-right-image">
                    </div>

                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>

    <!-- About Intro Area End-->
</asp:Content>
