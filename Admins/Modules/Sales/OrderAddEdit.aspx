<%@ Page Title="" Language="C#" MasterPageFile="~/Admins/AdminMaster.Master" AutoEventWireup="true" CodeBehind="OrderAddEdit.aspx.cs" Inherits="BGBeautyProject_Website.Admins.Modules.Sales.OrderAddEdit" %>
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
                        <span class="caption-subject bold uppercase">Order details</span>
                    </div>
                    <div class="tools">

                        <a class="collapse" href="javascript:;"></a>
                    </div>
                </div>
                <div class="portlet-body">
                    <div class="portlet-input pull-right margin-bottom-20">
                        <asp:LinkButton ID="Btn_Save" runat="server" CssClass="btn btn-primary" Visible="False"><i class="fa fa-save"></i> Save</asp:LinkButton>
                        <asp:LinkButton ID="Btn_SaveContinue" runat="server" CssClass="btn btn-primary" Visible="False"><i class="fa fa-save"></i> Save and continue</asp:LinkButton>
                        <asp:HyperLink ID="BtnCancel" runat="server" Text="Cancel" CssClass="btn btn-default" NavigateUrl="~/Admins/Modules/Sales/OrderList" />
                        <asp:LinkButton ID="Btn_Delete" OnClick="Btn_Delete_Click1" runat="server" CssClass="btn btn-danger" OnClientClick="javascript:return confirm('Are you sure do you want to Delete this Customer? ')"><i class="fa fa-save"></i> Delete</asp:LinkButton>
                    </div>
                    <div class="tabbable-custom nav-justified">
                        <ul class="nav nav-tabs nav-justified">
                            <li class="active">
                                <a href="#tab_1_1_1" data-toggle="tab">Order info </a>
                            </li>

                            <li>
                                <a href="#tab_1_1_2" data-toggle="tab">Items </a>
                            </li>


                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane active" id="tab_1_1_1">

                                <div class="panel-group">
                                    <div class="panel panel-default">
                                        <div class="panel-body">

                                            <div class="row">
                                                <div class="col-sm-12">
                                                    <h4>Order Details</h4>

                                                    <div class="col-md-4 col-sm-6 col-xs-6">
                                                        <div class="form-group">
                                                            <span style="">OrderID :</span>
                                                            <asp:Label ID="orderidlbl" runat="server"></asp:Label>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-4 col-sm-6 col-xs-6">
                                                        <div class="form-group">
                                                            <span>Date :</span>
                                                            <asp:Label ID="lblDate" runat="server"></asp:Label>
                                                            <%--(GMT)--%>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-4 col-sm-6 col-xs-6">
                                                        <div class="form-group">
                                                            <span>Total :</span>
                                                            <asp:Label ID="totallbl" runat="server"></asp:Label>
                                                        </div>
                                                    </div>

                                                    <hr />

                                                </div>
                                                <div class="col-sm-12">
                                                    <div class="form-group">
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
                                                                <span>Zip/Postal Code : </span>
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


                                                    </div>
                                                </div>


                                                <asp:Panel ID="PanelPatment" runat="server" class="col-sm-12">
                                                    <h4>Payment Details</h4>

                                                    <%--<div class="col-md-4 col-sm-6 col-xs-6">
                                                        <div class="form-group">
                                                            <span style="">TransactionID :</span>
                                                            <asp:Label ID="lblTransactionID" runat="server"></asp:Label>
                                                        </div>
                                                    </div>--%>

                                                    <div class="col-md-4 col-sm-6 col-xs-6">
                                                        <div class="form-group">
                                                            <span>Result :</span>
                                                            <asp:Label ID="LblResult" runat="server"></asp:Label>
                                                        </div>
                                                    </div>
                                                    <hr />
                                                </asp:Panel>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>

                            <div class="tab-pane" id="tab_1_1_2">
                                <table id="Tbl_CurrentShoppingCartList" class="table table-striped table-bordered table-hover order-column">
                                    <thead>
                                        <tr>
                                            <th style="width: 50px" class="text-align-center">Product photo </th>
                                            <th>Product Name </th>
                                            <th style="width: 150px">Unit Price </th>
                                            <th class="text-align-center" style="width: 80px">Quantity</th>
                                            <th style="width: 150px">Sub total</th>
                                        </tr>
                                    </thead>
                                    <tbody id="Tbody_Current_Shopping_Cart">
                                        <asp:Repeater ID="Repeater_Items" runat="server">
                                            <ItemTemplate>
                                                <tr>
                                                    <td class="product-image-td" style="padding: 5px">
                                                        <a href='<%# "/Language/En/Catalog/ProductDetails?id=" + Eval("ProductId", "{0}") + "&Name=" + Common.GeneralUtilities.GetUniqueName(Eval("ProductName", "{0}")) %>' title='<%# Eval("ProductName", "{0}") %>' target="_blank">
                                                            <img src='<%# Common.GeneralUtilities.AppSettings("ProductsImagesUploadPath")+"/Files/Products" + "/" + Eval("Product.ID", "{0}") + "/" + Eval("MainImage", "{0}")%>' class="img-responsive" />
                                                        </a>
                                                        <asp:HiddenField ID="HF_ProductID" runat="server" Value='<%# Eval("Product.ID", "{0}")  %>' />
                                                        <asp:HiddenField ID="HF_ItemID" runat="server" Value='<%# Eval("ID", "{0}")  %>' />
                                                    </td>
                                                    <td class="product-name-td" style="padding: 5px">
                                                        <h5 class="product-name"><a href='<%# "/Language/En/Catalog/ProductDetails?id=" + Eval("ProductId", "{0}") + "&Name=" + Common.GeneralUtilities.GetUniqueName(Eval("ProductName", "{0}"))  %>' title='<%#Eval("Product.ID", "{0}") %>'><%#Eval("ProductName", "{0}") %></a></h5>
                                                        <asp:Repeater ID="Repeater_Attributes" runat="server" DataSource='<%# Newtonsoft.Json.JsonConvert.DeserializeObject((string)Eval("AttributesJSON"))%>'>
                                                            <ItemTemplate>
                                                                <%# Eval("attributeName", "{0}")%> : <%# Eval("freeTextValue", "{0}")%>
                                                            </ItemTemplate>
                                                            <SeparatorTemplate>
                                                                <br />
                                                            </SeparatorTemplate>
                                                        </asp:Repeater>
                                                    </td>
                                                    <td style="padding: 5px"><%# Eval("Product.Price", "{0:0.##}") + " " + Common.GeneralUtilities.AppSettings("currency")%> </td>

                                                    <td>
                                                        <div class="qty-holder">
                                                            <%# Eval("Quantity", "{0}")%>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <span class="text-primary">
                                                            <%#String.Format("{0:N0}", ((decimal)Eval("Price") * (int)Eval("Quantity"))) + " " + Common.GeneralUtilities.AppSettings("currency") %>
                                                        </span>
                                                    </td>

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
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="Content_Script" runat="server">
</asp:Content>
