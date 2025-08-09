<%@ Page Title="" Language="C#" MasterPageFile="~/Language/En/InternalMasterPage.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="BGBeauty_Website.Language.En.Customers.Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Breadcrumb Area Start Here -->
    <div class="breadcrumb-area">
        <div class="container">
            <ol class="breadcrumb breadcrumb-list">
                <li class="breadcrumb-item"><a href="/">Home</a></li>
                <li class="breadcrumb-item active">Cart</li>
            </ol>
        </div>
    </div>
    <!-- Breadcrumb Area End Here -->

    <!-- Cart Main Area Start -->
    <div class="cart-main-area  ptb-90">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-sm-12">
                    <!-- Form Start -->
                    <div>
                        <!-- Table Content Start -->
                        <div class="table-content table-responsive mb-45">
                            <table>
                                <thead>
                                    <tr>
                                        <th class="product-thumbnail">Image</th>
                                        <th class="product-name">Product</th>
                                        <th class="product-price">Price</th>
                                        <th class="product-quantity">Quantity</th>
                                        <th class="product-quantity">In Stock</th>
<%--                                        <th class="product-subtotal">Total</th>--%>
                                        <th class="product-remove">Remove</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <asp:Repeater ID="Repeater_Items" runat="server" OnItemCommand="Repeater_Items_ItemCommand1">
                                        <ItemTemplate>
                                            <tr>
                                                <td class="product-thumbnail">
                                                    <a href='<%# "/Language/En/ProductDetails/" + Eval("ProductId", "{0}") + "/" + Common.GeneralUtilities.GetUniqueName(Eval("productName", "{0}")) %>'>
                                                        <img src='<%# Eval("productPhotoUrl", "{0}")%>' alt="cart-image" /></a>
                                                </td>
                                                <td class="product-name">
                                                    <a href='<%# "/Language/En/ProductDetails/" + Eval("ProductId", "{0}") + "/" + Common.GeneralUtilities.GetUniqueName(Eval("productName", "{0}"))  %>' title='<%#Eval("productName", "{0}") %>'><%#Eval("productName", "{0}") %></a>
                                                    <asp:Repeater ID="Repeater_Attributes" runat="server" DataSource='<%# Newtonsoft.Json.JsonConvert.DeserializeObject((String)Eval("AttributesJSON"))%>'>
                                                        <ItemTemplate>
                                                            <%# Eval("attributeName", "{0}")%> : <%# Eval("freeTextValue", "{0}")%>
                                                        </ItemTemplate>
                                                        <SeparatorTemplate>
                                                            <br />
                                                        </SeparatorTemplate>
                                                    </asp:Repeater>
                                                </td>
                                                <td class="product-price"><span class="amount"><%# String.Format("{0:0.00}", Eval("Price"))  + " " + Common.GeneralUtilities.CurrencyReplacer("EGP")%></span></td>
                                                <td class="product-quantity">
                                                    <asp:TextBox class="cart-plus-minus-box quantity" ID="Txt_Qty" runat="server" Text='<%# Eval("Quantity", "{0}")%>' TextMode="Number"></asp:TextBox>
                                                    <asp:RangeValidator ID="Rangevalidator1" ErrorMessage=' <%# "Min Qty 1 </br> Max Qty" + Eval("StockQuantity", "{0}")%>' ForeColor="Red" ControlToValidate="Txt_Qty"
                                                        MinimumValue="1" MaximumValue='<%# Eval("StockQuantity")%>' runat="server" Type="Integer"></asp:RangeValidator>

                                                </td>
                                                <td class="product-stock"><%# Eval("StockQuantity", "{0}")%></td>
<%--                                                <td class="product-subtotal"><%#String.Format("{0:N}", ((decimal)Eval("Price") * (int)Eval("Quantity"))) + " " + Common.GeneralUtilities.CurrencyReplacer("EGP") %></td>--%>
                                                <td class="product-remove">
                                                    <asp:LinkButton runat="server" ID="btn_remove" ToolTip="Remove product" CssClass="remove" CommandName="delete" CommandArgument='<%# Eval("CartItemUID", "{0}") %>' OnClientClick="javascript:return confirm('Are you sure do you want to remove this product? ')"><i class="fa fa-times"></i></asp:LinkButton>
                                                    <asp:HiddenField ID="HF_ProductID" runat="server" Value='<%# Eval("ProductID", "{0}")  %>' />
                                                    <asp:HiddenField ID="HF_CartID" runat="server" Value='<%# Eval("CartItemUID", "{0}")  %>' />
                                                </td>
                                            </tr>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </tbody>
                            </table>
                        </div>
                        <!-- Table Content Start -->
                        <div class="row">
                            <!-- Cart Button Start -->
                            <div class="col-md-8 col-sm-12">
                                <div class="buttons-cart">
                                    <asp:LinkButton runat="server" ID="BtnUpdateCart" class="btn-update-cart" OnClick="BtnUpdateCart_Click1">Update  Cart</asp:LinkButton>

                                    <a href="/Language/En/ShopProducts/Shop">Continue Shopping</a>
                                </div>
                            </div>
                            <!-- Cart Button Start -->
                            <!-- Cart Totals Start -->
                            <div class="col-md-4 col-sm-12">
                                <div class="cart_totals float-md-right text-md-right">
                                    <h2>Cart Totals</h2>
                                    <br />
                                    <table class="float-md-right">
                                        <tbody>
                                            <tr class="cart-subtotal">
                                                <th>Subtotal</th>
                                                <td>
                                                    <asp:Label ID="LblSubTotal" runat="server" />
                                                    <%= Common.GeneralUtilities.CurrencyReplacer("EGP") %></td>
                                            </tr>
                                            <tr class="cart-disount">
                                                <th>Discount</th>
                                                <td>
                                                    <span class="discount-amount">
                                                        <asp:Label ID="LblDiscount" runat="server" Text="0" />
                                                        <%= Common.GeneralUtilities.CurrencyReplacer("EGP") %></span></td>
                                            </tr>
                                            <tr class="order-total">
                                                <th>Total</th>
                                                <td>
                                                    <strong><span class="amount">
                                                        <asp:Label ID="LblTotal" runat="server" Text="0"></asp:Label>
                                                        <%= Common.GeneralUtilities.CurrencyReplacer("EGP") %></span></strong>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <div class="wc-proceed-to-checkout">
                                        <a href="/Language/En/Customers/Checkout">Proceed to Checkout</a>
                                    </div>
                                </div>
                            </div>
                            <!-- Cart Totals End -->
                        </div>
                        <!-- Row End -->
                    </div>
                    <!-- Form End -->
                </div>
            </div>
            <!-- Row End -->
        </div>
    </div>
    <!-- Cart Main Area End -->

    <!--  #include file="~/Language/En/TrackAddToCart.js" -->
    
</asp:Content>
