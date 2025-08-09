<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="BGBeautyProject_Website.Language.En.TestPage.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- CSS
	============================================ -->
    <!-- google fonts -->
    <link href="https://fonts.googleapis.com/css?family=Josefin+Sans:300,300i,400,400i,600,600i,700,700i%7CPoppins:300,300i,400,400i,500,500i,600,700,800,900&display=swap" rel="stylesheet" />
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="/App_Themes/assets/css/vendor/bootstrap.min.css" />
    <!-- Pe-icon-7-stroke CSS -->
    <link rel="stylesheet" href="/App_Themes/assets/css/vendor/pe-icon-7-stroke.css" />
    <!-- Font-awesome CSS -->
    <link rel="stylesheet" href="/App_Themes/assets/css/vendor/font-awesome.min.css" />
    <!-- Slick slider css -->
    <link rel="stylesheet" href="/App_Themes/assets/css/plugins/slick.min.css" />
    <!-- animate css -->
    <link rel="stylesheet" href="/App_Themes/assets/css/plugins/animate.css" />
    <!-- Nice Select css -->
    <link rel="stylesheet" href="/App_Themes/assets/css/plugins/nice-select.css" />
    <!-- jquery UI css -->
    <link rel="stylesheet" href="/App_Themes/assets/css/plugins/jqueryui.min.css" />
    <!-- main style css -->
    <link rel="stylesheet" href="/App_Themes/assets/css/style.css" />


    <title></title>
</head>
<body>
    <form id="form1" runat="server">
<%--        <asp:ScriptManager ID="ScriptManager2" runat="server" EnablePartialRendering="true"></asp:ScriptManager>
                      <asp:UpdatePanel ID="UpdatePanel1"  runat="server">
            <ContentTemplate>--%>
       

                <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/jquery-ui.js" type="text/javascript"></script>
<link href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/themes/start/jquery-ui.css"
    rel="stylesheet" type="text/css" />
<script type="text/javascript">
    var selected_tab = 1;
    $(function () {
        var tabs = $("#tabs").tabs({
            select: function (e, i) {
                selected_tab = i.index;
            }
        });
        selected_tab = $("[id$=selected_tab]").val() != "" ? parseInt($("[id$=selected_tab]").val()) : 0;
        tabs.tabs('select', selected_tab);
        $("form").submit(function () {
            $("[id$=selected_tab]").val(selected_tab);
        });
    });

