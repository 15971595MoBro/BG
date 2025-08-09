<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ProductArea.ascx.cs" Inherits="BGBeauty_Website.UserControl.ProductArea" %>

<div class="our-product pt-90">
    <div class="container">
        <!-- Section Title Start -->
        <div class="section-title text-center">
            <h2>Our Best Sellers</h2>
            <p>
                Browse the collection of our products and top interresting
              products.ll definitely find what you are looking for.
            </p>
        </div>
        <!-- Section Title End -->
        <div>

            <div class="container products-tab">
                <div style="display: flex; justify-content: flex-end; gap: 5px;">


                    <span class="tab-link active" id="nav-home">All</span>
                    <span class="tab-link" id="nav-profile">New</span>
                    <span class="tab-link" id="nav-contact">Best Seller</span>

                </div>

                <div class="tab-contents" id="nav-tabContent">

                    <div class="tab-content show active" id="tab-home">
                        <div class="hs__wrapper">
                            <div class="hs__header">
                                <h2 class="hs__headline"></h2>
                                <div class="hs__arrows"><a class="arrow disabled arrow-prev"></a><a class="arrow arrow-next"></a></div>
                            </div>
                            <ul class="hs">
                                <asp:Repeater runat="server" ID="Repeater_AllProduct" OnItemCommand="Repeater_AllProduct_ItemCommand">
                                    <ItemTemplate>
                                        <li class="hs__item">
                                            <div class="hs__item__image__wrapper">
                                                <div class="item">

                                                    <div class="product-item">
                                                        <figure class="product-thumb">
                                                            <a href='<%# "/Language/En/ProductDetails/" + Eval("ProductId") + "/" + Common.GeneralUtilities.GetUniqueName(Eval("ProductName" , "{0}")) %>'>
                                                                <img class="pri-img" src='<%#"/Files/Products" +"/"+Eval("ProductId")  + "/"+ Eval("MainImage") %>' alt="product">
                                                                <img class="sec-img" src='<%#"/Files/Products" +"/"+Eval("ProductId")  + "/"+ Eval("MainImage") %>' alt="product">
                                                            </a>
                                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<div class="product-badge">
                                                                <%--<div class=' <%# (bool)Eval("MarkNew") == true ? "product-label new" : "" %> '>
                                            <%# (bool)Eval("MarkNew") == true ? "new" : "" %>
                                        </div>--%>
                                                            </div>
                                                            <div class="button-group">
                                                                <asp:LinkButton runat="server" CommandName="Wishlist" CommandArgument='<%# Eval("ProductId")%>' ID="LinkButton1"><i class="pe-7s-like"></i></asp:LinkButton>
                                                                <a href='<%# "/Language/En/ProductDetails/" + Eval("ProductId") + "/" + Common.GeneralUtilities.GetUniqueName(Eval("ProductName" , "{0}")) %>'><span data-bs-toggle="tooltip" title="Quick View"><i class="pe-7s-look"></i></span></a>
                                                            </div>
                                                        </figure>
                                                        <div class="product-caption text-center">
                                                            <h6 class="product-name">
                                                                <a href='<%# "/Language/En/ProductDetails/" + Eval("ProductId") + "/" + Common.GeneralUtilities.GetUniqueName(Eval("ProductName" , "{0}")) %>'><%# Eval("ProductName")%></a>
                                                            </h6>
                                                            <div class="price-box">
                                                                <span class="price-regular"><%# Eval("ProductPrice")%></span>
                                                                <span class="price-old"><del><%# (Decimal)Eval("OldProductPrice") == 0 ? "" : Eval("OldProductPrice")%></del> EGP</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>
                                            <div class="hs__item__description"><span class="hs__item__title"></span><span class="hs__item__subtitle"></span></div>
                                            <div class="hs__item__description"><span class="hs__item__title"></span><span class="hs__item__subtitle"></span></div>
                                            <div class="hs__item__description"><span class="hs__item__title"></span><span class="hs__item__subtitle"></span></div>
                                            <div class="hs__item__description"><span class="hs__item__title"></span><span class="hs__item__subtitle"></span></div>
                                        </li>
                                    </ItemTemplate>

                                </asp:Repeater>
                            </ul>
                        </div>



                    </div>

                    <div class="tab-content" id="tab-profile" style="display: none">
                        <div class="hs__wrapper">
                            <div class="hs__header">
                                <h2 class="hs__headline"></h2>
                                <div class="hs__arrows"><a class="arrow disabled arrow-prev"></a><a class="arrow arrow-next"></a></div>
                            </div>
                            <ul class="hs">
                                <asp:Repeater runat="server" ID="Repeater_NewProduct">
                                    <ItemTemplate>
                                        <li class="hs__item">
                                            <div class="hs__item__image__wrapper">
                                                <div class="item">

                                                    <div class="product-item">
                                                        <figure class="product-thumb">
                                                            <a href='<%# "/Language/En/ProductDetails/" + Eval("ProductId") + "/" + Common.GeneralUtilities.GetUniqueName(Eval("ProductName" , "{0}")) %>'>
                                                                <img class="pri-img" src='<%#"/Files/Products" +"/"+Eval("ProductId")  + "/"+ Eval("MainImage") %>' alt="product">
                                                                <img class="sec-img" src='<%#"/Files/Products" +"/"+Eval("ProductId")  + "/"+ Eval("MainImage") %>' alt="product">
                                                            </a>
                                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<div class="product-badge">
                                                               <%-- <div class=' <%# (bool)Eval("MarkNew") == true ? "product-label new" : "" %> '>
                                                        <%# (bool)Eval("MarkNew") == true ? "new" : "" %>
                                                    </div>--%>
                                                            </div>
                                                            <div class="button-group">
                                                                <asp:LinkButton runat="server" CommandName="Wishlist" CommandArgument='<%# Eval("ProductId")%>' ID="LinkButton1"><i class="pe-7s-like"></i></asp:LinkButton>
                                                                <a href='<%# "/Language/En/ProductDetails/" + Eval("ProductId") + "/" + Common.GeneralUtilities.GetUniqueName(Eval("ProductName" , "{0}")) %>'><span data-bs-toggle="tooltip" title="Quick View"><i class="pe-7s-look"></i></span></a>
                                                            </div>
                                                        </figure>
                                                        <div class="product-caption text-center">
                                                            <h6 class="product-name">
                                                                <a href='<%# "/Language/En/ProductDetails/" + Eval("ProductId") + "/" + Common.GeneralUtilities.GetUniqueName(Eval("ProductName" , "{0}")) %>'><%# Eval("ProductName")%></a>
                                                            </h6>
                                                            <div class="price-box">
                                                                <span class="price-regular"><%# Eval("ProductPrice")%></span>
                                                                <span class="price-old"><del><%# (Decimal)Eval("OldProductPrice") == 0 ? "" : Eval("OldProductPrice")%></del> EGP</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>
                                            <div class="hs__item__description"><span class="hs__item__title"></span><span class="hs__item__subtitle"></span></div>
                                            <div class="hs__item__description"><span class="hs__item__title"></span><span class="hs__item__subtitle"></span></div>
                                            <div class="hs__item__description"><span class="hs__item__title"></span><span class="hs__item__subtitle"></span></div>
                                            <div class="hs__item__description"><span class="hs__item__title"></span><span class="hs__item__subtitle"></span></div>
                                        </li>
                                    </ItemTemplate>

                                </asp:Repeater>
                            </ul>
                        </div>


                    </div>

                    <div class="tab-content" id="tab-contact" style="display: none">
                        <div class="hs__wrapper">
                            <div class="hs__header">
                                <h2 class="hs__headline"></h2>
                                <div class="hs__arrows"><a class="arrow disabled arrow-prev"></a><a class="arrow arrow-next"></a></div>
                            </div>
                            <ul class="hs">
                                <asp:Repeater runat="server" ID="Repeater_BestSeller">
                                    <ItemTemplate>
                                        <li class="hs__item">
                                            <div class="hs__item__image__wrapper">
                                                <div class="item">

                                                    <div class="product-item">
                                                        <figure class="product-thumb">
                                                            <a href='<%# "/Language/En/ProductDetails/" + Eval("Id") + "/" + Common.GeneralUtilities.GetUniqueName(Eval("ProductName" , "{0}")) %>'>
                                                                <img class="pri-img" src='<%#Eval("PhotoURL") %>' alt="product">
                                                                <img class="sec-img" src='<%#Eval("PhotoURL") %>' alt="product">
                                                            </a>
                                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<div class="product-badge">
                                                                <%--<div class=' <%# (bool)Eval("MarkAsNew") == true ? "product-label new" : "" %> '>
                                                        <%# (bool)Eval("MarkAsNew") == true ? "new" : "" %>
                                                    </div>--%>
                                                            </div>
                                                            <div class="button-group">
                                                                <asp:LinkButton runat="server" CommandName="Wishlist" CommandArgument='<%# Eval("Id")%>' ID="LinkButton1"><i class="pe-7s-like"></i></asp:LinkButton>
                                                                <a href='<%# "/Language/En/ProductDetails/" + Eval("Id") + "/" + Common.GeneralUtilities.GetUniqueName(Eval("ProductName" , "{0}")) %>'><span data-bs-toggle="tooltip" title="Quick View"><i class="pe-7s-look"></i></span></a>
                                                            </div>
                                                        </figure>
                                                        <div class="product-caption text-center">
                                                            <h6 class="product-name">
                                                                <a href='<%# "/Language/En/ProductDetails/" + Eval("Id") + "/" + Common.GeneralUtilities.GetUniqueName(Eval("ProductName" , "{0}")) %>'><%# Eval("ProductName")%></a>
                                                            </h6>
                                                            <div class="price-box">
                                                                <span class="price-regular"><%# Eval("Price")%></span>
                                                                <span class="price-old"><del><%# (Decimal)Eval("OldPrice") == 0 ? "" : Eval("OldPrice")%></del> EGP</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="hs__item__description"><span class="hs__item__title"></span><span class="hs__item__subtitle"></span></div>
                                            <div class="hs__item__description"><span class="hs__item__title"></span><span class="hs__item__subtitle"></span></div>
                                            <div class="hs__item__description"><span class="hs__item__title"></span><span class="hs__item__subtitle"></span></div>
                                            <div class="hs__item__description"><span class="hs__item__title"></span><span class="hs__item__subtitle"></span></div>
                                        </li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>


                    </div>
                </div>


            </div>

        </div>
    </div>
