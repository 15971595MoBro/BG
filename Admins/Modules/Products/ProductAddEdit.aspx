<%@ Page Title="" Language="C#" MasterPageFile="~/Admins/AdminMaster.Master" AutoEventWireup="true" CodeBehind="ProductAddEdit.aspx.cs" Inherits="BGBeauty_Website.Admins.Modules.Products.ProductAddEdit" validateRequest="false"%>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

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
                            <asp:HyperLink ID="HLPreview" runat="server" CssClass="btn btn-sm purple" Target="_blank"><i class="fa fa-eye"></i> Preview</asp:HyperLink>

                            <asp:LinkButton ID="BtnSubmit" runat="server" OnClick="BtnSubmit_Click" CssClass="btn btn-sm btn-primary"><i class="fa fa-save"></i> Save</asp:LinkButton>
                            <asp:LinkButton ID="Btn_SaveContinue" runat="server" OnClick="Btn_SaveContinue_Click" CssClass="btn btn-sm btn-primary"><i class="fa fa-save"></i> Save and continue</asp:LinkButton>
                            <asp:HyperLink ID="BtnCancel" runat="server" Text="Cancel" CssClass="btn btn-sm btn-default" NavigateUrl="/Admins/Modules/Products/ProductList" />
                            <asp:LinkButton ID="Btn_Delete" runat="server" OnClick="Btn_Delete_Click" CssClass="btn btn-sm btn-danger" OnClientClick="javascript:return confirm('Are you sure do you want to Delete this Product? ')"><i class="fa fa-trash "></i> Delete</asp:LinkButton>
                        </div>
                    </div>
                    <div class="tabbable-custom nav-justified">
                        <ul class="nav nav-tabs nav-justified" id="TabDetails">
                            <li class="">
                                <a href="#tab_1_1_1" data-toggle="tab">Product info</a>
                            </li>
                            <li>
                                <a href="#tab_1_1_2" data-toggle="tab">Pictures </a>
                            </li>
                            <li>
                                <a href="#tab_1_1_3" data-toggle="tab">Product attributes </a>
                            </li>
                            <li>
                                <a href="#tab_1_1_4" data-toggle="tab">Specification attributes </a>
                            </li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane " id="tab_1_1_1">
                                <div class="form-body">
                                    <div class="row">
                                        <div class="col-md-7">
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


                                                                            <div class=" col-md-12">
                                                                                <div class="form-group">
                                                                                    <asp:Label ID="lblName" runat="server" AssociatedControlID="TxtName" CssClass="control-label">Product Name</asp:Label>
                                                                                    <asp:TextBox runat="server" ID="TxtName" CssClass="form-control" ValidationGroup="ProductGroup" />
                                                                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="TxtName"
                                                                                        CssClass="text-danger" ErrorMessage="The Product Name field is required." ValidationGroup="ProductGroup" Display="Dynamic" />
                                                                                </div>
                                                                            </div>

                                                                            <div class=" col-md-12">
                                                                                <div class="form-group">
                                                                                    <asp:Label ID="lblShortDescription" runat="server" AssociatedControlID="TxtShortDescription" CssClass="control-label">Short Description</asp:Label>
                                                                                    <asp:TextBox runat="server" ID="TxtShortDescription" CssClass="form-control" TextMode="MultiLine" ValidationGroup="ProductGroup"/>
                                                                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="TxtShortDescription"
                                                                                        CssClass="text-danger" ErrorMessage="The Short Description field is required." ValidationGroup="ProductGroup" Display="Dynamic" />
                                                                                </div>
                                                                            </div>
                                                                            <div class=" col-md-12">
                                                                                <div class="form-group">
                                                                                    <asp:Label ID="lblFullDescription" runat="server" AssociatedControlID="TxtFullDescription" CssClass="control-label">Full Description</asp:Label>
                                                                                    <asp:TextBox runat="server" ID="TxtFullDescription" CssClass="wysihtml5 form-control" ValidationGroup="ProductGroup" TextMode="MultiLine" Height="150" ClientIDMode="Static" />
                                                                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="TxtFullDescription"
                                                                                        CssClass="text-danger" ErrorMessage="The Full Description field is required." ValidationGroup="ProductGroup" Display="Dynamic" />
                                                                                </div>
                                                                            </div>
                                                                            <div class=" col-md-12">
                                                                                <div class="form-group">
                                                                                    <asp:Label ID="lblMetaDescription" runat="server" AssociatedControlID="TxtMetaDescription" CssClass="control-label">Meta Description </asp:Label>
                                                                                    <asp:TextBox runat="server" ID="TxtMetaDescription" CssClass="form-control" TextMode="MultiLine" />
                                                                                </div>
                                                                            </div>
                                                                            <div class=" col-md-12">
                                                                                <div class="form-group">
                                                                                    <asp:Label ID="Label2" runat="server" AssociatedControlID="TxtMetaTitle" CssClass="control-label">Meta Title </asp:Label>
                                                                                    <asp:TextBox runat="server" ID="TxtMetaTitle" CssClass="form-control" />
                                                                                </div>
                                                                            </div>
                                                                            <div class=" col-md-12">
                                                                                <div class="form-group">
                                                                                    <asp:Label ID="lblMetaKeywords" runat="server" AssociatedControlID="TxtMetaKeywords" CssClass="control-label">Meta Keywords </asp:Label>
                                                                                    <asp:TextBox runat="server" ID="TxtMetaKeywords" CssClass="form-control" />
                                                                                </div>
                                                                            </div>
                                                                            <div class=" col-md-12">
                                                                                <div class="form-group">
                                                                                    <asp:Label ID="LblTags" runat="server" AssociatedControlID="TxtTags" CssClass="control-label">Tags </asp:Label>
                                                                                    <asp:TextBox runat="server" ID="TxtTags" CssClass="form-control" />
                                                                                </div>
                                                                            </div>
                                                                            <div class="form-group">

                                                                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                                                    <ContentTemplate>
                                                                                        <div class=" col-md-12">
                                                                                            <div class="form-group">
                                                                                                <asp:Label runat="server" AssociatedControlID="TxtSku" CssClass="control-label">Sku (product code)</asp:Label>
                                                                                                <asp:Label ID="LblSkuValid" runat="server"></asp:Label>
                                                                                                <asp:TextBox runat="server" ID="TxtSku" CssClass="form-control" ValidationGroup="ProductGroup" AutoPostBack="True" ClientIDMode="Static" />
                                                                                                <asp:TextBox runat="server" ID="TxtSkuFound" CssClass="form-control hidden" />
                                                                                                <asp:RequiredFieldValidator runat="server" ControlToValidate="TxtSku"
                                                                                                    CssClass="text-danger" ErrorMessage="The Sku field is required." ForeColor="Yellow" Display="Dynamic" ValidationGroup="ProductGroup" />

                                                                                            </div>
                                                                                            <%--     <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Sku used, try another one" ControlToCompare="TxtSku" ForeColor="Yellow" ControlToValidate="TxtSkuFound" Operator="NotEqual" Display="Dynamic" ValidationGroup="product"></asp:CompareValidator>
                                                                                            <asp:RequiredFieldValidator runat="server" ControlToValidate="TxtSku"
                                                                                                CssClass="text-danger" ErrorMessage="Sku is required." Display="Dynamic" />--%>
                                                                                        </div>
                                                                                    </ContentTemplate>
                                                                                </asp:UpdatePanel>

                                                                            </div>


                                                                        </div>
                                                                    </div>
                                                                    <asp:HiddenField ID="HF_LanguageID" runat="server" Value='<%# Eval("LangUID") %>' />
                                                                </ItemTemplate>
                                                            </asp:Repeater>

                                                        </div>
                                                    </div>




                                                    <div class="form-group">


                                                        <div class=" col-md-6">
                                                            <div class="form-group">
                                                                <asp:Label ID="lblPublished" runat="server" AssociatedControlID="CH_Published" CssClass="control-label">Published</asp:Label>
                                                                <asp:CheckBox ID="CH_Published" runat="server" />
                                                            </div>
                                                        </div>
                                                        <div class=" col-md-6">
                                                            <div class="form-group">
                                                                <asp:Label ID="lblShowOnHomePage" runat="server" AssociatedControlID="CH_ShowOnHomePage" CssClass="control-label">Show on home page</asp:Label>
                                                                <asp:CheckBox ID="CH_ShowOnHomePage" runat="server" />
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class=" col-md-12">
                                                        <div class="form-group">
                                                            <label>Display Order</label>
                                                            <asp:TextBox ID="TxtDisplayOrder" runat="server" ClientIDMode="Static" CssClass="input-xs OrderBy " Text="0">
                                                            </asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="form-group hidden">
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label>
                                                                    Available start date
                                                                </label>
                                                                <div class="input-group input-medium date date-picker form-group" data-date-format="mm-dd-yyyy">

                                                                    <asp:TextBox ID="TxtAvailableStartDate" runat="server" CssClass="form-control" />
                                                                    <span class="input-group-btn">
                                                                        <button class="btn default" type="button">
                                                                            <i class="fa fa-calendar"></i>
                                                                        </button>
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label>Available end date</label>
                                                                <div class="input-group input-medium date date-picker form-group" data-date-format="mm-dd-yyyy">

                                                                    <asp:TextBox ID="TxtAvailableEndDate" runat="server" CssClass="form-control" />
                                                                    <span class="input-group-btn">
                                                                        <button class="btn default" type="button">
                                                                            <i class="fa fa-calendar"></i>
                                                                        </button>
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class=" col-md-12">
                                                            <div class="form-group">
                                                                <asp:CompareValidator ID="CompareValidator_AvailableDate" runat="server" ErrorMessage="Date Range not valid" ControlToValidate="TxtAvailableEndDate" ControlToCompare="TxtAvailableStartDate" Type="Date" Operator="GreaterThanEqual" Display="Dynamic" ForeColor="red"></asp:CompareValidator>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="form-group ">
                                                        <div class=" col-md-12">
                                                            <div class="form-group">
                                                                <asp:Label ID="lblMarkAsNew" runat="server" AssociatedControlID="CH_MarkAsNew" CssClass="control-label">Mark As New</asp:Label>
                                                                <asp:CheckBox ID="CH_MarkAsNew" runat="server" />
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6 hidden">
                                                            <div class="form-group">
                                                                <label>
                                                                    Mark As New start date
                                                                </label>
                                                                <div class="input-group input-medium date date-picker form-group" data-date-format="MM-dd-yyyy">

                                                                    <asp:TextBox ID="TxtMarkAsNewStartDate" runat="server" CssClass="form-control" />
                                                                    <span class="input-group-btn">
                                                                        <button class="btn default" type="button">
                                                                            <i class="fa fa-calendar"></i>
                                                                        </button>
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6 hidden">
                                                            <div class="form-group">
                                                                <label>Mark As New end date</label>
                                                                <div class="input-group input-medium date date-picker form-group" data-date-format="MM-dd-yyyy">

                                                                    <asp:TextBox ID="TxtMarkAsNewEndDate" runat="server" CssClass="form-control" />
                                                                    <span class="input-group-btn">
                                                                        <button class="btn default" type="button">
                                                                            <i class="fa fa-calendar"></i>
                                                                        </button>
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class=" col-md-12">
                                                            <div class="form-group">
                                                                <asp:CompareValidator ID="CompareValidator_MarkAsNew" runat="server" ErrorMessage="Date Range not valid" ControlToValidate="TxtMarkAsNewEndDate" ControlToCompare="TxtMarkAsNewStartDate" Type="Date" Operator="GreaterThanEqual" Display="Dynamic" ForeColor="red"></asp:CompareValidator>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="form-group hidden">
                                                        <div class=" col-sm-6">
                                                            <label class="control-label">PDF file</label>
                                                            <asp:FileUpload ID="FileUpload_DownloaadFile" runat="server" CssClass="filestyle" data-icon="false" data-classButton="btn btn-default" data-classInput="form-control inline input-s" />

                                                        </div>
                                                        <div class=" col-sm-6">
                                                            <asp:HiddenField ID="HF_DownloadFileURL" runat="server" />
                                                            <asp:HyperLink ID="HL_DownloadFile" runat="server" Target="_blank"><i class="fa fa-file-pdf-o fa-2x text-danger "></i></asp:HyperLink>
                                                        </div>
                                                    </div>
                                                    <div class="form-group hidden">
                                                        <div class=" col-md-6">
                                                            <div class="form-group">
                                                                <asp:Label ID="lblDisableBuyButton" runat="server" AssociatedControlID="CH_DisableBuyButton" CssClass="control-label">Disable Buy Button</asp:Label>
                                                                <asp:CheckBox ID="CH_DisableBuyButton" runat="server" />
                                                            </div>
                                                        </div>
                                                        <div class=" col-md-6">
                                                            <div class="form-group">
                                                                <asp:Label ID="lblDisableWishlistButton" runat="server" AssociatedControlID="CH_DisableWishlistButton" CssClass="control-label">Disable Wishlist Button</asp:Label>
                                                                <asp:CheckBox ID="CH_DisableWishlistButton" runat="server" />
                                                            </div>
                                                        </div>
                                                        <div class=" col-md-6">
                                                            <div class="form-group">
                                                                <asp:Label ID="lblAvailableForPreOrder" runat="server" AssociatedControlID="CH_AvailableForPreOrder" CssClass="control-label">Available For Pre Order</asp:Label>
                                                                <asp:CheckBox ID="CH_AvailableForPreOrder" runat="server" />
                                                            </div>
                                                        </div>
                                                        <div class=" col-md-6">
                                                            <div class="form-group">
                                                                <asp:Label ID="lblCallForPrice" runat="server" AssociatedControlID="CH_CallForPrice" CssClass="control-label">Call For Price</asp:Label>
                                                                <asp:CheckBox ID="CH_CallForPrice" runat="server" />
                                                            </div>
                                                        </div>

                                                    </div>
                                                    <div class="form-group">
                                                    </div>
                                                </div>
                                            </div>


                                        </div>
                                        <div class="col-md-5">
                                            <div class="panel panel-default advanced-setting">
                                                <div class="panel-heading">
                                                    Prices
               
                                                </div>
                                                <div class="panel-body">
                                                    <div class="form-group">
                                                        <div class=" col-md-12">
                                                            <div class="form-group">
                                                                <label>Price</label>
                                                                <asp:TextBox ID="TxtPrice" runat="server" ClientIDMode="Static" CssClass="input-xs Price " Text="0">
                                                                </asp:TextBox>
                                                                <asp:RequiredFieldValidator runat="server" ControlToValidate="TxtPrice"
                                                                    CssClass="text-danger" ErrorMessage="The Price field is required." ValidationGroup="ProductGroup" Display="Dynamic" />
                                                            </div>
                                                        </div>
                                                        <div class=" col-md-12">
                                                            <div class="form-group">
                                                                <label>Discount Percentage %</label>
                                                                <asp:TextBox ID="TxtDiscountPercentage" runat="server" ClientIDMode="Static" CssClass="input-xs Price " Text="0">
                                                                </asp:TextBox>
                                                            </div>
                                                        </div>
                                                        <div class=" col-md-12">
                                                            <div class="form-group">
                                                                <label>Old price</label>
                                                                <asp:TextBox  ID="TxtOldPrice" runat="server" ClientIDMode="Static" CssClass="input-xs Price " Text="0">
                                                                </asp:TextBox>
                                                            </div>
                                                        </div>

                                                        
                                                    </div>
                                                    <div class="form-group">
                                                         <asp:LinkButton ID="Btn_Discount" runat="server" OnClick="Btn_Discount_Click" CssClass="btn btn-sm btn-primary"><i class="fa fa-save"></i> Discount</asp:LinkButton>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-5">
                                            <div class="panel panel-default advanced-setting">
                                                <div class="panel-heading">
                                                    Inventory               
                                                </div>
                                                <div class="panel-body">
                                                    <div class="form-group">
                                                        <div class=" col-md-12">
                                                            <div class="form-group">
                                                                <label class="control-label">Stock quantity</label>
                                                                <asp:TextBox ID="TxtStockQuantity" runat="server" ClientIDMode="Static" CssClass="input-xs Num " Text="0"></asp:TextBox>
                                                                <asp:RequiredFieldValidator runat="server" ControlToValidate="TxtStockQuantity"
                                                                    CssClass="text-danger" ErrorMessage="The Stock quantity field is required." ValidationGroup="ProductGroup" Display="Dynamic" />
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="form-group hidden">
                                                        <div class=" col-md-12">
                                                            <div class="form-group">
                                                                <label class="control-label">Minimum stock qty</label>
                                                                <asp:TextBox ID="TxtMinStockQuantity" runat="server" ClientIDMode="Static" CssClass="input-xs Num " Text="0"></asp:TextBox>
                                                            </div>
                                                        </div>

                                                    </div>
                                                    <div class="form-group">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-5">
                                            <div class="panel panel-default advanced-setting">
                                                <div class="panel-heading">
                                                    Mappings
               
                                                </div>
                                                <div class="panel-body">
                                                    <div class="form-group">
                                                        <div class=" col-md-12">
                                                            <div class="form-group">
                                                                <asp:Label ID="lblCategories" runat="server" AssociatedControlID="ListCategories" CssClass="control-label">Categories</asp:Label>
                                                                <asp:ListBox runat="server" ID="ListCategories" CssClass="form-control select2-multiple" SelectionMode="Multiple"></asp:ListBox>
                                                                <asp:RequiredFieldValidator runat="server" ControlToValidate="ListCategories"
                                                                    CssClass="text-danger" ErrorMessage="Category is required." ValidationGroup="ProductGroup" Display="Dynamic" />
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <div class=" col-md-12">
                                                            <div class="form-group">
                                                                <asp:Label ID="lblBrand" runat="server" AssociatedControlID="DdlBrand" CssClass="control-label">Brand</asp:Label>
                                                                <asp:DropDownList runat="server" ID="DdlBrand" CssClass="form-control"></asp:DropDownList>
                                                                <asp:RequiredFieldValidator runat="server" ControlToValidate="DdlBrand"
                                                                    CssClass="text-danger" ErrorMessage="Brand name is required." ValidationGroup="ProductGroup" Display="Dynamic" />
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
                                <asp:Label ID="LblPicturesTabMsg" runat="server" Text="You need to save the Product before you can add Pictures for this Product page. "></asp:Label>
                                <asp:Panel ID="Panel_Pictures" runat="server" CssClass="form-body">
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <table id="Tbl_PicturesList" class="table table-striped table-bordered table-hover order-column ">
                                                <thead>
                                                    <tr>
                                                        <th>Picture
                                                        </th>
                                                        <th>Title</th>
                                                        <th>Order</th>
                                                        <th>Publised</th>
                                                        <th style="width: 80px"></th>
                                                    </tr>
                                                </thead>
                                                <tbody id="Tbody_PicturesList">
                                                    <asp:Repeater ID="Repeater_PicturesList" runat="server" OnItemCommand="Repeater_PicturesList_ItemCommand1">
                                                        <ItemTemplate>

                                                            <tr>
                                                                <td>
                                                                    <img src='<%# Common.GeneralUtilities.AppSettings("ProductsImagesUploadPath")+"/Files/Products" + "/" + HF_ProductID.Value + "/" + Eval("PhotoName", "{0}")%>' class='<%# Eval("PhotoName", "{0}") == "" ? "hidden" : ""%>' height="50" />

                                                                </td>
                                                                <th>
                                                                    <%# Eval("PhotoTitle", "{0}")%>
                                                                </th>
                                                                <td><%# Eval("PhotoOrderBy")%></td>

                                                                <td><%# (bool)Eval("Publish") == true ? "<i class='fa fa-check true-icon text-success '>" :  "<i class='fa fa-eye-slash'>"%></td>
                                                                <th>
                                                                    <asp:LinkButton ID="BtnPicEdit" runat="server" CommandName="Edit" CommandArgument='<%# Eval("PhotoID")%>'><li class='fa fa-edit '></li> Edit</asp:LinkButton>


                                                                </th>
                                                                <td>
                                                                    <asp:LinkButton ID="BtnnPicDelete" runat="server" CommandName="Delete" CommandArgument='<%# Eval("PhotoID")%>' CssClass=" font-red" OnClientClick="javascript:return confirm('Are you sure do you want to Delete this Photo? ')"><li class='fa fa-trash '></li> Delete</asp:LinkButton>
                                                                </td>
                                                            </tr>
                                                        </ItemTemplate>
                                                    </asp:Repeater>

                                                </tbody>
                                            </table>
                                        </div>
                                        <div class="col-sm-12">
                                            <div class="panel panel-default">
                                                <div class="panel-heading">
                                                    Add a new picture 
                                                </div>
                                                <div class="panel-body">
                                                    <div class=" col-sm-6">
                                                        <div class="form-group">
                                                            <label>
                                                                Choose Picture ( 350px X 424px)
                                                            </label>
                                                            <asp:FileUpload ID="FileUpload1" runat="server" CssClass="filestyle" data-icon="false" data-classButton="btn btn-default" data-classInput="form-control inline input-s" />
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator_picture" runat="server" ControlToValidate="FileUpload1"
                                                                CssClass="text-danger" ErrorMessage="The Picture is required." Display="Dynamic" ValidationGroup="Picture" />

                                                        </div>
                                                    </div>

                                                    <div class=" col-sm-6">
                                                        <div class="form-group">
                                                            <asp:Image ID="ImgPicture" runat="server" Height="80" ImageUrl="~/Files/default-placeholder-300x300.png" />
                                                            <asp:LinkButton ID="BtnPictureDel" runat="server" CausesValidation="false" OnClientClick="javascript:return confirm('Are you sure do you want to Delete this Picture? ')"
                                                                ToolTip="Delete picture" Visible="False"> <i class="fa fa-trash-o text-danger font Fontsize_20" ></i> </asp:LinkButton>
                                                            <asp:HiddenField ID="Hf_PictureID" runat="server" />
                                                            <asp:HiddenField ID="Hf_PictureName" runat="server" />
                                                            <asp:HiddenField ID="Hf_ImageCode" runat="server" />
                                                        </div>
                                                    </div>

                                                    <div class=" col-sm-6 hidden">
                                                        <div class="form-group">
                                                            <asp:Label ID="lblPictureTitle" runat="server" AssociatedControlID="TxtPictureTitle" CssClass="control-label">Picture Title</asp:Label>
                                                            <asp:TextBox runat="server" ID="TxtPictureTitle" CssClass="form-control" />
                                                            <%-- <asp:RequiredFieldValidator runat="server" ControlToValidate="TxtPictureTitle"
                                                            CssClass="text-danger" ErrorMessage="The Picture Title field is required." Display="Dynamic" ValidationGroup="Picture" />--%>
                                                        </div>
                                                    </div>
                                                    <div class=" col-sm-3">
                                                        <div class="form-group">
                                                            Display Order
                                                            <asp:TextBox ID="TxtPictureOrder" runat="server" ClientIDMode="Static" CssClass="input-xs OrderBy " Text="0">
                                                            </asp:TextBox>
                                                            <asp:RequiredFieldValidator runat="server" ControlToValidate="TxtPictureOrder"
                                                                CssClass="text-danger" ErrorMessage="Display Order Title field is required." Display="Dynamic" ValidationGroup="Picture" />

                                                        </div>
                                                    </div>
                                                    <div class=" col-sm-3">
                                                        <div class="form-group">
                                                            <asp:Label ID="Label1" runat="server" AssociatedControlID="CH_PicturePublished" CssClass="control-label">Published</asp:Label>
                                                            <asp:CheckBox ID="CH_PicturePublished" runat="server" />
                                                        </div>
                                                    </div>
                                                    <div class=" col-sm-12">
                                                        <div class="form-group text-center">
                                                            <asp:LinkButton ID="BtnSavePicture" runat="server" OnClick="BtnSavePicture_Click" Text="Save" CssClass="btn btn-primary" ValidationGroup="Picture"><i class="fa fa-save"></i> Save</asp:LinkButton>
                                                            <asp:LinkButton ID="BtnCancelPicture" runat="server" OnClick="BtnCancelPicture_Click" Text="Cancel" CssClass="btn btn-default" CausesValidation="False"> Cancel</asp:LinkButton>
                                                        </div>
                                                    </div>

                                                </div>

                                            </div>
                                        </div>
                                        <div class="col-sm-12">
                                            <div class="panel panel-default">
                                                <div class="panel-heading">
                                                    Add a new picture As Package
                                                </div>
                                                <div class="panel-body">
                                                    <div class=" col-sm-6">
                                                        <div class="form-group">
                                                            <label>
                                                                Choose Picture
                                                            </label>
                                                            <asp:FileUpload ID="FileUpload2" runat="server" CssClass="filestyle" data-icon="false" data-classButton="btn btn-default" data-classInput="form-control inline input-s" />
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="FileUpload2"
                                                                CssClass="text-danger" ErrorMessage="The Picture is required." Display="Dynamic" ValidationGroup="PicturePackage" />

                                                        </div>
                                                    </div>

                                                    <div class=" col-sm-6">
                                                        <div class="form-group">
                                                            <asp:Image ID="ImgPicture2" runat="server" Height="80" ImageUrl="~/Files/default-placeholder-300x300.png" />
                                                            <asp:LinkButton ID="BtnPictureDel2" runat="server" CausesValidation="false" OnClientClick="javascript:return confirm('Are you sure do you want to Delete this Page? ')"
                                                                ToolTip="Delete picture" Visible="False"> <i class="fa fa-trash-o text-danger font Fontsize_20" ></i> </asp:LinkButton>
                                                            <asp:HiddenField ID="Hf_PictureID2" runat="server" />
                                                            <asp:HiddenField ID="Hf_PictureName2" runat="server" />
                                                            <asp:HiddenField ID="Hf_ImageCode2" runat="server" />
                                                        </div>
                                                    </div>

                                                    <div class=" col-sm-6 hidden">
                                                        <div class="form-group">
                                                            <asp:Label ID="lblPictureTitle2" runat="server" AssociatedControlID="TxtPictureTitle2" CssClass="control-label">Picture Title</asp:Label>
                                                            <asp:TextBox runat="server" ID="TxtPictureTitle2" CssClass="form-control" />
                                                            <%-- <asp:RequiredFieldValidator runat="server" ControlToValidate="TxtPictureTitle"
                                                            CssClass="text-danger" ErrorMessage="The Picture Title field is required." Display="Dynamic" ValidationGroup="Picture" />--%>
                                                        </div>
                                                    </div>
                                                    <div class=" col-sm-3">
                                                        <div class="form-group">
                                                            Display Order
                                                            <asp:TextBox ID="TxtPictureOrder2" runat="server" ClientIDMode="Static" CssClass="input-xs OrderBy " Text="0">
                                                            </asp:TextBox>
                                                            <asp:RequiredFieldValidator runat="server" ControlToValidate="TxtPictureOrder2"
                                                                CssClass="text-danger" ErrorMessage="Display Order Title field is required." Display="Dynamic" ValidationGroup="PicturePackage" />

                                                        </div>
                                                    </div>
                                                    <div class=" col-sm-3">
                                                        <div class="form-group">
                                                            <asp:Label ID="Label4" runat="server" AssociatedControlID="CH_PicturePublished2" CssClass="control-label">Published</asp:Label>
                                                            <asp:CheckBox ID="CH_PicturePublished2" runat="server" />
                                                        </div>
                                                    </div>
                                                    <div class=" col-sm-3">
                                                        <div class="form-group">
                                                            <asp:Label ID="Label5" runat="server" AssociatedControlID="CH_PictureShowInHome" CssClass="control-label">Show in home</asp:Label>
                                                            <asp:CheckBox ID="CH_PictureShowInHome" runat="server" />
                                                        </div>
                                                    </div>
                                                    <div class=" col-sm-12">
                                                        <div class="form-group text-center">
                                                            <asp:LinkButton ID="BtnSavePicturePakage" runat="server" OnClick="BtnSavePicturePakage_Click" Text="Save" CssClass="btn btn-primary" ValidationGroup="PicturePackage"><i class="fa fa-save"></i> Save</asp:LinkButton>
