<%@ Page Title="" Language="C#" MasterPageFile="~/Language/En/InternalMasterPage.Master" AutoEventWireup="true" CodeBehind="BlogDetails.aspx.cs" Inherits="BGBeautyProject_Website.Language.En.BlogsSection.BlogDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <%--    <link href="https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css" rel="stylesheet">--%>
    <link href="/App_Themes/asset/css/lightness-jquery-ui.css" rel="stylesheet" />
    <style>
        #tabs-1 {
            font-size: 14px;
        }

        .ui-widget-header {
            background: #FFF;
            border: none /*1px solid #b9cd6d*/;
            color: lightyellow;
            font-weight: bold;
        }

        .ui-widget-content {
            background: none;
        }

        /*        .ui-widget-header {
            background: #751b65;
        }*/

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

            <!-- Breadcrumb Area Start Here -->
            <div class="breadcrumb-area">
                <div class="container">
                    <ol class="breadcrumb breadcrumb-list">
                        <li class="breadcrumb-item"><a href="/">Home</a></li>
                        <li class="breadcrumb-item"><a href="/Language/En/BlogsSection/BlogList">blog</a></li>
                        <li class="breadcrumb-item active"><asp:Label ID="LblHeaderLink" runat="server" /></li>
                    </ol>
                </div>
            </div>
            <!-- Breadcrumb Area End Here -->

    <!-- Blog Details Area Start -->
    <div class="blog-details-area white-bg ptb-90">
        <div class="container">
            <div class="row">
                <!-- Blog Sidebar Start -->
                <div class="col-xl-3 col-lg-4">
                    <div class="blog-sidebar right-sidebar mt-all-80">
                        <!-- Search Box Start -->
                        <div class="newsletter-box blog-details-box mb-40">
                            <h3 class="sidebar-header">Search</h3>
                            <div style="position: relative">
                                <asp:TextBox runat="server" ID="Txt_SearchBlog" placeholder="Search here" class="subscribe"></asp:TextBox>
                                <asp:LinkButton runat="server" ID="Btn_SearchBlog" OnClick="Btn_SearchBlog_Click" class="submit">Search</asp:LinkButton>

                            </div>
                        </div>
                        <!-- Search Box End -->
                        <!-- Category Post Start -->
                        <div class="categorie recent-post mb-60">
                            <h3 class="sidebar-header">categories</h3>
                            <ul class="categorie-list">
                                <asp:Repeater runat="server" ID="Repeater_FillCategory" OnItemCommand="Repeater_FillCategory_ItemCommand">
                                    <ItemTemplate>

                                        <li>

                                            <asp:LinkButton runat="server" CommandName="Filter" CommandArgument='<%# Eval("ID") %>'><%# Eval("CategoryName") %></asp:LinkButton>

                                        </li>

                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>
                        <!-- Category Post End -->
                        <!-- Recent Post Start -->
                        <div class="recent-post mb-60">
                            <h3 class="sidebar-header">recent posts</h3>
                            <div class="all-recent-post">
                                <asp:Repeater runat="server" ID="Repeater_RecentBlog">
                                    <ItemTemplate>
                                        <div class="single-recent-post">
                                            <div class="recent-img">
                                                <a href='<%# "/Language/En/BlogDetails/" +Eval("BlogUID") + "/" + Common.GeneralUtilities.GetUniqueName(Eval("name" , "{0}"))  %>'>
                                                    <img src='/Files/Blogs/Thumbnail/<%# Eval("image") %>' alt="blog-img"></a>
                                            </div>
                                            <div class="recent-desc">
                                                <h6><a href='<%# "/Language/En/BlogDetails/" +Eval("BlogUID") + "/" + Common.GeneralUtilities.GetUniqueName(Eval("name" , "{0}"))%>'><%# Eval("name") %></a></h6>
                                                <span><%# Eval("AddDate" , "{0: dd/MM/yyyy}") %></span>
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>
                        </div>
                        <!-- Recent Post End -->
                        <!-- Meta Post Start -->
                        <%--<div class="categorie recent-post">
                                <h3 class="sidebar-header">Tags</h3>
                                <ul class="tag-list d-flex flex-wrap">
                                    <li><a href="#">Develop</a></li>
                                    <li><a href="#">ecommerce</a></li>
                                    <li><a href="#">Creative</a></li>
                                    <li><a href="#">Corporate</a></li>
                                    <li><a href="#">store</a></li>
                                    <li><a href="#">Ideas</a></li>
                                    <li><a href="#">Business</a></li>
                                </ul>
                            </div>--%>
                        <!-- Meta Post End -->
                    </div>
                </div>
                <!-- Blog Sidebar End -->
                <!-- Blog Details Start -->
                <div class="col-xl-9 col-lg-8">
                    <div class="blog-details mb-all-40">
                        <asp:Repeater runat="server" ID="Repeater_FillBlogDetails">
                            <ItemTemplate>
                                <div class="blog-hero-img mb-40">
                                    <img class="full-img" src='/Files/Blogs/Thumbnail/<%# Eval("image") %>' alt="blog-details">
                                    <div class="entry-meta">
                                        <div class="date">
                                            <span><%# Eval("AddDate", "{0:dd/MMM}") %></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="text-upper-portion">
                                    <h3 class="blog-dtl-header portfolio-header"><%# Eval("name") %></h3>
                                    <ul class="meta-box meta-blog d-flex">
                                        <li class="meta-date"><span><i class="fa fa-calendar" aria-hidden="true"></i><%# Eval("AddDate") %></span></li>
                                        <li><i class="fa fa-user" aria-hidden="true"></i>By <a href="#"><%# Eval("FirstName") %><%# Eval("LastName") %></a></li>
                                    </ul>

                                </div>
                            </ItemTemplate>
                        </asp:Repeater>




                        <div class="author mtb-40">

                            <div id="tabs-1" style="display: unset;">
                                <ul>
                                    <li><a href="#tabs2">Details</a></li>
                                    <li><a href="#tabs3">Photo</a></li>
                                    <li><a href="#tabs4">Video</a></li>
                                </ul>
                                <div id="tabs2">
                                    <p>
                                        <asp:Label ID="Lbldetails" runat="server"></asp:Label>

                                    </p>
                                </div>
                                <div id="tabs3">
                                    <div class="product-single-thumb">
                                        <div class="swiper single-product-thumb single-product-thumb-slider">

                                            <div class="swiper-wrapper">

                                                <asp:Repeater ID="RepeaterBlogPhotos" runat="server">
                                                    <ItemTemplate>


                                                        <div class="swiper-slide">
                                                            <a class="lightbox-image" data-fancybox="gallery" href='/Admins/Modules/BlogSection/<%#Common.GeneralUtilities.AppSettings("MediaPhotoGalleryImages") + Eval("Image")%>'>
                                                                <img src='/Admins/Modules/BlogSection/<%#Common.GeneralUtilities.AppSettings("MediaPhotoGalleryImages") + Eval("Image")%>' width="570" height="675" alt="Image-HasTech">
                                                            </a>
                                                        </div>

                                                    </ItemTemplate>

                                                </asp:Repeater>

                                            </div>

                                        </div>
                                    </div>
                                </div>
                                <div id="tabs4">
                                    <div class="product-single-thumb">
                                        <div class="swiper single-product-thumb single-product-thumb-slider">

                                            <div class="swiper-wrapper">

                                                <asp:Repeater ID="dltVideo" runat="server">
                                                    <ItemTemplate>

                                                        <div class="swiper-slide">
                                                            <a class="lightbox-image" data-fancybox="video-gallery" href='<%# getembed(Eval("Embed", "{0}")) %>'>
                                                                <img src='<%# "https://img.youtube.com/vi/" + GetYoutubeVideoID(Eval("Embed", "{0}")) + "/0.jpg" %>' width="570" height="675" alt="Image-HasTech">
                                                            </a>
                                                        </div>

                                                    </ItemTemplate>

                                                </asp:Repeater>

                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <%--<div class="blog-pagination">
                            <ul class="pagination">
                                <li><a href="#"><i class="fa fa-long-arrow-left" aria-hidden="true"></i>previous</a>
                                </li>
                                <li class="ml-auto"><a href="#">next<i class="fa fa-long-arrow-right"
                                    aria-hidden="true"></i></a></li>
                            </ul>
                        </div>--%>
                    </div>
                </div>
                <!-- Blog Details End -->

            </div>
        </div>
    </div>
    <!-- Blog Details Area End -->


    <asp:HiddenField runat="server" ID="HF_BlogID" />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder_Script" runat="server">
    <%--    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>--%>
    <script src="https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
    <script>  
        $(function () {
            $("#tabs-1").tabs();
        });
    </script>
</asp:Content>
