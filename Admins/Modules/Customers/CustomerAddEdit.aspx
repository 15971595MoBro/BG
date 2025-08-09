<%@ Page Title="" Language="C#" MasterPageFile="~/Admins/AdminMaster.Master" AutoEventWireup="true" CodeBehind="CustomerAddEdit.aspx.cs" Inherits="BGBeauty_Website.Admins.Modules.Customers.CustomerAddEdit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content_Title" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content_Toolbar" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content_MapPath" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Content_Note" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="Content_Main" runat="server">
     <div class="row ">
        <div class="col-sm-12">
            <div class="portlet light bordered ">
                <div class="portlet-title">
                    <div class="caption font-dark">
                        <i class="icon-cursor  hide"></i>
                        <span class="caption-subject bold uppercase">Customer List</span>
                    </div>
                    <div class="tools">

                        <a class="collapse" href="javascript:;"></a>
                    </div>
                </div>
                <div class="portlet-body">
                    <div class="portlet-input pull-right margin-bottom-20">
                        <asp:LinkButton ID="Btn_Save" runat="server" OnClick="Btn_Save_Click1" CssClass="btn btn-primary"><i class="fa fa-save"></i> Save</asp:LinkButton>
                        <asp:LinkButton ID="Btn_SaveContinue" runat="server" OnClick="Btn_SaveContinue_Click1" CssClass="btn btn-primary"><i class="fa fa-save"></i> Save and continue</asp:LinkButton>
                        <asp:HyperLink ID="BtnCancel" runat="server" Text="Cancel" CssClass="btn btn-default" NavigateUrl="~/Admins/Modules/Customers/CustomerList" />
                        <asp:LinkButton ID="Btn_Delete" runat="server" OnClick="Btn_Delete_Click1" CssClass="btn btn-danger" OnClientClick="javascript:return confirm('Are you sure do you want to Delete this Customer? ')"><i class="fa fa-save"></i> Delete</asp:LinkButton>
                    </div>
                    <div class="tabbable-custom nav-justified">
                        <ul class="nav nav-tabs nav-justified">
                            <li class="active">
                                <a href="#tab_1_1_1" data-toggle="tab">Customer info </a>
                            </li>
                            <li>
                                <a href="#tab_1_1_2" data-toggle="tab">Orders </a>
                            </li>
                            <li>
                                <a href="#tab_1_1_3" data-toggle="tab">Shopping cart </a>
                            </li>
                            <li>
                                <a href="#tab_1_1_4" data-toggle="tab">Addresses </a>
                            </li>

                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane active" id="tab_1_1_1">

                                <div class="panel-group">
                                    <div class="panel panel-default">
                                        <div class="panel-body">

                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <div class="pull-right">
                                                        First name
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-9">
                                                <div class="form-group">
                                                    <asp:TextBox ID="TxtFirstName" runat="server" CssClass="form-control"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="this field required" ForeColor="Red" SetFocusOnError="True" ControlToValidate="TxtFirstName" Display="Dynamic"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>

                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <div class="pull-right">
                                                        Last name
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-9">
                                                <div class="form-group">
                                                    <asp:TextBox ID="TxtLastName" runat="server" CssClass="form-control"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="this field required" ForeColor="Red" SetFocusOnError="True" ControlToValidate="TxtLastName" Display="Dynamic"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>


                                            <div class="col-md-3 hidden">
                                                <div class="form-group">
                                                    <div class="pull-right">
                                                        Date of birth
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-9 hidden">
                                                <div class="input-group input-medium date date-picker form-group" data-date-format="MM-dd-yyyy">

                                                    <asp:TextBox ID="TxtBirthdate" runat="server" CssClass="form-control" />
                                                    <span class="input-group-btn">
                                                        <button class="btn default" type="button">
                                                            <i class="fa fa-calendar"></i>
                                                        </button>
                                                    </span>
                                                </div>

                                            </div>

                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <div class="pull-right">
                                                        Email
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-9">
                                                <div class="form-group">
                                                    <asp:TextBox ID="TxtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="this field required" ForeColor="Red" SetFocusOnError="True" ControlToValidate="TxtEmail" Display="Dynamic"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <div class="pull-right">
                                                        Username
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-9">
                                                <div class="form-group">
                                                    <asp:TextBox ID="TxtUname" runat="server" CssClass="form-control"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <div class="pull-right">
                                                        Password
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-9">
                                                <div class="form-group">
                                                    <asp:TextBox ID="TxtPass" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator_Pass" runat="server" ErrorMessage="this field required" ForeColor="Red" SetFocusOnError="True" ControlToValidate="TxtPass" Display="Dynamic"></asp:RequiredFieldValidator>
                                                    <div class="input-group-btn">
                                                        <asp:LinkButton ID="BtnChangePass" runat="server" OnClick="BtnChangePass_Click1" CssClass="btn btn-info">Change password </asp:LinkButton>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <div class="pull-right">
                                                        Gender
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-9">
                                                <div class="form-group">
                                                    <asp:RadioButtonList ID="RblGender" runat="server" RepeatDirection="Horizontal">
                                                        <asp:ListItem Value="1">Male</asp:ListItem>
                                                        <asp:ListItem Value="2">Female</asp:ListItem>
                                                    </asp:RadioButtonList>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="this field required" ForeColor="Red" SetFocusOnError="True" ControlToValidate="RblGender" Display="Dynamic"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>


                                            <div class="col-lg-3">
                                                <div class="form-group">
                                                    <div class="pull-right">
                                                        Active
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-9">
                                                <div class="form-group">
                                                    <asp:DropDownList runat="server" ID="DdlIsActive" CssClass="form-control">
                                                        <asp:ListItem Value="True" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="False" Text="No" Selected="True"></asp:ListItem>
                                                    </asp:DropDownList>
                                                    <span class="btn-block"></span>
                                                </div>
                                            </div>

                                            <div class="col-lg-3">
                                                <div class="form-group">
                                                    <div class="pull-right">
                                                        Change Pass Next Login
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-9">
                                                <div class="form-group">
                                                    <asp:DropDownList runat="server" ID="DdlChangePassNextLogin" CssClass="form-control">
                                                        <asp:ListItem Value="True" Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Value="False" Text="No" Selected="True"></asp:ListItem>
                                                    </asp:DropDownList>
                                                    <span class="btn-block"></span>
                                                </div>
                                            </div>

                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <div class="pull-right">
                                                        <asp:Label ID="LblCreatedDateTitle" runat="server" Text="Created on"></asp:Label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-9">
                                                <div class="form-group">
                                                    <asp:Label ID="LblCreatedDate" runat="server" Text=""></asp:Label>
                                                </div>
                                            </div>

                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <div class="pull-right">
                                                        <asp:Label ID="LblLastLoginTitle" runat="server" Text="Last Login"></asp:Label>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-md-9">
                                                <div class="form-group">
                                                    <asp:Label ID="LblLastLogin" runat="server" Text=""></asp:Label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <div class="tab-pane" id="tab_1_1_2">
                                <table id="Tbl_Order" class="table table-striped table-bordered table-hover" style="width: 100%">
                                    <thead>
                                        <tr>
                                            <th class="text-align-center">Order#</th>
                                            <%--<th>Order Status</th>--%>
                                            <%--<th>Payment Method</th>--%>
                                            <th>Customer</th>
                                            <%--<th>Store</th>--%>
                                            <th class="text-align-center">Create on</th>
                                            <th class="text-align-center">Total Order</th>
                                            <th class="text-align-center" style="width: 85px">Edit</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <asp:Repeater ID="Repeater_OrderList" runat="server">

                                            <ItemTemplate>
                                                <tr>
                                                    <td class="text-align-center"><%# Eval("OrderGuidInt") %></td>
                                                   <%-- <td>
                                                        <p class='<%# Eval("orderStatus.Css") %>'><%# Eval("orderStatus.StatusName") %></p>
                                                    </td>--%>
                                                    <%--<td><%# Eval("PaymentMethod.PaymentMethodName") %></td>--%>
                                                    <td><%# Eval("CustomerName") %></td>
                                                    <%--<td><%# Eval("store.StoreName") %></td>--%>
                                                    <td class="text-align-center"><%# Eval("CreatedOnUtc", "{0:MM/dd/yyyy hh:mm:ss tt}") %></td>
                                                    <td class="text-align-center">
                                                        <asp:Label ID="lbl_OrderTotal" runat="server" Text='<%# Eval("OrderTotal") %>' Visible="false"></asp:Label><%# Common.GeneralUtilities.CurrencyReplacer(Eval("OrderTotal", "{0:c}")) + " " + Common.GeneralUtilities.AppSettings("currency") %></td>
                                                    <td class="text-align-center"><a href='<%# "/Admins/Modules/Sales/OrderAddEdit?OrderID=" + Eval("OrderUID", "{0}")  %>' class="btn btn-primary"><i class="fa fa-search"></i>&nbsp;View</a></td>
                                                </tr>
                                            </ItemTemplate>

                                        </asp:Repeater>
                                        <tr>
                                            <td colspan="3"></td>
                                            <td class="text-align-center">
                                                <asp:Label ID="lbl_totalorders" runat="server"></asp:Label></td>
                                            <td></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="tab-pane" id="tab_1_1_3">
                                <table id="Tbl_CurrentShoppingCartList" class="table table-striped table-bordered table-hover order-column">
                                    <thead>
                                        <tr>
                                            <th style="width: 80px" class="text-align-center">Product photo </th>
                                            <th style="width: 300px">Product Name </th>
                                            <th class="text-align-center" style="width: 80px">Quantity</th>
                                            <th>Options Selected</th>
                                        </tr>
                                    </thead>
                                    <tbody id="Tbody_Current_Shopping_Cart">
                                        <asp:Repeater ID="Repeater_Current_Shopping_Cart" runat="server">
                                            <ItemTemplate>
                                                <tr>
                                                    <td class="text-align-center">
                                                        <asp:Image ID="proimg" runat="server" ImageUrl='<%# Common.GeneralUtilities.AppSettings("ProductsImagesUploadPath") +"/Files/Products" + "/" + Eval("Product.ID", "{0}") + "/" + Eval("productPhotoUrl") %>' Width="90px" /></td>
                                                    <td style="width: 300px"><%# Eval("ProductName") %></td>
                                                    <td class="text-align-center" style="width: 80px"><%# Eval("Quantity") %></td>
                                                    <td>
                                                        <asp:Repeater ID="Repeater1" runat="server" DataSource='<%# Newtonsoft.Json.JsonConvert.DeserializeObject((string)Eval("attributeJson")) %>'>
                                                            <HeaderTemplate>
                                                                <table class="table table-striped table-bordered table-hover order-column">
                                                                    <tbody>
                                                            </HeaderTemplate>
                                                            <ItemTemplate>
                                                                <tr>
                                                                    <td style="width: 200px"><%# Eval("attributeName") %></td>
                                                                    <td><%# Eval("freeTextValue") %></td>
                                                                </tr>
                                                            </ItemTemplate>
                                                            <FooterTemplate>
                                                                </tbody>
                                                        </table>
                                                            </FooterTemplate>
                                                        </asp:Repeater>
                                                    </td>
                                                </tr>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </tbody>
                                </table>
                            </div>
                            <div class="tab-pane" id="tab_1_1_4">
                                <table id="Tbl_AddressesList" class="table table-striped table-bordered table-hover order-column">
                                    <thead>
                                        <tr>

                                            <th>First name</th>
                                            <th>Last name</th>
                                            <th>PhoneNumber</th>
                                            <th>Address</th>
                                            <th class="hidden">Edit</th>
                                        </tr>
                                    </thead>
                                    <tbody id="Tbody_Addresses">
                                        <asp:Repeater ID="Repeater_Addresses" runat="server">
                                            <ItemTemplate>
                                                <tr>
                                                    <td><%# Eval("Address.Firstname") %></td>
                                                    <td><%# Eval("Address.Lastname") %></td>
                                                    <td><%# Eval("Address.PhoneNumber") %></td>
                                                    <td><%# Eval("Address.Address1", "{0}") + " - " + Eval("Address.City", "{0}") + " - " + (Eval("Address.StateProvince")) != "False" ? Eval("Address.StateProvince.Name", "{0}") : "" + " - " + (Eval("Address.Country")) != "False" ? Eval("Address.Country.Name", "{0}") : ""  %></td>
                                                    <td class="hidden"></td>
                                                </tr>
                                            </ItemTemplate>

                                        </asp:Repeater>
                                    </tbody>
                                </table>
                            </div>

                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>

    <asp:HiddenField ID="HF_ID" runat="server" />
    <asp:HiddenField ID="HF_SecurityStamp" runat="server" />
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="Content_Script" runat="server">
    <script>
        //init datepickers
        $('.date-picker').datepicker({
            rtl: App.isRTL(),
            autoclose: true
        });
    </script>
</asp:Content>
