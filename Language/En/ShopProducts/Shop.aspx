<%@ Page Title="" Language="C#" MasterPageFile="~/Language/En/InternalMasterPage.Master" AutoEventWireup="true" CodeBehind="Shop.aspx.cs" Inherits="BGBeauty_Website.Language.En.ShopProducts.Shop" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .btn_brand_style {
            font-size: 16px;
            line-height: 1;
            /*padding-left: 10px;*/
            font-weight: 400;
            display: block;
            cursor: pointer;
            color: #685353;
        }

            .btn_brand_style:hover {
                color: #ffa073;
            }

        .shop-categories li {
            padding: 5px;
        }

        .shop-categories #ContentPlaceHolder1_Rptr_ProductCategory_Btn_Category_1 {
            color: #555555;
            display: block;
            font-weight: 300;
            line-height: 1;
            padding: 10px 0;
            text-transform: capitalize;
        }

        .checkbox-container li a {
            color: gray;
        }

        .categories-list li {
            margin-bottom: 10px;
        }
        /* .price-range{
                margin-right: 13px;
               margin-bottom: 20px;
        }*/
        .price-filter {
            margin-bottom: 10px
        }

        .price-range {
            height: 5px;
            margin-bottom: 30px;
        }
        /*.price-range .ui-slider-handle{
           height: 12px;
           width: 10px;
       }*/

        .price-filter .price-slider-amount input {
            color: #555555;
            border: none;
            outline: none;
            pointer-events: none;
            margin-bottom: 10px;
        }

        .price-filter .Btn_Price_Filter:hover {
            color: #fff;
            background-color: #ffa073;
        }

        .price-filter .Btn_Price_Filter {
            border: none;
            color: #222222;
            font-size: 14px;
            font-weight: 400;
            cursor: pointer;
            text-transform: uppercase;
            padding: 4px 15px;
            border-radius: 3px;
            background-color: #ebebeb;
            margin-bottom: 5px;
            float: right;
        }

        .sidebar-body .checkbox-container ul {
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            flex-direction: column;
            gap: 5px;
        }

            .sidebar-body .checkbox-container ul li + li {
                margin-left: 0
            }

        .load-more-items {
            margin-top: 50px;
        }

            .load-more-items a {
                border: none;
                color: #222222;
                font-size: 14px;
                font-weight: 600;
                cursor: pointer;
                text-transform: uppercase;
                padding: 15px 25px;
                border-radius: 3px;
                background-color: #ebebeb;
            }

                .load-more-items a:hover {
                    background-color: #ffa073;
                    color: #FFF;
                    font-weight: 500;
                }

        .sticker-discount {
            background: #323232 none repeat scroll 0 0;
            border-radius: 0;
            color: #fff;
            display: inline-block;
            font-size: 12px;
            font-weight: 600;
            height: 25px;
            right: 20px;
            line-height: 25px;
            min-width: 50px;
            padding: 0 5px;
            position: absolute;
            text-align: center;
            text-transform: capitalize;
            top: 20px;
            z-index: 5;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="/App_Themes/asset/css/style_jPages-master.css" rel="stylesheet" />
    <link href="/App_Themes/asset/css/jPages.css" rel="stylesheet" />
    <link href="/App_Themes/asset/css/github.css" rel="stylesheet" />
    <link href="/App_Themes/asset/css/animate.css" rel="stylesheet" />
    <asp:HiddenField ID="HF_ProductID" runat="server" />



    <!-- Shop Page Start  -->

    <!-- Breadcrumb Area Start Here -->
    <div class="breadcrumb-area">
        <div class="container">
            <ol class="breadcrumb breadcrumb-list">
                <li class="breadcrumb-item"><a href="/">Home</a></li>
                <li class="breadcrumb-item active">shop</li>
            </ol>
        </div>
    </div>
    <!-- Breadcrumb Area End Here -->




    <!-- Shop Page Start -->
    <div class="main-shop-page ptb-90">
        <div class="container">
            <!-- Row End -->
            <div class="row">
                <!-- Sidebar Shopping Option Start -->
                <div class="col-lg-3 order-2 order-lg-1 mt-all-40">
                    <div class="sidebar shop-sidebar">
                        <!-- Price Filter Options Start -->
                        <div class="search-filter mb-30">
                            <h3 class="sidebar-title">filter by price</h3>
                            <div class="slider-sidebar">
                                <div id="slider-range"></div>
                                <%--                                <input type="text" id="amount" class="amount-range" readonly="">--%>
                                <asp:TextBox runat="server" ClientIDMode="Static" ID="TxtAmount" class="amount-range" OnTextChanged="TxtAmount_TextChanged1" />
                            </div>
                            <%--<div class="slider-sidebar">
                                <div id="slider-range"></div>
                                <asp:TextBox ID="TxtAmount" runat="server" OnTextChanged="TxtAmount_TextChanged1" type="text" class="amount-range"></asp:TextBox>
                            </div>--%>
                            <asp:LinkButton Text="Filter" ID="BtnPriceFilter" Style="background: #efefea; padding: 2px 20px; color: #000;"
                                class="Btn_Price_Filter" OnClick="BtnPriceFilter_Click" runat="server" />
                        </div>
                        <!-- Price Filter Options End -->
                        <!-- Sidebar Categorie Start -->
                        <div class="sidebar-categorie mb-30">
                            <h3 class="sidebar-title">categories</h3>
                            <asp:Label runat="server">
                                <asp:LinkButton ID="Btn_GetAllProduct" runat="server" OnClick="Btn_GetAllProduct_Click" ForeColor="Gray">All</asp:LinkButton></asp:Label>
                            <asp:Repeater runat="server" ID="Rptr_ProductCategory" OnItemCommand="Rptr_ProductCategory_ItemCommand">
                                <ItemTemplate>
                                    <ul class="sidbar-style">
                                        <li class="form-check">
                                            <asp:LinkButton runat="server" ID="Btn_Category" CommandName="Find" CommandArgument='<%# Eval("CategoryId", "{0}")%>' class="selected m-0 btn_category_style"><%# Eval("CategoryName")%> <span></span> </asp:LinkButton></li>
                                    </ul>
                                </ItemTemplate>
                            </asp:Repeater>
                            <%--<ul class="sidbar-style">
                                  
                                    <li class="form-check">
                                        <input class="form-check-input" value="#" id="Virtual" type="checkbox">
                                        <label class="form-check-label" for="Virtual"> Virtual Reality (8) </label>
                                    </li>
                                </ul>--%>
                        </div>
                        <!-- Sidebar Categorie Start -->
                        <!-- Product Size Start -->
                       <%-- <asp:Repeater runat="server" ID="Repeater_Attributes" Visible="false">
                            <ItemTemplate>
                                <div class="size mb-30">
                                    <h3 class="sidebar-title"><%#Eval("TextPrompt", "{0}") != "" ? Eval("TextPrompt", "{0}") :  Eval("AttributeName", "{0}")%></h3>
                                    <ul class="size-list sidbar-style" style="display: flex; flex-direction: column">
                                      
                                        <asp:Repeater ID="RepeaterAttributeValues_Size" runat="server" OnItemCommand="RepeaterAttributeValues_Size_ItemCommand" DataSource='<%# GetAttributeValues(1, (int)Eval("AttributeControlTypeId")) %>'
                                            Visible='<%# (int)Eval("AttributeControlTypeId") == 1 ? true : false %>'>
                                            <ItemTemplate>

                                                <li class="form-check">
                                                    <asp:LinkButton runat="server" CommandName="Filter" CommandArgument='<%# Eval("Name", "{0}")%>' class="active size-style-btn form-check-input" Style="cursor: pointer"><%# Eval("Name") %></asp:LinkButton></li>

                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </ul>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>--%>
                        <!-- Product Size End -->
                        <!-- Product Color Start -->
                        <%--<div class="color mb-30">
                                <h3 class="sidebar-title">color</h3>
                                <ul class="color-option sidbar-style">
                                    <li>
                                        <span class="white"></span>
                                        <a href="#">white (4)</a>
                                    </li>
                                    <li>
                                        <span class="orange"></span>
                                        <a href="#">Orange (2)</a>
                                    </li>
                                    <li>
                                        <span class="blue"></span>
                                        <a href="#">Blue (6)</a>
                                    </li>
                                    <li>
                                        <span class="yellow"></span>
                                        <a href="#">Yellow (8)</a>
                                    </li>
                                </ul>
                            </div>--%>
                        <!-- Product Color End -->
                        <!-- Sidebar Categorie Start -->
                        <%--<div class="sidebar-categorie mb-30">
                                <h3 class="sidebar-title">Components</h3>
                                <ul class="sidbar-style">
                                    <li class="form-check">
                                        <input class="form-check-input" value="#" type="checkbox">
                                        <label class="form-check-label">cotton (4)</label>
                                    </li>
                                    <li class="form-check">
                                        <input class="form-check-input" value="#" type="checkbox">
                                        <label class="form-check-label">polyester (4)</label>
                                    </li>
                                    <li class="form-check">
                                        <input class="form-check-input" value="#" type="checkbox">
                                        <label class="form-check-label">Viscose (5)</label>
                                    </li>
                                </ul>
                            </div>--%>
                        <!-- Sidebar Categorie Start -->
                        <!-- Sidebar Categorie Start -->
                        <%--<div class="sidebar-categorie mb-30">
                                <h3 class="sidebar-title">Styles</h3>
                                <ul class="sidbar-style">
                                    <li class="form-check">
                                        <input class="form-check-input" value="#" type="checkbox">
                                        <label class="form-check-label">casual (5)</label>
                                    </li>
                                    <li class="form-check">
                                        <input class="form-check-input" value="#" type="checkbox">
                                        <label class="form-check-label">dressy (2)</label>
                                    </li>
                                    <li class="form-check">
                                        <input class="form-check-input" value="#" type="checkbox">
                                        <label class="form-check-label">girly (8)</label>
                                    </li>
                                </ul>
                            </div>--%>
                        <!-- Sidebar Categorie Start -->
                        <!-- Sidebar Categorie Start -->
                        <%--<div class="sidebar-categorie">
                                <h3 class="sidebar-title">Properties</h3>
                                <ul class="sidbar-style">
                                    <li class="form-check">
                                        <input class="form-check-input" value="#" type="checkbox">
                                        <label class="form-check-label">colorful dress (2)</label>
                                    </li>
                                    <li class="form-check">
                                        <input class="form-check-input" value="#" type="checkbox">
                                        <label class="form-check-label">maxi dress (2)</label>
                                    </li>
                                    <li class="form-check">
                                        <input class="form-check-input" value="#" type="checkbox">
                                        <label class="form-check-label">midi dress (2)</label>
                                    </li>
                                    <li class="form-check">
                                        <input class="form-check-input" value="#" type="checkbox">
                                        <label class="form-check-label">short dress (4) </label>
                                    </li>
                                    <li class="form-check">
                                        <input class="form-check-input" value="#" type="checkbox">
                                        <label class="form-check-label">short sleve (3) </label>
                                    </li>
                                </ul>
                            </div>--%>
                        <!-- Sidebar Categorie Start -->
                    </div>

                </div>
                <!-- Sidebar Shopping Option End -->
                <!-- Product Categorie List Start -->
                <div class="col-lg-9 order-1 order-lg-2">
                    <!-- Grid & List View Start -->
                    <div class="grid-list-top border-default universal-padding d-md-flex justify-content-md-between align-items-center mb-30">
                        <div class="grid-list-view d-flex align-items-center  mb-sm-15">
                            <ul class="nav tabs-area d-flex align-items-center">
                                <li><a class="active" data-bs-toggle="tab" href="#grid-view"><i
                                    class="fa fa-th"></i></a></li>
                                <li><a data-bs-toggle="tab" href="#list-view"><i class="fa fa-list-ul"></i></a></li>
                            </ul>
                            <span class="show-items">
                                <asp:Label runat="server" ID="LblProductCount"></asp:Label>
                                products found.</span>
                        </div>
                        <!-- Toolbar Short Area Start -->
                        <div class="main-toolbar-sorter clearfix">
                            <div class="toolbar-sorter d-md-flex align-items-center">
                                <label>Sort By:</label>
                                <asp:DropDownList class="nice-select sorter wide" name="sortby" ID="DDl_OrderList" runat="server" OnSelectedIndexChanged="DDl_OrderList_SelectedIndexChanged" AutoPostBack="true">

                                    <asp:ListItem Value="0">All Product</asp:ListItem>
                                    <asp:ListItem Value="1">Name (A - Z)</asp:ListItem>
                                    <asp:ListItem Value="2">Name (Z - A)</asp:ListItem>
                                    <asp:ListItem Value="3">Price (Low &gt; Hight)</asp:ListItem>
                                    <asp:ListItem Value="4">Price (Hight &gt; Low)</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <!-- Toolbar Short Area End -->
                    </div>
                    <!-- Grid & List View End -->
                    <div class="shop-area mb-all-40">
                        <!-- Grid & List Main Area End -->
                        <div class="tab-content">
                            <div id="grid-view" class="tab-pane fade show active">
                                <div class="row border-hover-effect " id="itemContainer">
                                    <asp:Repeater runat="server" ID="Repeater_ProductsShop" OnItemCommand="Repeater_ProductsShop_ItemCommand">
                                        <ItemTemplate>
                                            <div class="col-lg-4 col-md-4 col-sm-6 col-6">
                                                <!-- Single Product Start Here -->
                                                <div class="single-makal-product">
                                                    <div class="pro-img">
                                                        <a href='<%# "/Language/En/ProductDetails/" + Eval("ProductId") + "/" + Common.GeneralUtilities.GetUniqueName(Eval("ProductName" , "{0}")) %>'>
                                                            <img src='<%# "/Files/Products" +"/"+Eval("ProductId")  + "/"+ Eval("MainImage") %>' alt="product-img">
                                                        </a>
                                                        <span class=' <%# (bool)Eval("MarkNew") == true ? "sticker-new" : "" %> '><%# (bool)Eval("MarkNew") == true ? "new" : "" %></span>
                                                        <span class=' <%# Eval("Discount","{0:0}") != "0" ? "sticker-discount" : "" %>'><%# Eval("Discount","{0:0}") == "0" ? "" : Eval("Discount","{0:0}")+"%" %> </span>
                                                        <div class="quick-view-pro">
                                                            <a class="quick-view" href='<%# "/Language/En/ProductDetails/" + Eval("ProductId") + "/" + Common.GeneralUtilities.GetUniqueName(Eval("ProductName" , "{0}")) %>'></a>
                                                        </div>
                                                    </div>
                                                    <div class="pro-content">
                                                        <h4 class="pro-title">
                                                            <a href='<%# "/Language/En/ProductDetails/" + Eval("ProductId") + "/" + Common.GeneralUtilities.GetUniqueName(Eval("ProductName" , "{0}")) %>'><%# Eval("ProductName")%></a>
                                                        </h4>
                                                        <p>
                                                            <span class="price"><%# Eval("ProductPrice")%></span><span class="prev-price"><%# (Decimal)Eval("OldProductPrice") == 0 ? "" : Eval("OldProductPrice")%></span>
                                                        </p>
                                                        <%--<div class="pro-actions">
                                                    <div class="actions-primary">
                                                        <a href="cart.html" class="add-to-cart" data-toggle="tooltip" data-original-title="Add to Cart">Add To Cart</a>
                                                    </div>
                                                    
                                                </div>--%>
                                                    </div>
                                                </div>
                                                <!-- Single Product End Here -->
                                            </div>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </div>
                                <!-- Row End -->
                            </div>
                            <!-- #grid view End -->
                            <div id="list-view" class="tab-pane fade fix">
                                <asp:Repeater runat="server" ID="Repeater_ProductShopSide" OnItemCommand="Repeater_ProductsShop_ItemCommand">
                                    <ItemTemplate>
                                        <!-- Single Product Start Here -->
                                        <div class="single-makal-product">
                                            <div class="pro-img">
                                                <a href='<%# "/Language/En/ProductDetails/" + Eval("ProductId") + "/" + Common.GeneralUtilities.StripSpaces(Eval("ProductName" , "{0}")) %>'>
                                                    <img src='<%# "/Files/Products" +"/"+Eval("ProductId")  + "/"+ Eval("MainImage") %>' alt="product-img"></a>
                                                <span class=' <%# (bool)Eval("MarkNew") == true ? "sticker-new" : "" %> '><%# (bool)Eval("MarkNew") == true ? "new" : "" %></span>
                                            </div>
                                            <div class="pro-content">
                                                <h4 class="pro-title"><a href='<%# "/Language/En/ProductDetails/" + Eval("ProductId") + "/" + Common.GeneralUtilities.StripSpaces(Eval("ProductName" , "{0}")) %>'><%# Eval("ProductName")%></a>
                                                </h4>

                                                <p>
                                                    <span class="price"><%# Eval("ProductPrice")%></span><span class="prev-price"><%# (Decimal)Eval("OldProductPrice") == 0 ? "" : Eval("OldProductPrice")%></span>
                                                </p>
                                                <p>
                                                    <%# Eval("ProductDescription")%>
                                                </p>
                                            </div>
                                        </div>
                                        <!-- Single Product End Here -->
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>
                            <!-- #list view End -->
                        </div>
                        <!-- Grid & List Main Area End -->
                    </div>
                    <!-- Shop Breadcrumb Area Start -->
                    <div class="shop-breadcrumb-area  mt-30">
                        <div class="row">
                            <%--<div class="col-lg-4 col-md-4 col-sm-5">
                                <span class="show-items">Showing 1-12 of 13 item(s) </span>
                            </div>--%>
                            <div class="holder"></div>
                            <div class="col-lg-8 col-md-8 col-sm-7 makali-btn transparent-btn grey-border" style="visibility: hidden">
                                <asp:LinkButton runat='server' ID="Btn_LoadMore"
                                    OnClick="Btn_LoadMore_Click">
                                   Load More </asp:LinkButton>
                            </div>
                        </div>
                    </div>
                    <!-- Shop Breadcrumb Area End -->
                </div>
                <!-- product Categorie List End -->
            </div>
            <!-- Row End -->
        </div>
        <!-- Container End -->
    </div>
    <!-- Shop Page End -->





















    <!-- Shop Page End  -->





    <asp:HiddenField ID="HfCategoryID" runat="server"></asp:HiddenField>
    <asp:HiddenField ID="HfBrandID" runat="server"></asp:HiddenField>
    <asp:HiddenField ID="HfAttributeColor" runat="server"></asp:HiddenField>
    <asp:HiddenField ID="HfAttributeSize" runat="server"></asp:HiddenField>
    <asp:HiddenField ID="HfLoadMore" runat="server"></asp:HiddenField>
    <asp:HiddenField ID="HfProductPrice" runat="server"></asp:HiddenField>
    <asp:HiddenField ID="HfLoadMore_Btn" runat="server"></asp:HiddenField>

    <%--    <script>

        $(document).ready(function () {
            $("#slider-range").slider({
                range: true,
                min: 0,
                max: 500,
                values: [0, 500],
                slide: function (event, ui) {
                    $("#ContentPlaceHolder1_TxtAmount").val("EGP" + ui.values[0] + "  EGP" + ui.values[1]);
                }
            });
            $("#ContentPlaceHolder1_TxtAmount").val("EGP" + $("#slider-range").slider("values", 0) +
                "  EGP" + $("#slider-range").slider("values", 1));
        });

    </script>--%>
</asp:Content>
