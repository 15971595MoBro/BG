<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CategoryBanner.ascx.cs" Inherits="BGBeauty_Website.UserControl.CategoryBanner" %>






<div class="banner-area pt-20 pb-90">
    <div class="container">
        <div class="row">
            <asp:Repeater runat="server" ID="Repeater_CategoryBanner">
                <ItemTemplate>
                    <!--  Single Banner Area Start -->
                    <div class="col-lg-4 col-md-4 mb-sm-30">
                        <div class="single-banner zoom">
                            <%--                            <a href='/Language/En/ShopProducts/Shop?id=<%# Eval("Id", "{0}") %>'>--%>
                            <a href='<%# Page.TemplateSourceDirectory + "/CategoryProducts/" + Eval("Id", "{0}") + "/" + Eval("CategoryName", "{0}") %>'>
                                <img src='/Files/Products/<%# Eval("Id", "{0}") %>/<%# Eval("BannerImage", "{0}") %>' alt='<%# Eval("CategoryName", "{0}") %>' />
                            </a>
                        </div>
                    </div>
                    <!--  Single Banner Area End -->
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</div>
