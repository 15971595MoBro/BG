<%@ Page Title="Discount Type Add/Edit" Language="C#" MasterPageFile="~/Admins/AdminMaster.Master" AutoEventWireup="true" CodeBehind="DiscountTypeAddEdit.aspx.cs" Inherits="BGBeautyProject_Website.Admins.Modules.DiscountTypes.DiscountTypeAddEdit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="/Admins/assets/global/plugins/bootstrap-wysihtml5/wysiwyg-color.css" rel="stylesheet" />
    <link href="/Admins/assets/global/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5_Small.css" rel="stylesheet" />
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

            <a href="/Admins/Modules/DiscountTypes/DiscountTypeList">Discount type List</a>
            <i class="fa fa-circle"></i>
        </li>
        <li class="active">
            <%: Page.Title %>
        </li>
    </ul>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Content_Note" runat="server">
     <div class="pull-right">
        <asp:LinkButton ID="BtnSubmit" runat="server" Text="Save" OnClick="BtnSubmit_Click" CssClass="btn btn-primary"><i class="fa fa-save"></i> Save</asp:LinkButton>
        <asp:HyperLink ID="BtnCancel" runat="server" Text="Cancel" CssClass="btn btn-default" NavigateUrl="/Admins/Modules/DiscountTypes/DiscountTypeList" />
        <asp:LinkButton ID="Btn_Delete" runat="server" CssClass="btn btn-danger" OnClick="Btn_Delete_Click" OnClientClick="javascript:return confirm('Are you sure do you want to Delete this Discount Type? ')"><i class="fa fa-trash "></i> Delete</asp:LinkButton>
    </div>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="Content_Main" runat="server">
      <div id="widget-grid" class="portlet light borderedv">
        <div class="table-toolbar">
            <header>
                <h4><span class="widget-icon"><i class="fa fa-edit"></i></span>Discount Type Info</h4>
            </header>
            <div>
                <hr />
                <div class="jarviswidget-editbox"></div>




                <div id="myMainTabsContant" class="tab-content padding-10" style="margin-top: -10px">

                    <div class="widget-body col-lg-6">

                        <div class=" tab-pane fade in ">
                            <div class="row" style="margin: 10px; padding-top: 10px">

                                <div class=" col-sm-12">
                                    <div class="form-group">
                                        <asp:Label ID="lblDiscountTypeName" runat="server" AssociatedControlID="TxtDiscountTypeName" CssClass="control-label">Discount Type Name</asp:Label>
                                        <asp:TextBox runat="server" ID="TxtDiscountTypeName" CssClass="form-control" />
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="TxtDiscountTypeName"
                                            CssClass="text-danger" ErrorMessage="The Discount Type Name field is required." />
                                    </div>
                                </div>
                                <div class=" col-sm-12">
                                    <div class="form-group">
                                        <asp:Label ID="lblDiscountTypeBrief" runat="server" AssociatedControlID="TxtDiscountTypeBrief" CssClass="control-label">Discount Type Brief</asp:Label>
                                        <asp:TextBox runat="server" ID="TxtDiscountTypeBrief" TextMode="MultiLine" CssClass="form-control" Height="90" />

                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="col-sm-3" style="padding-top: 25px">
                        <div class="form-group">
                            <asp:CheckBox ID="CH_Active" runat="server" Text="Active" />
                        </div>
                        <div class="form-group">
                            <asp:CheckBox ID="CH_OrderMinimumAmount" runat="server" Text="Allow Order Minimum Amount" />
                        </div>
                        <div class="form-group">
                            <asp:CheckBox ID="CH_CouponCode" runat="server" Text="Allow Coupon Code" />
                        </div>
                        <div class="form-group">
                            <asp:CheckBox ID="CH_MinimumDiscountedQuantity" runat="server" Text="Allow Minimum Discounted Quantity" />
                        </div>
                        <div class="form-group">
                            <asp:CheckBox ID="CH_OrderSubtotal" runat="server" Text="Applied To Order SubTotal" />
                        </div>
                        
                    </div>
                    <div class="col-sm-3" style="padding-top: 25px">
                        <div class="form-group">
                            <asp:CheckBox ID="CH_Percentage" runat="server" Text="Allow Percentage" />
                        </div>
                        <div class="form-group">
                            <asp:CheckBox ID="CH_MaximumDiscountedAmount" runat="server" Text="Allow Maximum Discounted Amount" />
                        </div>
                        <div class="form-group">
                            <asp:CheckBox ID="CH_BuyNGetN" runat="server" Text="Allow Buy (N) Get (N) Free" />
                        </div>
                        <div class="form-group">
                            <asp:CheckBox ID="CH_MaximumDiscountedQuantity" runat="server" Text="Allow Maximum Discounted Quantity" />
                        </div>
                        <div class="form-group">
                            <asp:CheckBox ID="CH_Shipping" runat="server" Text="Applied To Shipping" />
                        </div>
                    </div>






                </div>
            </div>
        </div>
    </div>

    <asp:HiddenField ID="HF_DiscountTypeID" runat="server" />
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="Content_Script" runat="server">
     <script src="/Admins/assets/global/plugins/bootstrap-wysihtml5/wysihtml5-0.3.0.js" type="text/javascript"></script>
    <script src="/Admins/assets/global/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.js" type="text/javascript"></script>
    <script src="/Admins/assets/global/plugins/select2/js/select2.full.min.js" type="text/javascript"></script>
</asp:Content>
