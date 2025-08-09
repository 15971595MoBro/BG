<%@ Page Title="" Language="C#" MasterPageFile="~/Language/En/InternalMasterPage.Master" AutoEventWireup="true" CodeBehind="Wishlist.aspx.cs" Inherits="BGBeauty_Website.Language.En.Customers.Wishlist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <!-- Breadcrumb Area Start Here -->
        <div class="breadcrumb-area">
            <div class="container">
                <ol class="breadcrumb breadcrumb-list">
                    <li class="breadcrumb-item"><a href="/">Home</a></li>
                    <li class="breadcrumb-item active">Wishlist</li>
                </ol>
            </div>
        </div>
        <!-- Breadcrumb Area End Here -->



            <!-- Wish List Start -->
        <div class="cart-main-area wish-list white-bg ptb-90">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <!-- Form Start -->
                        <div>
                            <!-- Table Content Start -->
                            <div class="table-content table-responsive">
                                <table>
                                    <thead>
                                        <tr>
                                            <th class="product-thumbnail">Image</th>
                                            <th class="product-name">Product</th>
                                            <th class="product-price">Unit Price</th>
                                            <th class="product-remove">Remove</th>
                                            
                                        </tr>
                                    </thead>
                                    <tbody>
                                         <asp:Repeater ID="Repeater_Items" runat="server" OnItemCommand="Repeater_Items_ItemCommand">
                                        <ItemTemplate>
                                        <tr>
                                            
                                            <td class="product-thumbnail">
                                                <a href='<%# "/Language/En/ProductDetails/" + Eval("ProductId", "{0}") + "/" + Common.GeneralUtilities.GetUniqueName(Eval("productName", "{0}"))   %>'><img src='<%# Common.GeneralUtilities.AppSettings("ProductsImagesUploadPath")+"/Files/Products" + "/" + Eval("Product.ID", "{0}") + "/" + Eval("MainImage", "{0}")%>' alt="cart-image" /></a>
                                            </td>
                                            <td class="product-name"><a href='<%# "/Language/En/ProductDetails/" + Eval("ProductId", "{0}") + "/" + Common.GeneralUtilities.GetUniqueName(Eval("productName", "{0}"))   %>'><%#Eval("Name", "{0}") %>
                                                    </a></td>
                                            <td class="product-price"><span class="amount"><%# string.Format("{0:N0}", Eval("Price", "{0}")) + " " + Common.GeneralUtilities.AppSettings("currency")%></span></td>
                                          <td class="product-remove"> 
                                                <asp:LinkButton ID="btn_remove" runat="server" ToolTip="Remove product" CssClass="remove" CommandName="delete" CommandArgument='<%# Eval("ProductId", "{0}") %>' OnClientClick="javascript:return confirm('Are you sure do you want to remove this product? ')"><i class="fa fa-times fa-2x red-text"></i></asp:LinkButton>

                                          </td>
                                        </tr>
                                        </ItemTemplate>
                                             </asp:Repeater>
                                    </tbody>
                                </table>
                            </div>
                            <!-- Table Content Start -->
                        </div>
                        <!-- Form End -->
                    </div>
                </div>
                <!-- Row End -->
            </div>
        </div>
        <!-- Wish List End -->
</asp:Content>
