<%@ Page Title="" Language="C#" MasterPageFile="~/Language/En/InternalMasterPage.Master" AutoEventWireup="true" CodeBehind="MyAccount.aspx.cs" Inherits="BGBeauty_Website.Language.En.Customers.MyAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <!-- Breadcrumb Area Start Here -->
    <div class="breadcrumb-area">
        <div class="container">
            <ol class="breadcrumb breadcrumb-list">
                <li class="breadcrumb-item"><a href="/">Home</a></li>
                <li class="breadcrumb-item active">My Account</li>
            </ol>
        </div>
    </div>
    <!-- Breadcrumb Area End Here -->


    <!-- My Account Page Start Here -->
    <div class="my-account white-bg ptb-90">
        <div class="container">
            <div class="account-dashboard">
                <div class="dashboard-upper-info">
                    <div class="row align-items-center no-gutters">
                        <div class="col-xl-3 col-lg-3 col-md-6">
                            <div class="d-single-info">
                                <p class="user-name">
                                    Hello <span>
                                        <asp:Label ID="LblProfileName" runat="server"></asp:Label></span>
                                </p>
<%--                                <p>(not you? <a class="nav-link" href="/Language/En/Customers/Logout">Log Out</a>)</p>--%>

                            </div>
                        </div>
                        <%--<div class="col-xl-3 col-lg-4 col-md-6">
                                <div class="d-single-info">
                                    <p>Need Assistance? Customer service at.</p>
                                    <p>admin@example.com.</p>
                                </div>
                            </div>--%>
                        <%--<div class="col-xl-3 col-lg-3 col-md-6">
                                <div class="d-single-info">
                                    <p>E-mail them at </p>
                                    <p>support@example.com</p>
                                </div>
                            </div>--%>
                        <div class="col-xl-3 col-lg-2 col-md-6">
                            <div class="d-single-info text-lg-center">
                                <a class="view-cart" href="/Language/En/Customers/Cart">view cart</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-2">
                        <!-- Nav tabs -->
                        <ul class="nav flex-column dashboard-list" role="tablist">
                            <li><a class="nav-link active" data-bs-toggle="tab" href="#dashboard">Dashboard</a></li>
                            <li><a class="nav-link" data-bs-toggle="tab" href="#orders">Orders</a></li>
                            <li><a class="nav-link" data-bs-toggle="tab" href="#account-details">Account details</a>
                            </li>
                            <li><a class="nav-link" href="/Language/En/Customers/Logout">logout</a></li>
                        </ul>
                    </div>
                    <div class="col-lg-10">
                        <!-- Tab panes -->
                        <div class="tab-content dashboard-content mt-all-40">
                            <div id="dashboard" class="tab-pane fade show active">
                                <h3>Dashboard </h3>
                                <p>
                                    From your account dashboard. you can easily check & view your <a href="#orders">recent
                                            orders</a>, manage your <a href="#account-details">Account details</a> and
                                        <a href="/Language/En/Customers/Wishlist">edit your wishlist</a>
                                </p>
                            </div>
                            <div id="orders" class="tab-pane fade">
                                <h3>Orders</h3>
                                <div class="table-responsive">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th>Order</th>
                                                <th>Item Count</th>
                                                <th>Total</th>
                                                <th>Actions</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <asp:Repeater runat="server" ID="Repeater_Items">
                                                <ItemTemplate>

                                                    <tr>
                                                        <td><a href='OrderDetails?OrderCustID=<%# Eval("OrderGuidInt")%>'><%#Eval("OrderUID", "{0}") %></a></td>
                                                        <td><%# Eval("ItemsCount", "{0}")%></td>
                                                        <td><%# Eval("OrderTotal", "{0:0.##}") + " " + Common.GeneralUtilities.CurrencyReplacer("EGP")%> </td>
                                                        <td>
                                                            <a href='OrderDetails?OrderCustID=<%# Eval("OrderGuidInt")%>' class="view">view</a>
                                                            <asp:HiddenField ID="HF_OrederID" runat="server" Value='<%# Eval("OrderUID", "{0}")  %>' />
                                                        </td>
                                                    </tr>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </tbody>
                                    </table>
                                </div>
                            </div>


                            <div id="account-details" class="tab-pane fade">
                                <h3>Account details </h3>
                                <div class="register-form login-form clearfix">
                                    <div>

                                        <div class="form-group row">
                                            <label for="f-name" class="col-lg-3 col-md-4 col-form-label">
                                                First
                                                    Name</label>
                                            <div class="col-lg-6 col-md-8">
                                                <asp:TextBox runat="server" ID="TxtFirstName" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ValidationGroup="UpdateCustomerGroup" ErrorMessage="this field required" ForeColor="Red" SetFocusOnError="True" ControlToValidate="TxtFirstName" Display="Dynamic"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="l-name" class="col-lg-3 col-md-4 col-form-label">
                                                Last
                                                    Name</label>
                                            <div class="col-lg-6 col-md-8">
                                                <asp:TextBox runat="server" ID="TxtLastName" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ValidationGroup="UpdateCustomerGroup" ErrorMessage="this field required" ForeColor="Red" SetFocusOnError="True" ControlToValidate="TxtLastName" Display="Dynamic"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="username" class="col-lg-3 col-md-4 col-form-label">
                                                UserName</label>
                                            <div class="col-lg-6 col-md-8">
                                                <asp:TextBox runat="server" ID="TxtUname" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ValidationGroup="UpdateCustomerGroup" ErrorMessage="this field required" ForeColor="Red" SetFocusOnError="True" ControlToValidate="TxtUname" Display="Dynamic"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="email" class="col-lg-3 col-md-4 col-form-label">
                                                Email
                                                    address</label>
                                            <div class="col-lg-6 col-md-8">
                                                <asp:TextBox runat="server" ID="TxtEmail" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ValidationGroup="UpdateCustomerGroup" ErrorMessage="this field required" ForeColor="Red" SetFocusOnError="True" ControlToValidate="TxtEmail" Display="Dynamic"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label for="newpassword" class="col-lg-3 col-md-4 col-form-label">
                                                New
                                                    password</label>
                                            <div class="col-lg-6 col-md-8">
                                                <asp:TextBox runat="server" ID="TxtPass" class="form-control" TextMode="Password" />
                                                <div class="input-group-btn">
                                                    <asp:LinkButton ID="BtnChangePass" class="btn show-btn" runat="server" OnClick="BtnChangePass_Click">Change password </asp:LinkButton>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="register-box mt-40">
                                            <asp:LinkButton runat="server" class="return-customer-btn float-right" ID="Btn_Save" OnClick="Btn_Save_Click">Save</asp:LinkButton>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- My Account Page End Here -->


    <asp:HiddenField ID="HF_SecurityStamp" runat="server" />
</asp:Content>
