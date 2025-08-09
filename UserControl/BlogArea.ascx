<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="BlogArea.ascx.cs" Inherits="BGBeautyProject_Website.UserControl.BlogArea" %>

<div class="blog-area pb-20">
    <div class="container">
        <div class="main-blog-area">
            <!-- Section Title Start -->
            <div class="section-title text-center">
                <h2>Latest Blog Posts</h2>
                <p>There are latest blog posts</p>
            </div>
            <!-- Section Title End -->
            <!-- Blog Activation Start -->
            <div class="blog-activation owl-carousel">
                <asp:Repeater runat="server" ID="Repeater_BlogInfo">
                    <ItemTemplate>
                        <!-- Single Blog Start -->

                        <div class="single-blog">
                            <div class="blog-img">
                                <a href='<%# "/Language/En/BlogsSection/BlogDetails?BlogID=" +Eval("BlogUID")%>'>
                                    <img src='/Files/Blogs/Thumbnail/<%# Eval("image") %>' alt="blog-img" />
                                </a>
                                <div class="entry-meta">
                                    <div class="date">
                                        
                                        <span><%# Eval("AddDate", "{0:dd/MMM}") %></span>
                                    </div>
                                </div>
                            </div>
                            <div class="blog-content">
                                <h4>
                                    <a href='<%# "/Language/En/BlogsSection/BlogDetails?BlogID=" +Eval("BlogUID")%>'><%# Eval("name") %></a>
                                </h4>
                                <ul class="meta-box">
                                    <li class="meta-date">
                                        <span>
                                            <i class="fa fa-calendar" aria-hidden="true"></i><%# Eval("AddDate") %></span>
                                    </li>
                                    <li>
                                        <i class="fa fa-user" aria-hidden="true"></i>
                                        <a href='<%# "/Language/En/BlogsSection/BlogDetails?BlogID=" +Eval("BlogUID")%>'><%# Eval("FirstName") %><%# Eval("LastName") %></a>
                                    </li>
                                </ul>
                                <p>
                                    <%# Eval("Brief") %>
                                </p>
                                <div class="makali-btn transparent-btn grey-border">
                                    <a href='<%# "/Language/En/BlogsSection/BlogDetails?BlogID=" +Eval("BlogUID")%>'>Read More</a>
                                </div>
                            </div>
                        </div>
                        <!-- Single Blog End -->
                    </ItemTemplate>
                </asp:Repeater>
            </div>
            <!-- Blog Activation End -->
        </div>
    </div>
    <!-- Container End -->
</div>
    <div class="text-center makali-btn transparent-btn grey-border pb-60">

        <a class="btn-theme text-dark" href="/Language/En/BlogsSection/BlogList">Load More</a>

    </div>
