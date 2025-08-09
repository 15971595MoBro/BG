<%@ Page Title="" Language="C#" MasterPageFile="~/Language/En/InternalMasterPage.Master" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="BGBeauty_Website.Language.En.Customers.Checkout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .lbl-checcked {
            padding: 12px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- coupon-area start -->
    <div class="coupon-area white-bg pt-90 pb-30">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="coupon-accordion">
                        <!-- Accordion Start -->
                        <h3>Have a coupon? <span id="showcoupon"></span></h3>
                        <div id="checkout_coupon" class="coupon-checkout-content" style="display: block;">
                            <div class="coupon-info">
                                <div>
                                    <p class="checkout-coupon">
                                        <asp:TextBox runat="server" ID="TxtCoupon" placeholder="Coupon code" CssClass="code" />
                                        <asp:LinkButton Text="Apply Coupon" runat="server" ID="Btn_ApplyCoupon" OnClick="Btn_ApplyCoupon_Click" />
                                    </p>
                                </div>
                                <asp:Panel runat="server" ID="Pnl_CouponCodeWrong" Visible="false">
                                    <div class="alert alert-danger" role="alert" style="margin-top:5px;">
                                        wrong or expired this coupon code ..
                                    </div>
                                </asp:Panel>
                                <asp:Panel runat="server" ID="Pnl_CouponCodeSucess" Visible="false">
                                    <div class="alert alert-success" role="alert" style="margin-top:5px;">
                                        Success coupon code ..
                                    </div>
                                </asp:Panel>
                            </div>
                        </div>
                        <!-- ACCORDION END -->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- coupon-area end -->
    <!--== Start Page Header Area Wrapper ==-->
    <!-- Breadcrumb Area Start Here -->
    <div class="breadcrumb-area">
        <div class="container">
            <ol class="breadcrumb breadcrumb-list">
                <li class="breadcrumb-item"><a href="/">Home</a></li>
                <li class="breadcrumb-item active">Checkout</li>
            </ol>
        </div>
    </div>
    <!-- Breadcrumb Area End Here -->

    <!-- checkout-area start -->
    <div class="checkout-area white-bg pb-90">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="checkbox-form mb-sm-40">
                        <h3>Billing Details</h3>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="country-select clearfix mb-30">
                                    <label>Country <span class="required">*</span></label>
                                    <asp:DropDownList runat="server" ID="DdlCountry" class="form-control" AutoPostBack="true" OnSelectedIndexChanged="DdlCountry_SelectedIndexChanged"></asp:DropDownList>
                                    <asp:RequiredFieldValidator ValidationGroup="checkout" ID="billDdlCountryvalid"
                                        ControlToValidate="DdlCountry" ForeColor="red" runat="server" ErrorMessage="Country Required"></asp:RequiredFieldValidator>

                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="checkout-form-list mb-sm-30">
                                    <label>First Name <span class="required">*</span></label>
                                    <asp:TextBox runat="server" ID="fnametxt" CssClass="form-control" onkeyup="copy();" />
                                    <asp:RequiredFieldValidator ValidationGroup="checkout" ID="billFirst"
                                        ControlToValidate="fnametxt" ForeColor="red" runat="server" ErrorMessage="First Name Required"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="checkout-form-list mb-30">
                                    <label>Last Name <span class="required">*</span></label>
                                    <asp:TextBox runat="server" ID="lnametxt" CssClass="form-control" onkeyup="copy();" />
                                    <asp:RequiredFieldValidator ValidationGroup="checkout" ID="billlast"
                                        ControlToValidate="lnametxt" ForeColor="red" runat="server" ErrorMessage="Last Name Required"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="checkout-form-list mb-30">
                                    <label>Company Name</label>
                                    <asp:TextBox runat="server" ID="companytxt" CssClass="form-control" onkeyup="copy();" />
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="checkout-form-list">
                                    <label>Address <span class="required">*</span></label>
                                    <asp:TextBox runat="server" ID="addresstxt" CssClass="form-control" onkeyup="copy();" class="billing-address" placeholder="House number and street name" />
                                    <asp:RequiredFieldValidator ValidationGroup="checkout" ID="billaddresstxtvalid"
                                        ControlToValidate="addresstxt" ForeColor="red" runat="server" ErrorMessage="Address Required"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <%-- <div class="col-md-12">
                                <div class="checkout-form-list mtb-30">
                                    <input type="text" placeholder="Apartment, suite, unit etc. (optional)" />
                                </div>
                            </div>--%>
                            <div class="col-md-12">
                                <div class="checkout-form-list mb-30">
                                    <label>Town / City <span class="required">*</span></label>
                                    <asp:TextBox runat="server" ID="citytxt" CssClass="form-control" onkeyup="copy();" />
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="checkout-form-list mb-30">
                                    <label>State<span class="required">*</span></label>
                                    <asp:DropDownList runat="server" ID="DdlState" class="form-control" AutoPostBack="true" OnSelectedIndexChanged="DdlState_SelectedIndexChanged"></asp:DropDownList>

                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="checkout-form-list mb-30">
                                    <label>Postcode / Zip <span class="required">*</span></label>
                                    <asp:TextBox runat="server" ID="zipcodetxt" CssClass="form-control" onkeyup="copy();" />
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="checkout-form-list mb-30">
                                    <label>Email Address <span class="required">*</span></label>
                                    <asp:TextBox ID="emailtxt" runat="server" CssClass="form-control" onkeyup="copy();" />
                                    <asp:RequiredFieldValidator ValidationGroup="checkout" ID="billemailtxtvalid"
                                        ControlToValidate="emailtxt" ForeColor="red" runat="server" ErrorMessage="! Email Required"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="emailtxt" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="checkout-form-list mb-30">
                                    <label>Phone <span class="required">*</span></label>
                                    <asp:TextBox runat="server" ID="mobiletxt" CssClass="form-control" onkeyup="copy();" />
                                    <asp:RequiredFieldValidator ValidationGroup="checkout" ID="billmobiletxtvalid"
                                        ControlToValidate="mobiletxt" ForeColor="red" runat="server" ErrorMessage="Mobile Required"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="checkout-form-list create-acc mb-30">
                                    <label>Vat Number</label>
                                    <asp:TextBox runat="server" ID="TxtVatNumber" CssClass="form-control" onkeyup="copy();" />

                                </div>
                                <%--<div id="cbox_info" class="checkout-form-list create-accounts mb-25">
                                    <p class="mb-10">
                                        Create an account by entering the information below. If you are
                                            a returning customer please login at the top of the page.
                                    </p>
                                    <label>Account password <span class="required">*</span></label>
                                    <input type="password" placeholder="password" />
                                </div>--%>
                            </div>
                        </div>
                        <%--<div class="different-address">
                                <div class="ship-different-title">
                                    <h3>
                                        <label>Ship to a different address?</label>
                                        <input id="ship-box" type="checkbox" />
                                    </h3>
                                </div>
                                <div id="ship-box-info">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="country-select clearfix mb-30">
                                                <label>Country <span class="required">*</span></label>
                                                <select class="wide">
                                                    <option value="volvo">Bangladesh</option>
                                                    <option value="saab">Algeria</option>
                                                    <option value="mercedes">Afghanistan</option>
                                                    <option value="audi">Ghana</option>
                                                    <option value="audi2">Albania</option>
                                                    <option value="audi3">Bahrain</option>
                                                    <option value="audi4">Colombia</option>
                                                    <option value="audi5">Dominican Republic</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="checkout-form-list mb-30">
                                                <label>First Name <span class="required">*</span></label>
                                                <input type="text" placeholder="" />
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="checkout-form-list mb-30">
                                                <label>Last Name <span class="required">*</span></label>
                                                <input type="text" placeholder="" />
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="checkout-form-list mb-30">
                                                <label>Company Name</label>
                                                <input type="text" placeholder="" />
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="checkout-form-list mb-30">
                                                <label>Address <span class="required">*</span></label>
                                                <input type="text" placeholder="Street address" />
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="checkout-form-list mb-30">
                                                <input type="text" placeholder="Apartment, suite, unit etc. (optional)" />
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="checkout-form-list mb-30">
                                                <label>Town / City <span class="required">*</span></label>
                                                <input type="text" placeholder="Town / City" />
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="checkout-form-list mb-30">
                                                <label>State / County <span class="required">*</span></label>
                                                <input type="text" placeholder="" />
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="checkout-form-list mb-30">
                                                <label>Postcode / Zip <span class="required">*</span></label>
                                                <input type="text" placeholder="Postcode / Zip" />
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="checkout-form-list mb-30">
                                                <label>Email Address <span class="required">*</span></label>
                                                <input type="email" placeholder="" />
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="checkout-form-list mb-30">
                                                <label>Phone <span class="required">*</span></label>
                                                <input type="text" placeholder="Postcode / Zip" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="order-notes">
                                        <div class="checkout-form-list">
                                            <label>Order Notes</label>
                                            <textarea id="checkout-mess" cols="30" rows="10" placeholder="Notes about your order, e.g. special notes for delivery."></textarea>
                                        </div>
                                    </div>
                                </div>
                            </div>--%>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="your-order">
                        <h3>Your order</h3>
                        <div class="your-order-table table-responsive">
                            <table>
                                <thead>
                                    <tr>
                                        <th class="product-name">Product</th>
                                        <th class="product-total">Total</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <asp:Repeater runat="server" ID="Repeater_ProductDetails">
                                        <ItemTemplate>
                                            <tr>
                                                <td><a href="#"><%#Eval("Name", "{0}") %> <strong>× <%#Eval("Quantity", "{0}") %></strong></a>
                                            </tr>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </tbody>
                                <tfoot>
                                    <tr class="cart-subtotal">
                                        <th>Shipping</th>
                                        <td><span class="amount">
                                            <asp:Label ID="shiplbl" runat="server" Style="color: rgb(175,0,0);" Text="0"> </asp:Label></span></td>
                                    </tr>
                                    <tr class="order-total">
                                        <th>Order SubTotal</th>
                                        <td><span class=" total amount">
                                            <asp:Label ID="SubTotalLbl" runat="server" Style="color: rgb(175,0,0);"></asp:Label></span>
                                        </td>
                                    </tr>
                                    <tr class="order-total">
                                        <th>Discount</th>
                                        <td><span class=" total amount">
                                            <asp:Label ID="DiscountLbl" runat="server" Style="color: rgb(175,0,0);"></asp:Label></span>
                                        </td>
                                    </tr>
                                    <tr class="order-total">
                                        <th>Order Total</th>
                                        <td><span class=" total amount">
                                            <asp:Label ID="Totallbl" runat="server" Style="color: rgb(175,0,0);"></asp:Label></span>
                                        </td>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>
                        <div class="payment-method">
                            <div id="accordion">
                                <div class="card">
                                    <div class="card-header" style="padding: 10px;" id="headingone">
                                        <asp:RadioButton runat="server" Width="12px" Checked="true" class="custom-control-input" />
                                        <asp:Label runat="server" class="lbl-checcked">Cash on delivery</asp:Label>
                                        <h5 class="mb-2 text-center makali-btn transparent-btn grey-border">
                                            <asp:LinkButton runat="server" ValidationGroup="checkout"  class="btn-place-order" ID="Btn_Save" OnClick="Btn_Save_Click">Place Order</asp:LinkButton>
                                        </h5>
                                    </div>

                                    <%--<div id="collapseOne" class="collapse show" aria-labelledby="headingone" data-parent="#accordion">
                                        <div class="card-body">
                                            <p>
                                                Make your payment directly into our bank account. Please use your
                                                    Order ID as the payment reference. Your order won’t be shipped until
                                                    the funds have cleared in our account.
                                            </p>
                                        </div>
                                    </div>--%>
                                </div>
                                <%--<div class="card">
                                    <div class="card-header" id="headingtwo">
                                        <h5 class="mb-0">
                                            <button class="btn btn-link collapsed" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                                Cheque Payment
                                            </button>
                                        </h5>
                                    </div>
                                    <div id="collapseTwo" class="collapse" aria-labelledby="headingtwo" data-parent="#accordion">
                                        <div class="card-body">
                                            <p>
                                                Please send your cheque to Store Name, Store Street, Store Town,
                                                    Store State / County, Store Postcode.
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-header" id="headingthree">
                                        <h5 class="mb-0">
                                            <button class="btn btn-link collapsed" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                                PayPal
                                            </button>
                                        </h5>
                                    </div>
                                    <div id="collapseThree" class="collapse" aria-labelledby="headingthree" data-parent="#accordion">
                                        <div class="card-body">
                                            <p>
                                                Pay via PayPal; you can pay with your credit card if you don’t have a
                                                    PayPal account.
                                            </p>
                                        </div>
                                    </div>
                                </div>--%>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- checkout-area end -->


    <asp:HiddenField ID="HF_Address_Id" runat="server" />

    <asp:HiddenField ID="HF_currentcountry" runat="server" />
    <asp:HiddenField ID="HF_shiphdnolddd" runat="server" />
    <asp:HiddenField ID="totalhdnolddd" runat="server" />

    <asp:HiddenField ID="HF_TotalProduct" runat="server" />
    <asp:HiddenField ID="HF_ProductsCount" runat="server" />


    <asp:HiddenField  ID="HF_DiscountPercentage" runat="server" />

    <div runat="server" id="msggg" style="font-size: 26px;"></div>
</asp:Content>
