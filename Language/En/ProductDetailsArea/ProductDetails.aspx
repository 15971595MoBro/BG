<%@ Page Title="" Language="C#" MasterPageFile="~/Language/En/InternalMasterPage.Master" ValidateRequest="false" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="BGBeauty_Website.Language.En.ProductDetailsArea.ProductDetails" %>


<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        #ContentPlaceHolder1_Repeater_Attributes_Repeater_ColorAttr_0_RadioButtonColor_0 {
            cursor: pointer;
            background-color: #0ceb2a;
            height: 15px;
            width: 15px;
            display: block;
        }

        .product-details-content .pro-details-size-info {
            margin: 15px 0 15px;
        }

        .product-details-content .pro-details-color-info {
            margin: 20px 0 10px;
        }

            .product-details-content .pro-details-color-info .pro-details-color ul li a {
                background-color: transparent;
            }

        .color-categories li {
            border: none;
        }

        .radio-toolbar {
            margin: 10px;
            display: flex;
            gap: 4px;
        }

            .radio-toolbar span {
                color: #525252;
                display: inline-block;
                font-size: 18px;
                font-weight: 800;
                min-width: 25px;
                min-height: 25px;
                /*border-radius: 50%;*/
            }

            .radio-toolbar input[type="radio"] {
                opacity: 0;
                position: fixed;
                width: 0;
            }

            .radio-toolbar label {
                display: inline-block;
                /*background-color: #ddd;*/
                /*padding: 10px 20px;*/
                font-family: sans-serif, Arial;
                font-size: 16px;
                position: absolute;
                width: 25px;
                margin-top: -1px;
                height: 25px;
                margin-left: -1px;
                /*border-radius: 50%;*/
                /*border: 2px solid #444;*/
                /*border-radius: 4px;*/
                cursor: pointer;
            }


                .radio-toolbar label:hover {
                }

            .radio-toolbar input[type="radio"]:focus + label {
                /*border: 2px dashed #444;*/
                /*padding: 1px;*/
                border: 2px solid #efefef;
                /*transition: 0.4s;*/
            }

            .radio-toolbar input[type="radio"]:checked + label {
                /*border: 2px dashed #444;*/
                /*padding: 1px;*/
                /*border: 2px solid #efefef;*/
                /*transition: 0.4s;*/
                border: 3px solid #9e9090;
                width: 29px;
                height: 29px;
            }


        .radio-toolbarsize {
            margin: 10px;
            display: flex
        }

            .radio-toolbarsize input[type="radio"] {
                opacity: 0;
                position: fixed;
                width: 0;
            }

            .radio-toolbarsize label {
                display: inline-block;
                /*background-color: #ddd;*/
                /*padding: 10px 20px;*/
                font-family: sans-serif, Arial;
                font-size: 16px;
                position: absolute;
                width: 45px;
                margin-top: -1px;
                height: 42px;
                margin-left: -1px;
                border-radius: 50%;
                /*border: 2px solid #444;*/
                /*border-radius: 4px;*/
            }


                .radio-toolbarsize label:hover {
                }

            .radio-toolbarsize input[type="radio"]:focus + label {
                /*border: 2px dashed #444;*/

                padding: 1px;
                border: 2px solid #efefef;
                transition: 0.4s;
            }

            .radio-toolbarsize input[type="radio"]:checked {
                /*border: 2px dashed #444;*/
                /*            padding: 1px;
            border: 2px solid #efefef;
            transition: 0.4s;*/
            }



        .product-details-content .pro-details-color-info span {
            color: #525252;
            display: inline-block;
            font-size: 18px;
            font-weight: 600;
            min-width: 43px;
            border-radius: 50%;
            min-height: 40px;
            position: relative;
        }

        .radio-toolbar input[type="radio"]:checked + label {
            /*border: 3px dashed #000;*/
            /*padding: 1px;
            border: 2px solid #efefef;

            transition: 0.4s;*/
        }

        .color-categories li {
            list-style: none;
            display: inline-block;
            padding: 1px;
            border: 2px solid #efefef;
            -webkit-transition: 0.4s;
            -o-transition: 0.4s;
            transition: 0.4s;
        }


        /*********************** Review Rating  ***************************/
        /*********************** Review Rating  ***************************/
        .savedStar {
            background-image: url(Image/Saved_Star.png);
        }

        .filledStar {
            background-image: url('/images/Filled_Star.png');
        }

        .emptyStar {
            background-image: url('/images/Empty_Star.png');
        }

        .ratingStar {
            font-size: 0pt;
            width: 30px;
            height: 30px;
            cursor: pointer;
            display: block;
            background-repeat: no-repeat;
        }

        .ratingStarReview {
            font-size: 0pt;
            width: 20px;
            height: 23px;
            cursor: pointer;
            display: block;
            background-repeat: no-repeat;
        }
        /*********************** Review Rating  ***************************/
        /*********************** Review Rating  ***************************/
    </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Breadcrumb Area Start Here -->
    <div class="breadcrumb-area">
        <div class="container">
            <ol class="breadcrumb breadcrumb-list">
                <li class="breadcrumb-item"><a href="/">Home</a></li>
                <li class="breadcrumb-item active">
                    <asp:Label ID="LblHeaderLink" runat="server" /></li>
            </ol>
        </div>
    </div>
    <!-- Breadcrumb Area End Here -->



    <!-- Product Thumbnail Start -->
    <div class="main-product-thumbnail white-bg ptb-90">
        <div class="container">
            <div class="row">
                <!-- Main Thumbnail Image Start -->
                <div class="col-lg-4 col-md-6 mb-all-40">
                    <!-- Thumbnail Large Image start -->
                    <div class="tab-content" id="tabContentPhoto">
                        <asp:Repeater runat="server" ID="Repeater_ProductImg">
                            <ItemTemplate>
                                <div id='thumb<%#Eval("PhotoID") %>' class="tab-pane fade">
                                    <a data-fancybox="images" href='<%# Eval("PhotoURL") %>'>
                                        <img src='<%# Eval("PhotoURL") %>' alt="product-view"></a>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                    <!-- Thumbnail Large Image End -->
                    <!-- Thumbnail Image End -->
                    <div class="product-thumbnail">
                        <div class="thumb-menu owl-carousel nav tabs-area" role="tablist">
                            <asp:Repeater runat="server" ID="Repeater_ProductThumbImg">
                                <ItemTemplate>
                                    <a class="active" data-bs-toggle="tab" href='#thumb<%#Eval("PhotoID") %>'>
                                        <img src='<%# Eval("PhotoURL") %>' alt="product-thumbnail"></a>
                                </ItemTemplate>
                            </asp:Repeater>


                        </div>
                    </div>
                    <!-- Thumbnail image end -->
                </div>
                <!-- Main Thumbnail Image End -->
                <!-- Thumbnail Description Start -->
                <div class="col-lg-8 col-md-6">
                    <div class="thubnail-desc fix">
                       <%-- <asp:Repeater runat="server" ID="Repeater_ProductInfo">
                            <ItemTemplate>--%>
                                <h3 class="product-header"><%= HF_ProductName.Value %></h3>
                                <div class="pro-thumb-price mt-10">
                                    <p class="d-flex align-items-center">
                                         <%= HF_OldPrice.Value == "0.00" || HF_OldPrice.Value == "" ? "" : "<span class='prev-price'>" + HF_OldPrice.Value +"</span>" %>
