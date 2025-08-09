<%@ Page Title="Discount Add/Edit" Language="C#" MasterPageFile="~/Admins/AdminMaster.Master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="DiscountAddEdit.aspx.cs" Inherits="BGBeautyProject_Website.Admins.Modules.Discounts.DiscountAddEdit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="/Admins/assets/global/plugins/bootstrap-wysihtml5/wysiwyg-color.css" rel="stylesheet" />
    <link href="/Admins/assets/global/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5_Small.css" rel="stylesheet" />

    <link href="/Admins/assets/global/plugins/select2/css/select2.min.css" rel="stylesheet" type="text/css" />
    <link href="/Admins/assets/global/plugins/select2/css/select2-bootstrap.min.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content_Title" runat="server">
     <h1><%: Page.Title %></h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content_Toolbar" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content_MapPath" runat="server">
    <ul class="breadcrumb">
        <li><a href="/">Home </a><i class="fa fa-circle"></i></li>

        <li>
            <a href="/Admins/Modules/Discounts/DiscountList">Discount List</a>
            <i class="fa fa-circle"></i>
        </li>
        <li class="active">
            <%: Page.Title %>
        </li>
    </ul>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Content_Note" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="Content_Main" runat="server">
      <asp:ScriptManager ID="ScriptManager1" runat="server" EnableCdn="true"></asp:ScriptManager>
    <asp:HiddenField ID="hidTAB" runat="server" Value="tab_1_1_1" />

    <div class="row">
        <div class="col-sm-12">
            <div class="portlet light bordered ">
                <div class="portlet-title">
                    <div class="caption font-dark">
                        <i class="icon-cursor  hide"></i>
                        <span class="caption-subject  bold uppercase"><%: Page.Title %></span>
                    </div>
                    <div class="tools">
                        <a class="collapse" href="javascript:;"></a>
                    </div>
                </div>
                <div class="portlet-body">
                    <div class="col-sm-12">
                        <div class=" portlet-input pull-right margin-bottom-20">
                            <%--                            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="BtnSubmit_Click" CssClass="btn btn-sm btn-primary"><i class="fa fa-save"></i> Save</asp:LinkButton>--%>
                            <asp:LinkButton ID="Btn_SaveContinue" runat="server" OnClick="Btn_SaveContinue_Click" CssClass="btn btn-sm btn-primary"><i class="fa fa-save"></i> Save and continue</asp:LinkButton>
                            <asp:HyperLink ID="HyperLink1" runat="server" Text="Cancel" CssClass="btn btn-sm btn-default" NavigateUrl="/Admins/Modules/Discounts/DiscountList" />
                            <%--                            <asp:LinkButton ID="LinkButton2" runat="server" OnClick="Btn_Delete_Click" CssClass="btn btn-sm btn-danger" OnClientClick="javascript:return confirm('Are you sure do you want to Delete this Product? ')"><i class="fa fa-trash "></i> Delete</asp:LinkButton>--%>
                        </div>
                    </div>
                    <div class="col-sm-12">
                        <div class=" portlet-input pull-left margin-bottom-20">
                            <asp:DropDownList runat="server" ID="Ddl_DiscountType" AutoPostBack="true" OnSelectedIndexChanged="Ddl_DiscountType_SelectedIndexChanged" CssClass="form-control"></asp:DropDownList>
                        </div>
                    </div>
                    <div class="tabbable-custom nav-justified">
                        <ul class="nav nav-tabs nav-justified" id="TabDetails">
                            <li class="">
                                <a href="#tab_1_1_1" data-toggle="tab" runat="server" id="discountinfo">Discount info</a>
                            </li>
                            <li>
                                <a href="#tab_1_1_2" data-toggle="tab" runat="server" id="productdiscountlist">Product list in discount </a>
                            </li>
                            <li>
                                <a href="#tab_1_1_3" data-toggle="tab" runat="server" id="buyngetndiscount">Buy (N) get (N) in discount </a>
                            </li>

                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane " id="tab_1_1_1">
                                <div class="form-body">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="panel panel-default advanced-setting" id="group-BasicInfo">
                                                <div class="panel-heading">
                                                    Basic Info
                                                </div>
                                                <div class="panel-body">

                                                    <div class="widget-body col-lg-12">
                                                        <ul id="myTab1" class="nav nav-tabs bordered">
                                                            <asp:Repeater ID="RepLanguageTaps" runat="server">
                                                                <ItemTemplate>
                                                                    <li class='<%# Container.ItemIndex == 0 ? "active" : "" %>'>
                                                                        <a href='<%# "#Tab"+Container.ItemIndex.ToString() %>' data-toggle="tab"><%# Eval("Name", "{0}") %></a>
                                                                    </li>
                                                                </ItemTemplate>
                                                            </asp:Repeater>
                                                        </ul>

                                                        <div id="myTabContent1" class="tab-content padding-10" style="margin-top: -10px">
                                                            <asp:Repeater ID="RepLanguageTapContant" runat="server">
                                                                <ItemTemplate>
                                                                    <div class=" tab-pane fade in border <%# Container.ItemIndex == 0 ? "active" : "" %>" id='<%# "Tab"+Container.ItemIndex.ToString() %>'>
                                                                        <div class="row" style="margin: 10px; padding-top: 10px">


                                                                            <div class=" col-md-6">
                                                                                <div class="form-group">
                                                                                    <asp:Label ID="lblName" runat="server" AssociatedControlID="TxtDiscountName" CssClass="control-label">Discount Name</asp:Label>
                                                                                    <asp:TextBox runat="server" ID="TxtDiscountName" CssClass="form-control" ValidationGroup="DiscountGroup" />
                                                                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="TxtDiscountName"
                                                                                        CssClass="text-danger" ErrorMessage="The Discount Name field is required." ValidationGroup="DiscountGroup" Display="Dynamic" />
                                                                                </div>
                                                                            </div>

                                                                            <div class=" col-md-6">
                                                                                <div class="form-group">
                                                                                    <asp:Label ID="lblDiscountDescription" runat="server" AssociatedControlID="TxtDiscountDescription" CssClass="control-label">Discount Description</asp:Label>
                                                                                    <asp:TextBox runat="server" ID="TxtDiscountDescription" CssClass="form-control" TextMode="MultiLine" ValidationGroup="DiscountGroup" />
                                                                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="TxtDiscountDescription"
                                                                                        CssClass="text-danger" ErrorMessage="The Discount Description field is required." ValidationGroup="DiscountGroup" Display="Dynamic" />
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <asp:HiddenField ID="HF_LanguageID" runat="server" Value='<%# Eval("LangUID") %>' />
                                                                </ItemTemplate>
                                                            </asp:Repeater>

                                                        </div>
                                                    </div>
                                                    <div class="col-md-6" style="padding-top: 10px;">
                                                        <div class="col-md-12">
                                                            <div class="form-group">

                                                                <%--                                                                <div class="col-md-6">--%>
                                                                <div class="col-md-6">
                                                                    <div class="form-group pull-in clearfix">
                                                                        <label>
                                                                            Date Start
                                                                        </label>
                                                                        <div class="input-group input-medium date date-picker form-group" data-date-format="mm-dd-yyyy">

                                                                            <asp:TextBox ID="TxtDiscountStartDate" runat="server" CssClass="form-control" />
                                                                            <span class="input-group-btn">
                                                                                <button class="btn default" type="button">
                                                                                    <i class="fa fa-calendar"></i>
                                                                                </button>
                                                                            </span>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group pull-in clearfix bootstrap-timepicker">

                                                                        <label>
                                                                            Time Start
                                                                        </label>
                                                                        <div class="input-group bootstrap-timepicker timepicker">
                                                                            <asp:TextBox ID="txt_DiscountStartTime" runat="server" CssClass="form-control timepicker" ClientIDMode="Static"></asp:TextBox>
                                                                            <span class="input-group-addon"><i class="glyphicon glyphicon-time"></i></span>
                                                                        </div>
                                                                    </div>
                                                                </div>


                                                                <%--</div>--%>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <div class="form-group">
                                                                <%--                                                                <div class="col-md-6">--%>
                                                                <div class="col-md-6">
                                                                    <label>Date End</label>
                                                                    <div class="input-group input-medium date date-picker form-group" data-date-format="mm-dd-yyyy">

                                                                        <asp:TextBox ID="TxtDiscountEndDate" runat="server" CssClass="form-control" />
                                                                        <span class="input-group-btn">
                                                                            <button class="btn default" type="button">
                                                                                <i class="fa fa-calendar"></i>
                                                                            </button>
                                                                        </span>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group pull-in clearfix bootstrap-timepicker">

                                                                        <label>
                                                                            Time End
                                                                        </label>
                                                                        <div class="input-group bootstrap-timepicker timepicker">
                                                                            <asp:TextBox ID="txt_DiscountEndTime" runat="server" CssClass="form-control timepicker" ClientIDMode="Static"></asp:TextBox>
                                                                            <span class="input-group-addon"><i class="glyphicon glyphicon-time"></i></span>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <%--                                                                </div>--%>
                                                            </div>
                                                        </div>
                                                        <%--<div class=" col-md-12">
                                                            <div class="form-group">
                                                                <asp:CompareValidator ID="CompareValidator_AvailableDate" runat="server" ErrorMessage="Date Range not valid" ControlToValidate="TxtDiscountEndDate" ControlToCompare="TxtDiscountStartDate" Type="Date" Operator="GreaterThanEqual" Display="Dynamic" ForeColor="red"></asp:CompareValidator>
                                                            </div>
                                                        </div>--%>
                                                    </div>


                                                    <div class="form-group col-md-6">
                                                        <div class="row">
                                                            <div class="col-md-6" style="padding-top: 25px;">
                                                                <div class="form-group" id="UsePercentage" runat="server">
                                                                    <asp:Label ID="LblUsePercentage" runat="server" AssociatedControlID="CH_UsePercentage" CssClass="control-label">Use Percentage</asp:Label>
                                                                    <asp:CheckBox ID="CH_UsePercentage" runat="server" ClientIDMode="Static" OnCheckedChanged="CH_UsePercentage_CheckedChanged" AutoPostBack="true" />
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6" runat="server" id="PercentageValue">
                                                                <div class="form-group">
                                                                    <asp:Label ID="LblPercentage" ClientIDMode="static" runat="server" AssociatedControlID="Txt_PercentageValue" CssClass="control-label">Percentage Value</asp:Label>
                                                                    <asp:TextBox runat="server" ClientIDMode="static" TextMode="Number" ID="Txt_PercentageValue" CssClass="form-control" />
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6" runat="server" id="AmountValue">
                                                                <div class="form-group">
                                                                    <asp:Label ID="LblAmountValue" ClientIDMode="static" runat="server" AssociatedControlID="Txt_AmountValue" CssClass="control-label">Amount Value</asp:Label>
                                                                    <asp:TextBox runat="server" TextMode="Number" ClientIDMode="static" ID="Txt_AmountValue" CssClass="form-control" min="0" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row">

                                                            <div class=" col-md-6" style="padding-top: 25px;">
                                                                <div class="form-group" id="UseCouponCode" runat="server">
                                                                    <asp:Label ID="LblUseCouponCode" runat="server" AssociatedControlID="CH_UseCouponCode" CssClass="control-label">Use Coupon Code</asp:Label>
                                                                    <asp:CheckBox ID="CH_UseCouponCode" runat="server" ClientIDMode="Static" />
                                                                </div>
                                                            </div>
                                                            <div class=" col-md-6">
                                                                <div class="form-group" id="CouponCode" runat="server">
                                                                    <asp:Label ID="LblCouponCode" ClientIDMode="static" runat="server" AssociatedControlID="Txt_CouponCode" CssClass="control-label hidden">Coupon Code</asp:Label>
                                                                    <asp:TextBox runat="server" ClientIDMode="static" ID="Txt_CouponCode" CssClass="form-control hidden" />
                                                                    <asp:CustomValidator ForeColor="Red" ErrorMessage="This Coupon Code is Used before" ID="Custom_CouponCode" OnServerValidate="Custom_CouponCode_ServerValidate" ControlToValidate="Txt_CouponCode" runat="server" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-6" id="OrderMinimumAmount" runat="server">
                                                                <asp:Label ID="Lbl_OrderMinimumAmount" runat="server" AssociatedControlID="Txt_OrderMinimumAmount" CssClass="control-label">Order Minimum Amount</asp:Label>
                                                                <asp:TextBox runat="server" ID="Txt_OrderMinimumAmount" TextMode="Number" CssClass="form-control" min="0" />
                                                            </div>
                                                            <div class="col-md-6" id="MaximumDiscountedAmount" runat="server">
                                                                <asp:Label ID="Lbl_MaximumDiscountedAmount" runat="server" AssociatedControlID="Txt_MaximumDiscountedAmount" CssClass="control-label">Maximum Discounted Amount</asp:Label>
                                                                <asp:TextBox runat="server" ID="Txt_MaximumDiscountedAmount" TextMode="Number" CssClass="form-control" min="0" />
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-6" style="padding-top: 25px;">
                                                                <asp:Label Text="Type Limitations" CssClass="control-label" runat="server" />
                                                                <asp:DropDownList runat="server" ID="Ddl_TypeLimitation" CssClass="form-control" OnSelectedIndexChanged="Ddl_TypeLimitation_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                                                            </div>
                                                            <div class="col-md-6" runat="server" id="LimitationCount">
                                                                <asp:Label ID="Label1" runat="server" AssociatedControlID="Txt_LimitationCount" CssClass="control-label">Limitation Count</asp:Label>
                                                                <asp:TextBox runat="server" ID="Txt_LimitationCount" TextMode="Number" CssClass="form-control" min="1" />
                                                            </div>
                                                        </div>

                                                        <div class="row">
                                                            <div class="col-md-6" style="padding-top: 25px;">
                                                                <div class="form-group" id="Active" runat="server">
                                                                    <asp:Label ID="Lbl_Active" runat="server" AssociatedControlID="CH_Active" CssClass="control-label">Active</asp:Label>
                                                                    <asp:CheckBox ID="CH_Active" runat="server" />
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6" style="padding-top: 25px;">
                                                                <div class="form-group" id="FirstOrderOnly" runat="server">
                                                                    <asp:Label ID="Lbl_FirstOrderOnly" runat="server" AssociatedControlID="CH_FirstOrderOnly" CssClass="control-label">First Order Only</asp:Label>
                                                                    <asp:CheckBox ID="CH_FirstOrderOnly" runat="server" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-8" style="padding-top: 25px;">
                                                                <div class="form-group" id="NotAppliedProductOldPrice" runat="server">
                                                                    <asp:Label ID="Lbl_NotAppliedProductOldPrice" runat="server" AssociatedControlID="CH_NotAppliedProductOldPrice" CssClass="control-label">Not Applied to product have old price</asp:Label>
                                                                    <asp:CheckBox ID="CH_NotAppliedProductOldPrice" runat="server" />
                                                                </div>
                                                            </div>
                                                        </div>

                                                    </div>
                                                    <div class="form-group">
                                                    </div>
                                                </div>
                                            </div>


                                        </div>


                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane " id="tab_1_1_2">

                                <asp:Panel ID="Panel_ProductListDiscount" runat="server" CssClass="form-body">
                                    <div class="row" style="margin-top: 20px;">
                                        <div class="col-sm-12">
                                            <div class="col-sm-6" style="padding-bottom: 5px;">
                                                <asp:Label Text="Category Type:" runat="server" />
                                                <asp:DropDownList runat="server" ID="Ddl_CategoryOfProduct" AutoPostBack="true" CssClass="form-control" OnSelectedIndexChanged="Ddl_CategoryOfProduct_SelectedIndexChanged"></asp:DropDownList>
                                            </div>



                                            <%--<div class="col-sm-3 text-center" style="margin-top: 5px;">
                                                <asp:Button Text="Search" CssClass="form-control btn btn-primary" runat="server" />
                                            </div>--%>
                                        </div>


                                        <div class="col-sm-12">
                                            <div class="panel panel-default" style="margin-top: 10px;">
                                                <div class="panel-heading">
                                                </div>
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-5">
                                                            <asp:ListBox ID="Lst_All" runat="server" SelectionMode="Multiple" CssClass="form-control" Height="250" ClientIDMode="Static"></asp:ListBox>
                                                        </div>
                                                        <div class="col-md-2 text-center">
                                                            <input type="button" id="left" value="<< Remove from Role" class="btn btn-primary" />

                                                            <input type="button" id="right" value="Move to role >>" class="btn btn-primary" />
                                                        </div>
                                                        <div class="col-md-5">
                                                            <asp:ListBox ID="Lst_Selected" runat="server" SelectionMode="Multiple" CssClass="form-control" Height="250" ClientIDMode="Static"></asp:ListBox>
                                                        </div>
                                                    </div>

                                                    <div class="row margin-top-20 margin-bottom-20 text-center">
                                                        <div class="col-md-12">
                                                            <asp:Button ID="BtnSubmit" OnClick="BtnSubmit_Click" runat="server" Text="Submit" CssClass="btn btn-primary" ClientIDMode="Static" />
                                                        </div>
                                                    </div>


                                                </div>

                                            </div>
                                        </div>



                                    </div>
                                </asp:Panel>

                            </div>
                            <div class="tab-pane " id="tab_1_1_3">
                                <div class="form-body">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <asp:Panel runat="server" ID="AvailableBuyNGetN">
                                                <div class="panel panel-default advanced-setting">
                                                    <div class="panel-heading">
                                                    </div>
                                                    <div class="panel-body">
                                                        <table id="Tbl_UsersList" class="table table-striped table-bordered table-hover order-column">
                                                            <thead>
                                                                <tr>

                                                                    <th>Purchase quantity
                                                                    </th>

                                                                    <th>Free Quantity
                                                                    </th>

                                                                    <th></th>
                                                                </tr>
                                                            </thead>
                                                            <tbody id="Tbody_DiscountList">
                                                                <asp:Repeater ID="Repeater_QuantityLimitationList" runat="server" OnItemCommand="Repeater_QuantityLimitationList_ItemCommand">
                                                                    <ItemTemplate>
                                                                        <tr>
                                                                            <th>
                                                                                <%# Eval("BuyN", "{0}")%>
                                                                            </th>

                                                                            <th>
                                                                                <%# Eval("GetNfree","{0}") %>
                                                                            </th>

                                                                            <th>
                                                                                <%--                                                                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "/Admins/Modules/Discounts/DiscountAddEdit?id=" + Eval("DiscountUID", "{0}")%>'><li class='fa fa-edit '></li> Edit</asp:HyperLink>--%>
                                                                                <asp:LinkButton ID="BtnDelete" runat="server" CausesValidation="false" CommandArgument='<%# Eval("BuyN", "{0}")%>'
                                                                                    CommandName="Delete" ImageUrl="/admin/Images/wpm_Delete.gif" OnClientClick="javascript:return confirm('Are you sure do you want to Delete this quantity ? ')"
                                                                                    ToolTip="Delete"> <i class="fa fa-trash-o fa-2x text-danger " ></i> </asp:LinkButton>
                                                                            </th>
                                                                        </tr>
                                                                    </ItemTemplate>
                                                                </asp:Repeater>
                                                            </tbody>

                                                        </table>
                                                        <div class="row">
                                                            <div class="col-md-4">
                                                                <asp:Label Text="Purcahse quantity" runat="server" />
                                                                <asp:TextBox runat="server" ID="Txt_PurcahseQuantity" CssClass="form-control" />
                                                            </div>
                                                            <div class="col-md-4">
                                                                <asp:Label Text="Free quantity" runat="server" />
                                                                <asp:TextBox runat="server" ID="Txt_FreeQuantity" CssClass="form-control" />
                                                            </div>
                                                            <div class="col-md-4" style="margin-top: 5px;">
                                                                <asp:Button CssClass="btn btn-primary" Text="Save Sitting" ID="Btn_SaveSitting" OnClick="Btn_SaveSitting_Click" runat="server" />
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </asp:Panel>
                                            <asp:Panel runat="server" ID="NotAvailableBuyNGetN">
                                                <p>You need to save the discount [buy (N) Get (N) in discount] before you can add sitting. </p>
                                            </asp:Panel>



                                        </div>


                                    </div>
                                </div>
                            </div>
                            <%--/////////////////////////--%><%--/////////////////////////--%><%--/////////////////////////--%>
                            <%--/////////////////////////--%><%--/////////////////////////--%><%--/////////////////////////--%>
                            <%--/////////////////////////--%><%--/////////////////////////--%><%--/////////////////////////--%>
                            <%--/////////////////////////--%><%--/////////////////////////--%><%--/////////////////////////--%>
                            <%--/////////////////////////--%><%--/////////////////////////--%><%--/////////////////////////--%>
                            <%--/////////////////////////--%><%--/////////////////////////--%><%--/////////////////////////--%>
                            <%--/////////////////////////--%><%--/////////////////////////--%><%--/////////////////////////--%>
                            <%--/////////////////////////--%><%--/////////////////////////--%><%--/////////////////////////--%>
                        </div>


                    </div>
                </div>
            </div>
            <div class="form-actions ">
                <div class="row">
                    <div class="form-group">
                        <div class="col-md-12 text-center">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <asp:HiddenField ID="HF_DiscountID" runat="server" />
    <asp:HiddenField ID="HF_DiscountCouponCode" runat="server" />
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="Content_Script" runat="server">
     <script src="/Admins/assets/global/plugins/bootstrap-wysihtml5/wysihtml5-0.3.0.js" type="text/javascript"></script>
    <script src="/Admins/assets/global/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.js" type="text/javascript"></script>
    <script src="/Admins/assets/global/plugins/select2/js/select2.full.min.js" type="text/javascript"></script>

    <script>
        //init datepickers
        $('.date-picker').datepicker({
            rtl: App.isRTL(),
            autoclose: true
        });

        $('.wysihtml5').wysihtml5(
            {
                "font-styles": true,
                "emphasis": true,
                "lists": true,
                "html": true,
                "link": true,
                "image": false
            });
        jQuery(document).ready(function () {
            if (document.getElementById('<%=hidTAB.ClientID %>').value == "") {
                document.getElementById('<%=hidTAB.ClientID %>').value = "tab_1_1_1";
            }
        });

        $(".select2, .select2-multiple").select2();




        $(function () {
            var hidTAB = $("[id*=hidTAB]").val() != "" ? $("[id*=hidTAB]").val() : "personal";
            $('#TabDetails a[href="#' + hidTAB + '"]').tab('show');
            $("#TabDetails a").click(function () {
                $("[id*=hidTAB]").val($(this).attr("href").replace("#", ""));
            });
        });

    </script>
    <script type="text/javascript">
        $(function () {
            $("#left").bind("click", function () {
                var options = $("[id*=Lst_Selected] option:selected");
                for (var i = 0; i < options.length; i++) {
                    var opt = $(options[i]).clone();
                    $(options[i]).remove();
                    $("[id*=Lst_All]").append(opt);
                }
            });
            $("#right").bind("click", function () {
                var options = $("[id*=Lst_All] option:selected");
                for (var i = 0; i < options.length; i++) {
                    var opt = $(options[i]).clone();
                    $(options[i]).remove();
                    $("[id*=Lst_Selected]").append(opt);
                }
            });
        });
    </script>
    <script type="text/javascript">
        $(function () {
            $("[id*=BtnSubmit]").bind("click", function () {
                $("[id*=Lst_All] option").attr("selected", "selected");
                $("[id*=Lst_Selected] option").attr("selected", "selected");
            });
        });
    </script>
    <script type="text/javascript">
        $(document).ready(function () {

            $("#CH_UsePercentage").click(function () {
                if (this.checked) {
                    $('#LblPercentage').attr('class', 'control-label');
                    $('#Txt_PercentageValue').attr('class', 'form-control');
                }
                if (!this.checked) {
                    $('#LblPercentage').attr('class', 'control-label hidden');
                    $('#Txt_PercentageValue').attr('class', 'form-control hidden');
                }
            });


        });
    </script>
    <script type="text/javascript">
        $(document).ready(function () {

            $("#CH_UseCouponCode").click(function () {
                if (this.checked) {

                    $('#LblCouponCode').attr('class', 'control-label');
                    $('#Txt_CouponCode').attr('class', 'form-control');
                }
                if (!this.checked) {

                    $('#LblCouponCode').attr('class', 'control-label hidden');
                    $('#Txt_CouponCode').attr('class', 'form-control hidden');
                }
            });

        });
    </script>
</asp:Content>
