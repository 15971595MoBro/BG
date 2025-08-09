<%@ Page Title="" Language="C#" MasterPageFile="~/Admins/AdminMaster.Master" AutoEventWireup="true" CodeBehind="ShippingFeesAddEdit.aspx.cs" Inherits="BGBeauty_Website.Admins.Modules.Sales.ShippingFeesAddEdit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .Lbl_Color{
            color: red;
            font-size: 20px;
            font-weight: bold;
        }
    </style>
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
                <div class="portlet-body form">
                    <div class="col-sm-12">
                        <div class=" portlet-input pull-right margin-bottom-20">

                            <asp:Button ID="BtnSubmit" runat="server" OnClick="BtnSubmit_Click1" Text="Submit" CssClass="btn btn-primary" />
                            <a class="btn btn-default" href="/Admins/Modules/Sales/ShippingFeesList?countryid=<%:DdlCountries.SelectedValue %>">Cancel</a>
                            <asp:LinkButton ID="Btn_Delete" runat="server" CssClass="btn btn-danger" OnClientClick="javascript:return confirm('Are you sure do you want to Delete this category? ')"><i class="fa fa-trash "></i> Delete</asp:LinkButton>
                        </div>
                    </div>

                    <div class="form-body">
                        <div class="row ">
                            <div class=" col-sm-6">
                                <div class="form-group">
                                    <label class="control-label">
                                        Country
                                        
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="DdlCountries"
                                        CssClass="text-danger" ErrorMessage="The Country field is required." SetFocusOnError="True" Display="Dynamic" />

                                    </label>
                                    <asp:DropDownList runat="server" OnSelectedIndexChanged="DdlCountries_SelectedIndexChanged1" ID="DdlCountries" CssClass="form-control" AutoPostBack="true">
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class=" col-sm-6">
                                <div class="form-group">
                                    <label class="control-label">State</label>
                                    <asp:DropDownList runat="server" ID="DdlStateProvinces" CssClass="form-control">
                                    </asp:DropDownList>
                                </div>
                            </div>

                            <div class=" col-sm-6">
                                <div class="form-group">
                                    Items Count
                                   <asp:TextBox ID="TxtShippingItemsCount" runat="server" ClientIDMode="Static" CssClass="input-xs OrderBy" Text="1" >
                                   </asp:TextBox>
                                </div>
                            </div>
                            <div class=" col-sm-6">
                                <div class="form-group">
                                    Shipping Fees
                                    <%--OrderBy--%>
                                   <asp:TextBox ID="TxtShippingFees" runat="server" ClientIDMode="Static" CssClass="input-xs form-control" Text="0" TextMode="Number">
                                   </asp:TextBox>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <div class="form-actions ">
                <div class="row">
                    <div class="form-group">
                        <div class="col-md-12 text-center">
                            <asp:Label ID="Lbl_Alert" Text="The First Item Count To State Must be with value 1" Visible="false" CssClass="Lbl_Color" runat="server" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <asp:HiddenField ID="HF_CountryID" runat="server" />
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="Content_Script" runat="server">
</asp:Content>