</script>
<div id="tabs">
    <ul>
        <li><a href="#tabs-1">Tab 1</a></li>
        <li><a href="#tabs-2">Tab 2</a></li>
        <li><a href="#tabs-3">Tab 3</a></li>
    </ul>
    <div id="tabs-1">
                            <div class="row">
                            <div class="col-12">
                                <div class="product-container">

                                    <div class="tab-content">
                                        <div class="tab-pane fade show active" id="tab1">
                                            <div class="product-carousel-4 slick-row-10 slick-arrow-style slick-arrow-style__append">


                                               
                                                <asp:Repeater runat="server"  ID="Repeater_AllProduct" OnItemCommand="Repeater_AllProduct_ItemCommand">
                                                    <ItemTemplate>

                                                        <div class="product-item">
                                                            <figure class="product-thumb">
                                                                <a href='<%# "/Language/En/ProductDetailsArea/ProductDetails?id=" + Eval("ProductId") %>'>
                                                                    <img class="pri-img" src='<%#"/Files/Products" +"/"+Eval("ProductId")  + "/"+ Eval("MainImage") %>' alt="product">
                                                                    <img class="sec-img" src='<%#"/Files/Products" +"/"+Eval("ProductId")  + "/"+ Eval("MainImage") %>' alt="product">
                                                                </a>
                                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<div class="product-badge">
                                                                    <div class=' <%# (bool)Eval("MarkNew") == true ? "product-label new" : "" %> '>
                                                                        <%# (bool)Eval("MarkNew") == true ? "new" : "" %>
                                                                    </div>
                                                                </div>
                                                                <div class="button-group">
                                                                    <asp:LinkButton runat="server" CommandName="Wishlist" CommandArgument='<%# Eval("ProductId")%>' ID="LinkButton1"><i class="pe-7s-like"></i>wishlist</asp:LinkButton>
                                                                    <a href='<%# "/Language/En/ProductDetailsArea/ProductDetails?id=" + Eval("ProductId") %>'><span data-bs-toggle="tooltip" title="Quick View"><i class="pe-7s-look"></i></span></a>
                                                                </div>
                                                            </figure>
                                                            <div class="product-caption text-center">
                                                                <h6 class="product-name">
                                                                    <a href='<%# "/Language/En/ProductDetailsArea/ProductDetails?id=" + Eval("ProductId") %>'><%# Eval("ProductName")%></a>
                                                                </h6>
                                                                <div class="price-box">
                                                                    <span class="price-regular"><%# Eval("ProductPrice")%></span>
                                                                    <span class="price-old"><del><%# (Decimal)Eval("OldProductPrice") == 0 ? "" : Eval("OldProductPrice")%></del> EGP</span>
                                                                </div>
                                                            </div>
                                                        </div>

                                                    </ItemTemplate>

                                                </asp:Repeater>




                                            </div>
                                        </div>


                                    </div>
                                </div>
                            </div>
                        </div>
                        </div>
                        <div id="tabs-2">
                            <div class="row">
                            <div class="col-12">
                                <div class="product-container">

                                    <div class="tab-content">
                                        <div class="tab-pane fade show active" id="tab2">
                                            <div class="product-carousel-4 slick-row-10 slick-arrow-style slick-arrow-style__append">




                                                <asp:Repeater runat="server"  ID="Repeater_NewProduct">
                                                    <ItemTemplate>

                                                        <div class="product-item">
                                                            <figure class="product-thumb">
                                                                <a href='<%# "/Language/En/ProductDetailsArea/ProductDetails?id=" + Eval("ProductId") %>'>
                                                                    <img class="pri-img" src='<%#"/Files/Products" +"/"+Eval("ProductId")  + "/"+ Eval("MainImage") %>' alt="product">
                                                                    <img class="sec-img" src='<%#"/Files/Products" +"/"+Eval("ProductId")  + "/"+ Eval("MainImage") %>' alt="product">
                                                                </a>
                                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<div class="product-badge">
                                                                    <div class=' <%# (bool)Eval("MarkNew") == true ? "product-label new" : "" %> '>
                                                                        <%# (bool)Eval("MarkNew") == true ? "new" : "" %>
                                                                    </div>
                                                                </div>
                                                                <div class="button-group">
                                                                    <asp:LinkButton runat="server" CommandName="Wishlist" CommandArgument='<%# Eval("ProductId")%>' ID="LinkButton1"><i class="pe-7s-like"></i>wishlist</asp:LinkButton>
                                                                    <a href='<%# "/Language/En/ProductDetailsArea/ProductDetails?id=" + Eval("ProductId") %>'><span data-bs-toggle="tooltip" title="Quick View"><i class="pe-7s-look"></i></span></a>
                                                                </div>
                                                            </figure>
                                                            <div class="product-caption text-center">
                                                                <h6 class="product-name">
                                                                    <a href='<%# "/Language/En/ProductDetailsArea/ProductDetails?id=" + Eval("ProductId") %>'><%# Eval("ProductName")%></a>
                                                                </h6>
                                                                <div class="price-box">
                                                                    <span class="price-regular"><%# Eval("ProductPrice")%></span>
                                                                    <span class="price-old"><del><%# (Decimal)Eval("OldProductPrice") == 0 ? "" : Eval("OldProductPrice")%></del> EGP</span>
                                                                </div>
                                                            </div>
                                                        </div>

                                                    </ItemTemplate>

                                                </asp:Repeater>




                                            </div>
                                        </div>


                                    </div>
                                </div>
                            </div>
                        </div>
                        </div>
                        <div id="tabs-3">
                            <div class="row">
                            <div class="col-12">
                                <div class="product-container">

                                    <div class="tab-content">
                                        <div class="tab-pane fade show active" id="tab3">
                                            <div class="product-carousel-4 slick-row-10 slick-arrow-style slick-arrow-style__append">




                                                <asp:Repeater runat="server"  ID="Repeater_BestSeller">
                                                    <ItemTemplate>

                                                        <div class="product-item">
                                                            <figure class="product-thumb">
                                                                <a href='<%# "/Language/En/ProductDetailsArea/ProductDetails?id=" + Eval("ProductId") %>'>
                                                                    <img class="pri-img" src='<%#"/Files/Products" +"/"+Eval("ProductId")  + "/"+ Eval("MainImage") %>' alt="product">
                                                                    <img class="sec-img" src='<%#"/Files/Products" +"/"+Eval("ProductId")  + "/"+ Eval("MainImage") %>' alt="product">
                                                                </a>
                                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<div class="product-badge">
                                                                    <div class=' <%# (bool)Eval("MarkNew") == true ? "product-label new" : "" %> '>
                                                                        <%# (bool)Eval("MarkNew") == true ? "new" : "" %>
                                                                    </div>
                                                                </div>
                                                                <div class="button-group">
                                                                    <asp:LinkButton runat="server" CommandName="Wishlist" CommandArgument='<%# Eval("ProductId")%>' ID="LinkButton1"><i class="pe-7s-like"></i>wishlist</asp:LinkButton>
                                                                    <a href='<%# "/Language/En/ProductDetailsArea/ProductDetails?id=" + Eval("ProductId") %>'><span data-bs-toggle="tooltip" title="Quick View"><i class="pe-7s-look"></i></span></a>
                                                                </div>
                                                            </figure>
                                                            <div class="product-caption text-center">
                                                                <h6 class="product-name">
                                                                    <a href='<%# "/Language/En/ProductDetailsArea/ProductDetails?id=" + Eval("ProductId") %>'><%# Eval("ProductName")%></a>
                                                                </h6>
                                                                <div class="price-box">
                                                                    <span class="price-regular"><%# Eval("ProductPrice")%></span>
                                                                    <span class="price-old"><del><%# (Decimal)Eval("OldProductPrice") == 0 ? "" : Eval("OldProductPrice")%></del> EGP</span>
                                                                </div>
                                                            </div>
                                                        </div>

                                                    </ItemTemplate>

                                                </asp:Repeater>




                                            </div>
                                        </div>


                                    </div>
                                </div>
                            </div>
                        </div>
                        </div>
