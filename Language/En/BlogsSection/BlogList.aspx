<%@ Page Title="" Language="C#" MasterPageFile="~/Language/En/InternalMasterPage.Master" AutoEventWireup="true" CodeBehind="BlogList.aspx.cs" Inherits="BGBeautyProject_Website.Language.En.BlogsSection.BlogList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style>
        .blog-text-search {
            background-color: #fff;
            border: 1px solid #cfcfcf;
            border-radius: 15px;
            -webkit-box-shadow: none;
            box-shadow: none;
            color: #747474;
            font-size: 16px;
            font-weight: 400;
            font-style: italic;
            height: 60px;
            padding: 10px 48px 10px 18px;
            width: 100%;
        }

        .header-search-btn {
            border: none;
            background: none;
            -webkit-box-shadow: none;
            box-shadow: none;
            margin: 0;
            font-size: 18px;
            padding: 0;
            height: 20px;
            width: 33px;
            position: absolute;
            right: 14px;
            top: 50%;
            -webkit-transform: translate(0%, -50%);
            transform: translate(0%, -50%);
            line-height: 20px;
            color: #383838;
            text-align: end;
            border-left: 1px solid #cfcfcf;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <link href="/App_Themes/asset/css/style_jPages-master.css" rel="stylesheet" />
    <link href="/App_Themes/asset/css/jPages.css" rel="stylesheet" />
    <link href="/App_Themes/asset/css/github.css" rel="stylesheet" />
    <link href="/App_Themes/asset/css/animate.css" rel="stylesheet" />
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

    <!-- Blog Area Start Here -->
    <div class="blog-area pt-90 pb-90">
        <div class="container">
            <!-- Section Title Start -->
            <div class="section-title text-center">
                <h2>Latest Blog Posts</h2>
                <p>There are latest blog posts </p>
            </div>
            <!-- Section Title End -->
            <div class="row" id="itemContainer">
                <asp:Repeater runat="server" ID="Repeater_BlogDetails">
                    <ItemTemplate>
                        <div class="col-lg-4 col-md-6 mb-40">
                            <!-- Single Blog Start -->
                            <div class="single-blog">
                                <div class="blog-img">
                                    <a href='<%# "/Language/En/BlogDetails/" +Eval("BlogUID") + "/" + Common.GeneralUtilities.GetUniqueName(Eval("name" , "{0}"))%>'>
                                        <img src='/Files/Blogs/Thumbnail/<%# Eval("image") %>' alt="blog-img">
                                    </a>
                                    <div class="entry-meta">
                                        <div class="date">

                                            <span><%# Eval("AddDate", "{0:dd/MMM}") %></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="blog-content">
                                    <h4>
                                        <a href='<%# "/Language/En/BlogDetails/" +Eval("BlogUID") + "/" + Common.GeneralUtilities.GetUniqueName(Eval("name" , "{0}"))%>'><%# Eval("name") %></a>
                                    </h4>
                                    <ul class="meta-box">
                                        <li class="meta-date">
                                            <span>
                                                <i class="fa fa-calendar" aria-hidden="true"></i><%# Eval("AddDate" , "{0: dd/MM/yyyy}") %></span>
                                        </li>
                                        <li>
                                            <i class="fa fa-user" aria-hidden="true"></i>
                                            <a href="#"><%# Eval("FirstName") %><%# Eval("LastName") %></a>
                                        </li>
                                    </ul>
                                    <p>
                                        <%# Eval("Brief") %>
                                    </p>
                                    <div class="small-btn">
                                        <a href='<%# "/Language/En/BlogDetails/" +Eval("BlogUID") + "/" + Common.GeneralUtilities.GetUniqueName(Eval("name" , "{0}"))%>'>Read More</a>
                                    </div>
                                </div>
                            </div>
                            <!-- Single Blog End -->
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
                        <div class="holder"></div>

            <ul class="pagination-blog mt-20 text-center makali-btn transparent-btn grey-border">
                <%--<li><a href="#"><i class="fa fa-angle-left"></i></a></li>
                    <li class="active"><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#"><i class="fa fa-angle-right"></i></a></li>--%>
                <asp:LinkButton runat='server' ID="Btn_LoadMore"
                    OnClick="Btn_LoadMore_Click" class='btn-theme text-dark'>
                                   Load More</asp:LinkButton>
            </ul>
        </div>
        <!-- Container End -->
    </div>
    <!-- Blog Area End Here -->


    <asp:HiddenField runat="server" ID="HF_CategoryID" />
    <asp:HiddenField ID="HfLoadMore_Btn" runat="server"></asp:HiddenField>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder_Script" runat="server">
</asp:Content>