</div>
<%--<script src="/App_Themes/asset/js/jquery.min.js"></script>
<script src="/App_Themes/asset/js/jquery3-4-0.min.js"></script>--%>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>


<script>
    var instance = $(".hs__wrapper");
    $.each(instance, function (key, value) {

        var arrows = $(instance[key]).find(".arrow"),
            prevArrow = arrows.filter('.arrow-prev'),
            nextArrow = arrows.filter('.arrow-next'),
            box = $(instance[key]).find(".hs"),
            x = 0,
            mx = 0,
            maxScrollWidth = box[0].scrollWidth - (box[0].clientWidth / 2) - (box.width() / 2);

        $(arrows).on('click', function () {

            if ($(this).hasClass("arrow-next")) {
                x = ((box.width() / 2)) + box.scrollLeft() - 10;
                box.animate({
                    scrollLeft: x,
                })
            } else {
                x = ((box.width() / 2)) - box.scrollLeft() - 10;
                box.animate({
                    scrollLeft: -x,
                })
            }

        });

        $(box).on({
            mousemove: function (e) {
                var mx2 = e.pageX - this.offsetLeft;
                if (mx) this.scrollLeft = this.sx + mx - mx2;
            },
            mousedown: function (e) {
                this.sx = this.scrollLeft;
                mx = e.pageX - this.offsetLeft;
            },
            scroll: function () {
                toggleArrows();
            }
        });

        $(document).on("mouseup", function () {
            mx = 0;
        });

        function toggleArrows() {
            if (box.scrollLeft() > maxScrollWidth - 10) {
                // disable next button when right end has reached 
                nextArrow.addClass('disabled');
            } else if (box.scrollLeft() < 10) {
                // disable prev button when left end has reached 
                prevArrow.addClass('disabled')
            } else {
                // both are enabled
                nextArrow.removeClass('disabled');
                prevArrow.removeClass('disabled');
            }
        }

    });
</script>

<script>
    $('.tab-link').click(function (e) {

        if (!$(this).hasClass('active')) {

            $('.tab-link').removeClass('active');
            $(this).addClass('active');
            var id = $(this).attr('id');
            id = id.split('-');
            id = id[1];
            $('.tab-content').css('display', 'none');
            $('#tab-' + id).css('display', 'block')

        }

    });

</script>


<asp:HiddenField runat="server" ID="HfNewProduct"></asp:HiddenField>
<asp:HiddenField ID="selected_tab" runat="server" />

<asp:HiddenField runat="server" ID="HfBestSeller"></asp:HiddenField>
<asp:HiddenField runat="server" ID="HfOldPrice"></asp:HiddenField>
<asp:HiddenField runat="server" ID="HfShowItemSale"></asp:HiddenField>
<asp:HiddenField runat="server" ID="HfShowBestSeller"></asp:HiddenField>