</div>
           
                <script src="/App_Themes/assets/js/plugins/slick.min.js"></script>

                <!-- Modernizer JS -->
                <script src="/App_Themes/assets/js/vendor/modernizr-3.6.0.min.js"></script>
                <!-- jQuery JS -->
                <script src="/App_Themes/assets/js/vendor/jquery-3.6.0.min.js"></script>
                <!-- Bootstrap JS -->
                <script src="/App_Themes/assets/js/vendor/bootstrap.bundle.min.js"></script>
                <!-- slick Slider JS -->
                <script src="/App_Themes/assets/js/plugins/slick.min.js"></script>
                <!-- Nice Select JS -->
                <script src="/App_Themes/assets/js/plugins/nice-select.min.js"></script>
                <!-- jquery UI JS -->
                <script src="/App_Themes/assets/js/plugins/jqueryui.min.js"></script>
                <!-- Image zoom JS -->
                <script src="/App_Themes/assets/js/plugins/image-zoom.min.js"></script>
                <!-- mail-chimp active js -->
                <script src="/App_Themes/assets/js/plugins/ajaxchimp.js"></script>
                <!-- contact form dynamic js -->
                <script src="/App_Themes/assets/js/plugins/ajax-mail.js"></script>
                <!-- google map api -->
                <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCfmCVTjRI007pC1Yk2o2d_EhgkjTsFVN8"></script>
                <!-- google map active js -->
                <script src="/App_Themes/assets/js/plugins/google-map.js"></script>
                <!-- Main JS -->
                <script src="/App_Themes/assets/js/main.js"></script>
       <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/jquery-ui.js" type="text/javascript"></script>

                <asp:HiddenField runat="server" ID="HfNewProduct"></asp:HiddenField>
                <asp:HiddenField runat="server" ID="HfBestSeller"></asp:HiddenField>
                <asp:HiddenField runat="server" ID="HfOldPrice"></asp:HiddenField>
                <asp:HiddenField runat="server" ID="HfShowItemSale"></asp:HiddenField>
                <asp:HiddenField runat="server" ID="HfShowBestSeller"></asp:HiddenField>
           
               
        <!-- Global Vendor, plugins JS -->

    </form>
</body>
</html>