<%--                                                            <asp:LinkButton ID="LinkButton3" runat="server" OnClick="BtnCancelPicture_Click2" Text="Cancel" CssClass="btn btn-default" CausesValidation="False"> Cancel</asp:LinkButton>--%>
                                                        </div>
                                                    </div>

                                                </div>

                                            </div>
                                        </div>
                                        <div class="col-sm-12">
                                            <div class="panel panel-default">
                                                <div class="panel-heading">
                                                    Add a multiple picture 
                                                </div>
                                                <div class="panel-body">
                                                    <div class=" col-sm-6">
                                                        <div class="form-group">
                                                            <label>
                                                                Choose multiple photos (max 10 photos per time) with size ( 800px X 800px)
                                                            </label>

                                                            <br />
                                                            <br />
                                                            <telerik:RadAsyncUpload runat="server" OnFileUploaded="RadAsyncUpload1_FileUploaded" ID="RadAsyncUpload1" UploadedFilesRendering="BelowFileInput"
                                                                MultipleFileSelection="Automatic" MaxFileInputsCount="10" />
                                                            <telerik:RadProgressArea RenderMode="Lightweight" runat="server" ID="RadProgressArea1" />
                                                        </div>
                                                    </div>

                                                    <div class=" col-sm-12">
                                                        <div class="form-group text-center">
                                                            <asp:LinkButton ID="BtnSaveMultiplePhotos" runat="server" Text="Save Multiple Photos" CssClass="btn btn-primary" ValidationGroup="MultiplePicture"><i class="fa fa-save"></i> Save</asp:LinkButton>
                                                        </div>
                                                    </div>

                                                </div>

                                            </div>
                                        </div>

                                    </div>
                                </asp:Panel>
                            </div>
                            <div class="tab-pane  " id="tab_1_1_3">
                                <asp:Label ID="lblAttributesTabMsg" runat="server" Text="You need to save the Product before you can add Product attributes for this Product page. "></asp:Label>
                                <asp:Panel ID="Panel_Attributes" runat="server" CssClass="form-body">
                                    <div class="row">
                                        <div class="col-sm-12 margin-bottom-10">
                                            Product attributes are quantifiable or descriptive aspects of a product (such as, color). For example, if you were to create an attribute for color, with the values of blue, green, yellow, and so on, you may want to apply this attribute to product, which you sell in various colors (you can adjust a price or weight for any of existing attribute values). You can add attribute for your product using existing list of attributes, or if you need to create a new one go to Catalog > Attributes > Product attributes.
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <table id="Tbl_AttributeList" class="table table-striped table-bordered table-hover order-column ">
                                                <thead>
                                                    <tr>

                                                        <th>Attribute</th>
                                                        <th class="">Text Prompt</th>
                                                        <th class="">Control type</th>
                                                        <th class="">Display Order</th>
                                                        <th class="">Values</th>
                                                        <th style="width: 80px"></th>
                                                        <th style="width: 80px"></th>
                                                    </tr>
                                                </thead>
                                                <tbody id="Tbody_AttributeList">
                                                    <asp:Repeater ID="Repeater_Attribute" runat="server" OnItemCommand="Repeater_Attribute_ItemCommand">
                                                        <ItemTemplate>
                                                            <tr>

                                                                <td>
                                                                    <%# Eval("AttributeName", "{0}")%>
                                                                </td>
                                                                <td>
                                                                    <%# Eval("TextPrompt", "{0}")%>
                                                                </td>
                                                                <td><%# Controllers_Attributes.GetControlType((int)Eval("AttributeControlTypeId"))%></td>
                                                                <td>
                                                                    <%# Eval("DisplayOrder", "{0}")%>
                                                                </td>
                                                                <td>
                                                                    <a href="#" onclick="window_open('/Admins/modules/Products/PopupProductAttributeValues?aid=<%# Eval("ID") %>','800','600')">View/Edit values</a>
                                                                </td>
                                                                <td>
                                                                    <asp:LinkButton ID="BtnEdit" runat="server" CommandName="Edit" CommandArgument='<%# Eval("ID")%>'><li class='fa fa-edit '></li> Edit</asp:LinkButton>
                                                                </td>
                                                                <td>
                                                                    <asp:LinkButton ID="BtnDelete" runat="server" CommandName="Delete" CommandArgument='<%# Eval("ID")%>' CssClass=" font-red" OnClientClick="javascript:return confirm('Are you sure do you want to Delete this attributes? ')"><li class='fa fa-trash '></li> Delete</asp:LinkButton>
                                                                </td>
                                                            </tr>
                                                        </ItemTemplate>
                                                    </asp:Repeater>

                                                </tbody>
                                            </table>
                                        </div>

                                        <div class="col-sm-12">
                                            <div class="panel panel-default">
                                                <div class="panel-heading">
                                                    Add a new attribute 
                                                </div>
                                                <div class="panel-body">

                                                    <div class=" col-sm-3">
                                                        <div class="form-group">
                                                            <label>
                                                                Attribute
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="DdlAttributes" ValidationGroup="Attribute"></asp:RequiredFieldValidator>
                                                            </label>
                                                            <asp:DropDownList ID="DdlAttributes" runat="server" OnSelectedIndexChanged="DdlAttributes_SelectedIndexChanged" CssClass="form-control">
                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>
                                                    <div class=" col-sm-3">
                                                        <div class="form-group">
                                                            <label>
                                                                Control type
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="DdlControlType" ValidationGroup="Attribute"></asp:RequiredFieldValidator>
                                                            </label>
                                                            <asp:DropDownList ID="DdlControlType" runat="server" CssClass="form-control">
                                                                <asp:ListItem Text="ListItem" Value="1"></asp:ListItem>
                                                                <asp:ListItem Text="RadioList" Value="2"></asp:ListItem>
                                                                <asp:ListItem Text="Checkboxes" Value="3"></asp:ListItem>
                                                                <asp:ListItem Text="TextBox" Value="4"></asp:ListItem>
                                                                <asp:ListItem Text="ColorSwatch" Value="5"></asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>

                                                    <div class=" col-sm-3">
                                                        <div class="form-group">
                                                            <label>Text Prompt</label>
                                                            <asp:TextBox ID="TxtAttributeTextPrompt" runat="server" ClientIDMode="Static" CssClass="input-xs form-control ">
                                                            </asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class=" col-sm-3">
                                                        <div class="form-group">
                                                            <label>Display Order</label>
                                                            <asp:TextBox ID="TxtattributeDisplayOrder" runat="server" ClientIDMode="Static" CssClass="input-xs OrderBy " Text="0">
                                                            </asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class=" col-sm-12">
                                                        <div class="form-group text-center">
                                                            <asp:LinkButton ID="BtnSaveAttribute" runat="server" OnClick="BtnSaveAttribute_Click" Text="Save" CssClass="btn btn-primary" ValidationGroup="Attribute"><i class="fa fa-save"></i> Save</asp:LinkButton>
                                                            <asp:LinkButton ID="BtnCancelAttribute" runat="server" OnClick="BtnCancelAttribute_Click" Text="Cancel" CssClass="btn btn-default" CausesValidation="False"> Cancel</asp:LinkButton>
                                                        </div>
                                                    </div>

                                                    <asp:HiddenField ID="HF_AttributeID" runat="server" />

                                                </div>

                                            </div>
                                        </div>

                                    </div>
                                    <div class="row">
                                    </div>
                                </asp:Panel>
                            </div>

                            <div class="tab-pane " id="tab_1_1_4">
                                <asp:Label ID="LblSpecificationAttributesTabMsg" runat="server" Text="You need to save the Product before you can add Specification for this Product page. "></asp:Label>
                                <asp:Panel ID="Panel_SpecificationAttributes" runat="server" CssClass="form-body">
                                    <div class="row">
                                        <div class="col-sm-12 margin-bottom-10">
                                            Specification are product features color, size visible on product details page. Specification can be used for filtering products on the category details page. Unlike product attributes, specification are used for information purposes only. 
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <table id="Tbl_SpecificationList" class="table table-striped table-bordered table-hover order-column ">
                                                <thead>
                                                    <tr>
                                                        <th>Specification type
                                                        </th>
                                                        <th>Specification</th>
                                                        <th class="">Value</th>
                                                        <th class="">Display Order</th>
                                                        <th style="width: 80px"></th>
                                                        <th style="width: 80px"></th>
                                                    </tr>
                                                </thead>
                                                <tbody id="Tbody_SpecificationList">
                                                    <asp:Repeater ID="Repeater_Specification" runat="server" OnItemCommand="Repeater_Specification_ItemCommand">
                                                        <ItemTemplate>
                                                            <tr>
                                                                <td>
                                                                    <%# Controllers_Specifications.SpecificationType((int)Eval("AttributeTypeId"))%>
                                                                </td>
                                                                <td>
                                                                    <%# Eval("SpecificationName", "{0}")%>
                                                                </td>
                                                                <td>
                                                                    <%# Eval("CustomValue","{0}") == "" ? Eval("OptionName", "{0}") : Eval("CustomValue","{0}")%>
                                                                </td>
                                                                <td>
                                                                    <%# Eval("DisplayOrder", "{0}")%>
                                                                </td>
                                                                <td>
                                                                    <asp:LinkButton ID="BtnEdit" runat="server" CommandName="Edit" CommandArgument='<%# Eval("ID")%>'><li class='fa fa-edit '></li> Edit</asp:LinkButton>
                                                                </td>
                                                                <td>
                                                                    <asp:LinkButton ID="BtnDelete" runat="server" CommandName="Delete" CommandArgument='<%# Eval("ID")%>' CssClass=" font-red" OnClientClick="javascript:return confirm('Are you sure do you want to Delete this Specification ? ')"><li class='fa fa-trash '></li> Delete</asp:LinkButton>
                                                                </td>
                                                            </tr>
                                                        </ItemTemplate>
                                                    </asp:Repeater>

                                                </tbody>
                                            </table>
                                        </div>

                                        <div class="col-sm-12">
                                            <div class="panel panel-default">
                                                <div class="panel-heading">
                                                    Add a new specification attribute 
                                                </div>
                                                <div class="panel-body">
                                                    <div class=" col-sm-3">
                                                        <div class="form-group">
                                                            <label>
                                                                Specification type
                                                            </label>
                                                            <asp:DropDownList ID="DdlSpecificationType" runat="server" CssClass="form-control" AutoPostBack="True">
                                                                <asp:ListItem Selected="True" Value="0" Text="Option"></asp:ListItem>
                                                                <asp:ListItem Value="10" Text="Custom text"></asp:ListItem>
                                                                <%--   <asp:ListItem Value="20" Text="Custom HTML text"></asp:ListItem>
                                                                <asp:ListItem Value="30" Text="Hyperlink"></asp:ListItem>--%>
                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>

                                                    <div class=" col-sm-3">
                                                        <div class="form-group">
                                                            <label>
                                                                Specification
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="DdlSpecificationAttributes" ValidationGroup="Specification"></asp:RequiredFieldValidator>
                                                            </label>
                                                            <asp:DropDownList ID="DdlSpecificationAttributes" runat="server" OnSelectedIndexChanged="DdlSpecificationAttributes_SelectedIndexChanged" AutoPostBack="True" CssClass="form-control">
                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>
                                                    <asp:Panel ID="Panel_SpecificationOption" runat="server" class=" col-sm-3">
                                                        <div class="form-group">
                                                            <label>
                                                                Option
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="DdlSpecificationOptions" ValidationGroup="Specification"></asp:RequiredFieldValidator>

                                                            </label>
                                                            <asp:DropDownList ID="DdlSpecificationOptions" OnSelectedIndexChanged="DdlSpecificationOptions_SelectedIndexChanged" runat="server" CssClass="form-control">
                                                            </asp:DropDownList>
                                                        </div>
                                                    </asp:Panel>
                                                    <asp:Panel ID="Panel_SpecificationFreeText" runat="server" class=" col-sm-3" Visible="False">
                                                        <div class="form-group">
                                                            <label>
                                                                Value
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="TxtSpecificationValue" ValidationGroup="Specification"></asp:RequiredFieldValidator>

                                                            </label>
                                                            <asp:TextBox ID="TxtSpecificationValue" runat="server" ClientIDMode="Static" CssClass="form-control ">
                                                            </asp:TextBox>
                                                        </div>

                                                    </asp:Panel>
                                                    <div class=" col-sm-3">
                                                        <div class="form-group">
                                                            <label>Display Order</label>
                                                            <asp:TextBox ID="TxtSpecificationDisplayOrder" runat="server" ClientIDMode="Static" CssClass="input-xs OrderBy " Text="0">
                                                            </asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class=" col-sm-12">
                                                        <div class="form-group text-center">
                                                            <asp:LinkButton ID="BtnSaveSpecification" runat="server" OnClick="BtnSaveSpecification_Click" Text="Save" CssClass="btn btn-primary" ValidationGroup="Specification"><i class="fa fa-save"></i> Save</asp:LinkButton>
                                                            <asp:LinkButton ID="BtnCancelSpecification" runat="server" Text="Cancel" OnClick="BtnCancelSpecification_Click" CssClass="btn btn-default" CausesValidation="False"> Cancel</asp:LinkButton>
                                                        </div>
                                                    </div>

                                                    <asp:HiddenField ID="HF_SpecificationID" runat="server" />


                                                </div>

                                            </div>
                                        </div>

                                    </div>
                                </asp:Panel>
                            </div>

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

    <asp:HiddenField ID="HF_ProductID" runat="server" />

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

</asp:Content>
