<%@ Page Title="" Language="C#" MasterPageFile="~/Language/En/InternalMasterPage.Master" AutoEventWireup="true" CodeBehind="OrderDetails.aspx.cs" Inherits="BGBeauty_Website.Language.En.Customers.OrderDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .inner_page{
                background: #fff;
                padding: 20px 0px;
        }
        .img-responsive {
            display: block;
            max-width: 100%;
            height: auto;
        }
        .row {
            margin-left: auto;
            margin-right: auto;
        }
        .panel-group {
            margin-bottom: 20px;
        }
        .panel-group .panel {
            margin-bottom: 0;
            border-radius: 4px;
        }
        .panel-default {
            border-color: #ddd;
        }
        .panel {
            margin-bottom: 20px;
            background-color: #fff;
            border: 1px solid transparent;
            border-radius: 4px;
            -webkit-box-shadow: 0 1px 1px rgb(0 0 0 / 5%);
            box-shadow: 0 1px 1px rgb(0 0 0 / 5%);
        }
        table {
            background-color: transparent;
                width: 100%;
            display: table;
        }
        thead {
            border-bottom: 1px solid #d0d0d0;
        }
        .contact-info .single-contact {
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-orient: horizontal;
            -webkit-box-direction: normal;
            -ms-flex-direction: row;
            flex-direction: row;
            -webkit-box-pack: center;
            -ms-flex-pack: center;
            justify-content: center;
            -webkit-box-align: center;
            -ms-flex-align: center;
            align-items: center;
            padding: 30px 35px;
            border: 1px solid #e8e8e8;
            background-color: #fff;
        }
        .contact-info .single-contact .icon-box {
            width: 70px;
            height: 70px;
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
            -webkit-box-align: center;
            -ms-flex-align: center;
            align-items: center;
            background: linear-gradient(-155deg, #ffc107 0%, #fd7863 98%, #ffc107 100%);
            border-radius: 50%;
            margin-right: 30px;
        }
        .contact-info .single-contact .info-box {
            width: calc(100% - 100px);
        }
        .contact-info .single-contact .info-box .title {
            font-size: 24px;
            color: #2e2e2e;
            font-weight: 600;
            margin: 0 0 3px;
        }
        .contact-info .single-contact .info-box p {
            padding-bottom: 2px;
            font-size: 16px;
            color: #848484;
            font-weight: 400;
        }
        .contact-info .single-contact .info-box a {
            color: #848484;
        }
       @media only screen and (max-width: 479px){

           .contact-info .single-contact .icon-box {
                display: none;
            }
            .contact-info .single-contact .info-box {
                width: calc(100% - 25px);
            }

        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="inner_page">
        <div id="orderdiv" style="width: 95% !important">
        <asp:Panel ID="Panel_New" runat="server" CssClass="row">
            <div class="col-sm-12 center-align">
                <h4>Thank You</h4>
                <div style="padding-bottom: 15px; padding-left: 10px; padding-top: 10px; font-size: 14px; color: rgb(160, 0, 0);">
                    <strong>Your order has been successfully processed!</strong>
                </div>
            </div>
        </asp:Panel>
            <div class="contact-area section-padding pt-0">
            <div class="container">
                
                <div class="row">

                    <div class="col-sm-6">

                        <div class="contact-info">

                              <div class="single-contact">
                                    <div class="icon-box">
<%--                                        <img src="/App_Themes/EcommerceDesign/assets/images/icons/4.png" alt="">--%>
                                        <i class="fa fa-credit-card-alt fa-2x"></i>
                                    </div>
                                    <div class="info-box">
                                        <h5 class="title" >Payment Info:</h5>
                                        <p><a href="#">OrderID : <asp:Label ID="orderidlbl" runat="server"></asp:Label></a></p>
                                        <p><a href="#">Date : <asp:Label ID="lblDate" runat="server"></asp:Label></a></p>
                                        <p><a href="#">Total : <asp:Label ID="totallbl" runat="server"></asp:Label></a></p>

                                    </div>
                              </div>

                            
                              <div class="single-contact">
                                    <div class="icon-box">
<%--                                        <img src="/App_Themes/EcommerceDesign/assets/images/icons/4.png" alt="">--%>
                                        <i class="fa fa-phone fa-2x"></i>
                                    </div>
                                    <div class="info-box">
                                        <h5 class="title" >Personal Info:</h5>
                                        <p><a href="#">Name : <asp:Label ID="namelbl" runat="server"></asp:Label></a></p>
                                        <p><a href="#">Email : <asp:Label ID="emaillbl" runat="server"></asp:Label></a></p>
                                        <p><a href="#">Mobile : <asp:Label ID="mobilelbl" runat="server"></asp:Label></a></p>

                                    </div>
                              </div>

                              <div class="single-contact">
                                    <div class="icon-box">
<%--                                        <img src="/App_Themes/EcommerceDesign/assets/images/icons/4.png" alt="">--%>
                                        <i class="fa fa-address-book-o fa-2x"></i>
                                    </div>
                                    <div class="info-box">
                                        <h5 class="title" >Address Info:</h5>
                                        <p><a href="#">Address : <asp:Label ID="addresslbl" runat="server"></asp:Label></a></p>
                                        <p><a href="#">State/Province : <asp:Label ID="statelbl" runat="server"></asp:Label></a></p>
                                        <p><a href="#">Country : <asp:Label ID="countrylbl" runat="server"></asp:Label></a></p>
                                        <p><a href="#">City : <asp:Label ID="citylbl" runat="server"></asp:Label></a></p>
                                        <p><a href="#">Zip/Postal Code : <asp:Label ID="zipcodelbl" runat="server"></asp:Label></a></p>

                                    </div>
                              </div>

                             <div class="single-contact">
                                    <div class="icon-box">
<%--                                        <img src="/App_Themes/EcommerceDesign/assets/images/icons/4.png" alt="">--%>
                                        <i class="fa fa-info-circle fa-2x"></i>
                                    </div>
                                    <div class="info-box">
                                        <h5 class="title" >Addational Informatiom:</h5>
                                        <p><a href="#">Company : <asp:Label ID="companylbl" runat="server"></asp:Label></a></p>
                                        <p><a href="#">Fax : <asp:Label ID="faxlbl" runat="server"></asp:Label></a></p>
                                        <p><a href="#">Vat Number : <asp:Label ID="LblVatNumber" runat="server"></asp:Label></a></p>
                                    </div>
                              </div>

                            
                        </div>

                     </div>
                   
                        <div class="col-lg-6">
                            <table class="cart-table ">
                                <thead class="table-dark" >
                                    <tr class="panel panel-default">
                                        <th class="panel-heading" style="width: 100px"></th>
                                        <th class="panel-heading">
                                            <h4 class="panel-title">Product Name</h4>
                                        </th>
                                        <th class="panel-heading" style="width: 100px">
                                            <h4 class="panel-title">Unit Price</h4>
                                        </th>
                                        <th class="panel-heading" style="width: 100px">
                                            <h4 class="panel-title">Qty.</h4>
                                        </th>
                                        <th class="panel-heading" style="width: 100px">
                                            <h4 class="panel-title">Sub total</h4>
                                        </th>
                                        <th class="panel-heading"></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <asp:Repeater ID="Repeater_Items" runat="server">
                                        <ItemTemplate>
                                            <tr>
                                                <td class="product-image-td" style="padding: 5px">
                                                    <a href='<%# "/Language/En/ProductDetails/" + Eval("ProductId", "{0}") + "/" + Common.GeneralUtilities.GetUniqueName(Eval("ProductName", "{0}")) %>' title='<%# Eval("ProductName", "{0}") %>'>
                                                        <img src='<%# Common.GeneralUtilities.AppSettings("ProductsImagesUploadPath")+"/Files/Products"+ "/" + Eval("Product.ID", "{0}") + "/" + Eval("MainImage", "{0}")%>' class="img-responsive"  />
                                                    </a>
                                                </td>
                                                <td class="product-name-td" style="padding: 5px">
                                                    <h5 class="product-name"><a href='<%# "/Language/En/ProductDetails/" + Eval("ProductId", "{0}") + "/" + Common.GeneralUtilities.GetUniqueName(Eval("ProductName", "{0}"))  %>' title='<%#Eval("ProductName", "{0}") %>'><%#Eval("ProductName", "{0}") %></a></h5>
                                                    <asp:Repeater ID="Repeater_Attributes" runat="server" DataSource='<%# Newtonsoft.Json.JsonConvert.DeserializeObject((string)Eval("AttributesJSON"))%>'>
                                                        <ItemTemplate>
                                                            <%# Eval("attributeName", "{0}")%> : <%# Eval("freeTextValue", "{0}")%>
                                                        </ItemTemplate>
                                                        <SeparatorTemplate>
                                                            <br />
                                                        </SeparatorTemplate>
                                                    </asp:Repeater>
                                                </td>
                                                <td style="padding: 5px"><%# Eval("Product.Price", "{0:0.##}") + " " + Common.GeneralUtilities.CurrencyReplacer("EGP")%> </td>

                                                <td>
                                                    <div class="qty-holder">
                                                        <%# Eval("Quantity", "{0}")%>
                                                    </div>
                                                </td>
                                                <td>
                                                    <span class="text-primary">
                                                        <%#String.Format("{0:N0}", ((decimal)Eval("Price") * (int)Eval("Quantity"))) + " " + Common.GeneralUtilities.CurrencyReplacer("EGP") %>
                                                    </span>
                                                </td>
                                                <td class="product-action-td center-align" style="padding: 5px">

                                                    <asp:HiddenField ID="HF_ProductID" runat="server" Value='<%# Eval("Product.ID", "{0}")  %>' />
                                                    <asp:HiddenField ID="HF_CartID" runat="server" Value='<%# Eval("ID", "{0}")  %>' />
                                                </td>
                                            </tr>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </tbody>
                                <tfoot>
                                </tfoot>
                            </table>
                        </div>
                </div>
                
            </div>
            </div>
        </div>

         <%--Separation--%>

        <div class="row">
<%--            <div class="col-sm-6" style="margin-bottom: 20px;">
                <h4>Order Details</h4>

                <div class="col-3 col-sm-6 col-xs-6">
                    <div class="form-group">
                        <span style="">OrderID :</span>
                        <asp:Label ID="orderidlbl" runat="server"></asp:Label>
                    </div>
                </div>

                <div class="col-3 col-sm-6 col-xs-6">
                    <div class="form-group">
                        <span>Date :</span>
                        <asp:Label ID="lblDate" runat="server"></asp:Label>
                      
                    </div>
                </div>

                <div class="col-3 col-sm-6 col-xs-6">
                    <div class="form-group">
                        <span>Total :</span>
                        <asp:Label ID="totallbl" runat="server"></asp:Label>
                    </div>
                </div>



            </div>--%>
            <div class="col-sm-6">
                <%--<div class="form-group">
                    <h4>Shipping Information</h4>

                    <div class="col-md-4 col-sm-6 col-xs-6">
                        <div class="form-group">
                            <span style="">Name :</span>
                            <asp:Label ID="namelbl" runat="server"></asp:Label>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 col-xs-6">
                        <div class="form-group">
                            <span>Email : </span>
                            <asp:Label ID="emaillbl" runat="server"></asp:Label>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 col-xs-6">
                        <div class="form-group">
                            <span>Company :
                            </span>
                            <asp:Label ID="companylbl" runat="server"></asp:Label>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 col-xs-6">
                        <div class="form-group">
                            <span>City : </span>
                            <asp:Label ID="citylbl" runat="server"></asp:Label>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 col-xs-6">
                        <div class="form-group">
                            <span>Address :
                            </span>
                            <asp:Label ID="addresslbl" runat="server"></asp:Label>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 col-xs-6">
                        <div class="form-group">
                            <span>State/Province
                                            : </span>
                            <asp:Label ID="statelbl" runat="server"></asp:Label>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 col-xs-6">
                        <div class="form-group">
                            <span>Country :
                            </span>
                            <asp:Label ID="countrylbl" runat="server"></asp:Label>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 col-xs-6">
                        <div class="form-group">
                            <span>Mobile : </span>
                            <asp:Label ID="mobilelbl" runat="server"></asp:Label>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 col-xs-6">
                        <div class="form-group">
                            <span>Fax : </span>
                            <asp:Label ID="faxlbl" runat="server"></asp:Label>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 col-xs-6">
                        <div class="form-group">
                            <span>Zip/Postal Code
                                            : </span>
                            <asp:Label ID="zipcodelbl" runat="server"></asp:Label>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 col-xs-6">

                        <div class="form-group">
                            <span>Vat Number : </span>
                            <asp:Label ID="LblVatNumber" runat="server"></asp:Label>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 col-xs-6">
                    </div>


                </div>--%>
            </div>
        </div>

        <div class="row">
            <div class="col-sm-12" id="checkoutdiv">
                <div class="panel-group">
                    <div class="panel panel-default" style="min-height: 180px">
                        <%--<table class="cart-table ">
                            <thead class="table-dark" >
                                <tr class="panel panel-default">
                                    <th class="panel-heading" style="width: 100px"></th>
                                    <th class="panel-heading">
                                        <h4 class="panel-title">Product Name</h4>
                                    </th>
                                    <th class="panel-heading" style="width: 100px">
                                        <h4 class="panel-title">Unit Price</h4>
                                    </th>
                                    <th class="panel-heading" style="width: 100px">
                                        <h4 class="panel-title">Qty.</h4>
                                    </th>
                                    <th class="panel-heading" style="width: 100px">
                                        <h4 class="panel-title">Sub total</h4>
                                    </th>
                                    <th class="panel-heading"></th>
                                </tr>
                            </thead>
                            <tbody>
                                <asp:Repeater ID="Repeater_Items" runat="server">
                                    <ItemTemplate>
                                        <tr>
                                            <td class="product-image-td" style="padding: 5px">
                                                <a href='<%# "/Language/En/Catalog/ProductDetails?id=" + Eval("ProductId", "{0}") + "&Name=" + Common.GeneralUtilities.GetUniqueName(Eval("ProductName", "{0}")) %>' title='<%# Eval("ProductName", "{0}") %>'>
                                                    <img src='<%# Common.GeneralUtilities.AppSettings("ProductsImagesUploadPath")+"/Files/Products"+ "/" + Eval("Product.ID", "{0}") + "/" + Eval("MainImage", "{0}")%>' class="img-responsive"  />
                                                </a>
                                            </td>
                                            <td class="product-name-td" style="padding: 5px">
                                                <h5 class="product-name"><a href='<%# "/Language/En/Catalog/ProductDetails?id=" + Eval("ProductId", "{0}") + "&Name=" + Common.GeneralUtilities.GetUniqueName(Eval("ProductName", "{0}"))  %>' title='<%#Eval("ProductName", "{0}") %>'><%#Eval("ProductName", "{0}") %></a></h5>
                                                <asp:Repeater ID="Repeater_Attributes" runat="server" DataSource='<%# Newtonsoft.Json.JsonConvert.DeserializeObject((string)Eval("AttributesJSON"))%>'>
                                                    <ItemTemplate>
                                                        <%# Eval("attributeName", "{0}")%> : <%# Eval("freeTextValue", "{0}")%>
                                                    </ItemTemplate>
                                                    <SeparatorTemplate>
                                                        <br />
                                                    </SeparatorTemplate>
                                                </asp:Repeater>
                                            </td>
                                            <td style="padding: 5px"><%# Eval("Product.Price", "{0:0.##}") + " " + Common.GeneralUtilities.CurrencyReplacer("EGP")%> </td>

                                            <td>
                                                <div class="qty-holder">
                                                    <%# Eval("Quantity", "{0}")%>
                                                </div>
                                            </td>
                                            <td>
                                                <span class="text-primary">
                                                    <%#String.Format("{0:N0}", ((decimal)Eval("Price") * (int)Eval("Quantity"))) + " " + Common.GeneralUtilities.CurrencyReplacer("EGP") %>
                                                </span>
                                            </td>
                                            <td class="product-action-td center-align" style="padding: 5px">

                                                <asp:HiddenField ID="HF_ProductID" runat="server" Value='<%# Eval("Product.ID", "{0}")  %>' />
                                                <asp:HiddenField ID="HF_CartID" runat="server" Value='<%# Eval("ID", "{0}")  %>' />
                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </tbody>
                            <tfoot>
                            </tfoot>
                        </table>--%>

                    </div>
                </div>


            </div>

        </div>

    </div>
    </section>
      
</asp:Content>
