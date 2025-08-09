<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AllProduct.ascx.cs" Inherits="BGBeautyProject_Website.UserControl.AllProduct" %>





<div class="new-arrival no-border-style ptb-90">
    <div class="container">
        <!-- Section Title Start -->
        <div class="section-title text-center">
            <h2>new arrivals</h2>
            <p>Add our new arrivals to your weekly lineup</p>
        </div>
        <!-- Section Title End -->
        <div class="our-pro-active owl-carousel">
            <asp:Repeater runat="server" ID="Repeater_AllProduct" OnItemCommand="Repeater_AllProduct_ItemCommand">
                <ItemTemplate>
                    <!-- New Arrival Dual Products Start Here -->
                    <div class="dual-pro">
                        <!-- Single Product Start Here -->
                        <div class="single-makal-product">
                            <div class="pro-img">
                                <a href='<%# "/Language/En/ProductDetails/" + Eval("ProductId") + "/" + Common.GeneralUtilities.GetUniqueName(Eval("ProductName" , "{0}")) %>'>
                                    <img src='<%#"/Files/Products" +"/"+Eval("ProductId")  + "/"+ Eval("MainImage") %>' alt="product-img" />
                                </a>
                                <span class='<%# (bool)Eval("MarkNew") == true ? "sticker-new" : "" %>'><%# (bool)Eval("MarkNew") == true ? "new" : "" %> </span>
<%--                                <span class=' <%# Eval("Discount","{0:0}") != "0" ? "sticker-discount" : "" %>'><%# Eval("Discount","{0:0}") == "0" ? "" : Eval("Discount","{0:0}")+"%" %> </span>--%>
                                <div class="quick-view-pro">
                                    <a class="quick-view" href='<%# "/Language/En/ProductDetails/" + Eval("ProductId") + "/" + Common.GeneralUtilities.GetUniqueName(Eval("ProductName" , "{0}")) %>'></a>
                                </div>
                            </div>
                            <div class="pro-content">
                                <h4 class="pro-title">
                                    <a href='<%# "/Language/En/ProductDetails/" + Eval("ProductId") + "/" + Common.GeneralUtilities.GetUniqueName(Eval("ProductName" , "{0}")) %>'><%# Eval("ProductName")%></a>
                                </h4>
                                <p>
                                    <span class="price"><%# (Decimal)Eval("OldProductPrice") == 0 ? "" : Eval("OldProductPrice")%></span>
                                </p>
                                <%--<div class="pro-actions">
                                        <div class="actions-primary">
                                            <a
                                                href="cart.html"
                                                class="add-to-cart"
                                                data-toggle="tooltip"
                                                data-original-title="Add to Cart">Add To Cart</a>
                                        </div>
                                        <div class="actions-secondary">
                                            <div class="rating">
                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                <i class="fa fa-star-o" aria-hidden="true"></i>
                                                <i class="fa fa-star-o" aria-hidden="true"></i>
                                            </div>
                                        </div>
                                    </div>--%>
                            </div>
                        </div>
                        <!-- Single Product End Here -->
                        <!-- Single Product Start Here -->
                        <%--<div class="single-makal-product">
                                <div class="pro-img">
                                    <a href="product-details.html">
                                        <img src="img/products/cosmetic/2.webp" alt="product-img" />
                                    </a>
                                    <span class="sticker-new">new</span>
                                    <span class="sticker-sale">-5%</span>
                                    <div class="quick-view-pro">
                                        <a
                                            data-bs-toggle="modal"
                                            data-bs-target="#product-window"
                                            class="quick-view"
                                            href="#"></a>
                                    </div>
                                </div>
                                <div class="pro-content">
                                    <h4 class="pro-title">
                                        <a href="product-details.html">Sprite Yoga Straps1</a>
                                    </h4>
                                    <p>
                                        <span class="price">$65.00</span>
                                    </p>
                                    <div class="pro-actions">
                                        <div class="actions-primary">
                                            <a
                                                href="cart.html"
                                                class="add-to-cart"
                                                data-toggle="tooltip"
                                                data-original-title="Add to Cart">Add To Cart</a>
                                        </div>
                                        <div class="actions-secondary">
                                            <div class="rating">
                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                <i class="fa fa-star-o" aria-hidden="true"></i>
                                                <i class="fa fa-star-o" aria-hidden="true"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>--%>
                        <!-- Single Product End Here -->
                    </div>
                    <!-- New Arrival Dual Products End Here -->
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>

                <!-- start pagination area -->
            <div class="text-center text-center makali-btn transparent-btn grey-border" data-aos="fade-up" >
                <a  id="Btn_LoadMore" href="/Language/En/ShopProducts/Shop">
                Load More </a>
            </div>
        <!-- end pagination area -->
</div>