<%--                                        <span class="prev-price"><%# (Decimal)Eval("OldPrice") == 0 ? "" : Eval("OldPrice")%></span>--%>
                                        <span class="price"></span><%=  String.Format("{0:0.00}", Convert.ToString(HF_Price.Value)) %><%--<span class="saving-price">-5%</span>--%>
                                    </p>
                                    <p class="pro-desc-details">
                                        <%= HF_ShortDescription.Value %>
                                    </p>
                                    <div>
                                        <ul style="display: flex; flex-direction: column; gap: 10px; padding: 5px 0 20px 0;">
                                            <li><span>SKU:</span> <%= HF_Sku.Value %></li>
                                            <li><span>Categories:</span>
                                                <a href="#"><%= HF_CategoryName.Value %></a>
                                            </li>

                                            <li><span>Stock:</span>
                                                <a href="#"><%= HF_StockQuantity.Value %> in stock </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            <%--</ItemTemplate>
                        </asp:Repeater>--%>

                        <%-- <ul class="rating-summary">
                            <li class="rating-pro">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                            </li>
                            <li class="read-review"><a href="#">read reviews (1)</a></li>
                            <li class="write-review"><a href="#">write review</a></li>
                        </ul>--%>


                        <div class="product-size mtb-30 clearfix">
                            <asp:Repeater ID="Repeater_Attributes" runat="server">
                                <ItemTemplate>
                                    <h6 class="option-title"><%#Eval("TextPrompt", "{0}") != "" ? Eval("TextPrompt", "{0}") :  Eval("AttributeName", "{0}")%></h6>

                                    <div class="pro-size" style="width: 25%">

                                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" DataSource='<%#  GetAttributeValues(1, (int)Eval("AttributeControlTypeId"), (int)Eval("Id")) %>'
                                            DataValueField="Id" DataTextField="Name" RepeatDirection="Horizontal" Visible='<%# (int)Eval("AttributeControlTypeId") == 1 ? true :  false %>' />
                                    </div>
                                    <div class="color-option">
                                        <ul class="color-categories">
                                            <div class="radio-toolbar">

                                                <asp:Repeater ID="Repeater_ColorAttr" runat="server" DataSource='<%# GetAttributeValues(5, (int)Eval("AttributeControlTypeId"), (int)Eval("Id")) %>' Visible='<%# (int)Eval("AttributeControlTypeId") == 5 ? true : false %>'>
                                                    <ItemTemplate>

                                                        <li>
                                                            <asp:RadioButton OnClick="javascript:singleselection(this,'Color')" CssClass="Color" runat="server" GroupName="sizecolor" ID="RadioButtonColor" Text=" " TabIndex='<%# (int)Eval("Id") %>'
                                                                Style='<%# "cursor:pointer;background-color:" + Eval("ColorSquaresRgb","{0}") %>' Val='<%# Eval("Name","{0}") %>' />

                                                        </li>
                                                    </ItemTemplate>
                                                </asp:Repeater>

                                            </div>
                                        </ul>
                                    </div>

                                    <asp:HiddenField ID="HF_ProductAttribute_MappingID" runat="server" Value='<%# Eval("Id", "{0}") %>' />
                                    <asp:HiddenField ID="HF_ProductAttributeId" runat="server" Value='<%# Eval("ProductAttributeId", "{0}") %>' />
                                    <asp:HiddenField ID="HF_AttributeControlTypeId" runat="server" Value='<%# Eval("AttributeControlTypeId", "{0}") %>' />
                                    <asp:HiddenField ID="HF_AttributeName" runat="server" Value='<%# Eval("AttributeName", "{0}") %>' />

                                </ItemTemplate>
                            </asp:Repeater>
                        </div>

                        <div class="quatity-stock">
                            <label>Quantity</label>
                            <ul class="d-flex flex-wrap  align-items-center">
                                <li class="box-quantity">
                                    <div>
                                        <asp:TextBox runat="server" ID="TxtQty" AutoPostBack="false" class="quantity" OnTextChanged="TxtQty_TextChanged" type="number" min="1" name="qtybutton" Text="1" />

                                        <%--<input class="quantity" type="number" min="1" value="1">--%>
                                    </div>
                                </li>
                                <li>
                                    <asp:LinkButton runat="server" ID="Btn_AddToshoppingCart" OnClick="Btn_AddToshoppingCart_Click1" class="pro-cart"> Add To
                                                       Cart</asp:LinkButton>
                                </li>
                                <%-- <li class="pro-ref">
                                    <p>
                                        <span class="in-stock"><i class="ion-checkmark-round"></i>in stock</span>
                                    </p>
                                </li>--%>
                            </ul>
                        </div>
                        <%--<div class="social-sharing mt-30">
                            <ul>
                                <li>
                                    <label>share</label></li>
                                <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-pinterest-p" aria-hidden="true"></i></a></li>
                            </ul>
                        </div>--%>
                    </div>
                </div>
                <!-- Thumbnail Description End -->
            </div>
            <!-- Row End -->
        </div>
        <!-- Container End -->
    </div>
    <!-- Product Thumbnail End -->

    <!-- Product Thumbnail Description Start -->
    <div class="thumnail-desc">
        <div class="container">
            <div class="thumb-desc-inner">
                <div class="row">

                    <div class="col-sm-12">
                        <ul class="main-thumb-desc nav tabs-area" role="tablist">
                            <li><a class="active" data-bs-toggle="tab" href="#dtail">Description</a></li>
                            <%--                            <li><a data-bs-toggle="tab" href="#review">Reviews</a></li>--%>
                        </ul>
                        <!-- Product Thumbnail Tab Content Start -->
                        <div class="tab-content thumb-content">
                            <div id="dtail" class="tab-pane fade show active">
                              <%--  <asp:Repeater runat="server" ID="Rptr_FullDescription">
                                    <ItemTemplate>--%>
                                        <p><%= HF_FullDescription.Value %></p>
                                   <%-- </ItemTemplate>
                                </asp:Repeater>--%>
                            </div>



                        </div>
                        <!-- Product Thumbnail Tab Content End -->
                    </div>

                </div>
                <!-- Row End -->
            </div>
        </div>
        <!-- Container End -->
    </div>
    <!-- Product Thumbnail Description End -->

    <div class="thumnail-desc">
        <div class="container">
            <div class="thumb-desc-inner">
                <div class="row">
                    <asp:UpdatePanel runat="server">
                        <ContentTemplate>
                            <div class="col-sm-12">
                                <ul class="main-thumb-desc nav tabs-area" role="tablist">
                                    <li><a class="active" data-bs-toggle="tab" href="#review">Reviews</a></li>
                                </ul>
                                <div class="tab-content thumb-content">
                                    <div id="review" class="tab-pane fade show active">
                                        <!-- Reviews Start -->
                                        <div class="review">
                                            <div class="group-title">
                                                <h2>customer review</h2>
                                            </div>
                                            <h4 class="review-mini-title">
                                                <asp:Label ID="LblReviewProductName" runat="server" /></h4>
                                            <div style="display: flex; flex-direction: column; justify-content: space-between; gap: 15px;">
                                                <asp:Repeater runat="server" ID="Rptr_ReviewRate">
                                                    <ItemTemplate>
                                                        <ul class="review-list">
                                                            <!-- Single Review List Start -->
                                                            <li>
                                                                <div><%# Eval("ReviewText") %></div>
                                                                <asp:Rating ID="Rating2" runat="server" StarCssClass="ratingStarReview" WaitingStarCssClass="savedStar"
                                                                    FilledStarCssClass="filledStar" EmptyStarCssClass="emptyStarReview" AutoPostBack="true" CurrentRating='<%# Convert.ToInt32(Eval("Rating","{0}")) %>' MaxRating='<%# Convert.ToInt32(Eval("Rating","{0}")) %>'>
                                                                </asp:Rating>
                                                                <label>Posted on <span style="font-weight: bold; color: #e7c76b;"><%# Eval("CreatedOnUtc", "{0:dd/MM/yyyy}") %></span> </label>
                                                                <label>Posted by <span style="font-weight: bold; color: #e7c76b;"><%# Eval("FirstName", "{0}").Trim() == "" ? "Guest" : Eval("FirstName", "{0}") %> <%# Eval("LastName", "{0}").Trim() == "" ? "" : Eval("LastName", "{0}").Trim() %></span> </label>
                                                            </li>
                                                            <!-- Single Review List End -->
                                                        </ul>
                                                    </ItemTemplate>
                                                </asp:Repeater>
                                            </div>
                                        </div>
                                        <!-- Reviews End -->
                                        <!-- Reviews Start -->
                                        <div class="review mt-10">
                                            <h2 class="review-title mb-30">You're reviewing:
                                        <br>
                                                <span></span></h2>
                                            <p class="review-mini-title">your rating</p>
                                            <ul class="review-list">
                                                <!-- Single Review List Start -->
                                                <li>
                                                    <span>Product</span>
                                                    <asp:Rating ID="RatingProduct" runat="server" StarCssClass="ratingStar" WaitingStarCssClass="savedStar"
                                                        FilledStarCssClass="filledStar" EmptyStarCssClass="emptyStar" AutoPostBack="true" CurrentRating="1" MaxRating="5"
                                                        OnClick="RatingProduct_Click">
                                                    </asp:Rating>
                                                </li>

                                            </ul>
                                            <!-- Reviews Field Start -->
                                            <div class="riview-field mt-40">
                                                <div autocomplete="off">
                                                    <%--<div class="form-group">
                                                <label class="req" for="sure-name">Name</label>
                                                <input type="text" class="form-control" id="sure-name" required="required">
                                            </div>--%>
                                                    <%-- <div class="form-group">
                                                <label class="req" for="subject">Title of review</label>
                                                <input type="text" class="form-control" id="subject" required="required">
                                            </div>--%>
                                                    <div class="form-group">
                                                        <label class="req" for="comments">Your Review</label>
                                                        <%--                                                <textarea class="form-control" rows="5" id="comments" required="required"></textarea>--%>
                                                        <asp:TextBox TextMode="MultiLine" ID="TxtCommentRate" Height="100" runat="server" CssClass="form-control" />
                                                    </div>
                                                    <asp:LinkButton Text="Submit" ID="Btn_RatingStars" OnClick="Btn_RatingStars_Click" runat="server" class="customer-btn" />
                                                    <asp:ScriptManager runat="server" ID="ScriptManager1" EnableCdn="true" />
                                                    <%--                                            <button type="submit" class="customer-btn">Submit</button>--%>
                                                </div>
                                            </div>
                                            <!-- Reviews Field Start -->
                                        </div>
                                        <!-- Reviews End -->
                                    </div>
                                </div>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </div>
        </div>
    </div>

    <!-- New Arrival Products Start Here -->
    <div class="new-arrival no-border-style ptb-90">
        <div class="container">
            <!-- Section Title Start -->
            <div class="section-title text-center">
                <h2>Related Products</h2>
                <p>Add our new arrivals to your weekly lineup</p>
            </div>
            <!-- Section Title End -->
            <%--            <div class="our-pro-active owl-carousel">--%>
            <div class="our-pro-active">
                <asp:Repeater runat="server" ID="Repeater_RelatedProduct">
                    <ItemTemplate>
                        <!-- Single Product Start Here -->
                        <div class="single-makal-product">
                            <div class="pro-img">
                                <a href='<%# "/Language/En/ProductDetails/" + Eval("ProductId") + "/" + Common.GeneralUtilities.GetUniqueName(Eval("ProductName" , "{0}")) %>'>
                                    <img src='<%#"/Files/Products" +"/"+Eval("ProductId")  + "/"+ Eval("MainImage") %>' alt="product-img">
                                </a>
                                <span class=' <%# (bool)Eval("MarkNew") == true ? "sticker-new" : "" %> '><%# (bool)Eval("MarkNew") == true ? "new" : "" %></span>
                                <div class="quick-view-pro">
                                    <a class="quick-view" href='<%# "/Language/En/ProductDetails/" + Eval("ProductId")+ "/" + Common.GeneralUtilities.GetUniqueName(Eval("ProductName" , "{0}")) %>'></a>
                                </div>
                            </div>
                            <div class="pro-content">
                                <h4 class="pro-title">
                                    <a href='<%# "/Language/En/ProductDetails/" + Eval("ProductId") + "/" + Common.GeneralUtilities.GetUniqueName(Eval("ProductName" , "{0}")) %>'><%# Eval("ProductName") %></a>
                                </h4>
                                <p>
                                    <span class="price"><%# Eval("ProductPrice") %></span>
                                </p>
                                <%--<div class="pro-actions">
                            <div class="actions-primary">
                                <a href="cart.html" class="add-to-cart" data-toggle="tooltip" data-original-title="Add to Cart">Add To Cart</a>
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
                    </ItemTemplate>
                </asp:Repeater>

            </div>
        </div>
    </div>
    <!-- New Arrival Products End Here -->



    <!-- Related product Area End -->
    <asp:HiddenField ID="HfProductID" runat="server"></asp:HiddenField>

    <asp:HiddenField ID="HF_ProductName" runat="server"></asp:HiddenField>
    <asp:HiddenField ID="HF_Price" runat="server"></asp:HiddenField>
    <asp:HiddenField ID="HF_OldPrice" runat="server"></asp:HiddenField>
    <asp:HiddenField ID="HF_StockQuantity" runat="server"></asp:HiddenField>
    <asp:HiddenField ID="HF_Sku" runat="server"></asp:HiddenField>
    <asp:HiddenField ID="HF_ShortDescription" runat="server"></asp:HiddenField>
    <asp:HiddenField ID="HF_FullDescription" runat="server"></asp:HiddenField>
    <asp:HiddenField ID="HF_CategoryID" runat="server"></asp:HiddenField>
    <asp:HiddenField ID="HF_CategoryName" runat="server"></asp:HiddenField>
    <asp:HiddenField ID="HF_SizeGuideImg" runat="server"></asp:HiddenField>


    <asp:HiddenField ID="HF_SecurityStamp" runat="server" />

</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder_Script" runat="server">


    <script>
        function singleselection(rbid, Class) {
            //debugger;
            var rbuttonlist = document.getElementsByClassName(Class);
            for (i = 0; i < rbuttonlist.length; i++) {
                //alert(rbuttonlist[i].childNodes[0].tabIndex);
                if (rbuttonlist[i].childNodes[0].type == "radio" && rbuttonlist[i].childNodes[0].tabIndex !== rbid.tabIndex) {
                    rbuttonlist[i].childNodes[0].checked = false;
                    /*args.IsValid = true;*/
                }
            }
        }


    </script>

    <script>
        //const firstChild = document.getElementsByClassName('tab-content').firstElementChild;
        //firstChild.classList.add('show active');
        //$(document).ready(function () {

        //    $(".tab-content").addClass("active");

        //});

        $("#tabContentPhoto div:first-child").addClass("show active");
    </script>

    <%--    <script>
        function CustomValidator1_ClientValidate(source, args) {
            if (document.getElementById("<%= RadioButtonColor.ClientID %>").checked) {
                args.IsValid = true;
            }
            else {
                args.IsValid = false;
            }

        }
    </script>--%>
</asp:Content>
