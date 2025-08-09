<%@ Page Title="" Language="C#" MasterPageFile="~/Admins/AdminMaster.Master" AutoEventWireup="true" CodeBehind="ProductRelatedProducts.aspx.cs" Inherits="BGBeauty_Website.Admins.Modules.ProductRelatedProduct.ProductRelatedProducts" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content_Title" runat="server">
        <h1><%: Page.Title %></h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content_Toolbar" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content_MapPath" runat="server">
    <ul class="breadcrumb no-border no-radius b-b b-light pull-in">
        <li><i class="fa fa-home"></i>Home</li>
        <li>Catalog</li>
        <li class="active">Related Products</li>
    </ul>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Content_Note" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="Content_Main" runat="server">
     <telerik:RadScriptManager ID="RadScriptManager1" runat="server">
    </telerik:RadScriptManager>
    <telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" runat="server">
    </telerik:RadAjaxLoadingPanel>
    <telerik:RadAjaxManager ID="RadAjaxManager1" runat="server" DefaultLoadingPanelID="RadAjaxLoadingPanel1">
        <AjaxSettings>
            <telerik:AjaxSetting AjaxControlID="RadAjaxManager1">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="RadGrid1" />
                    <telerik:AjaxUpdatedControl ControlID="RadGrid2" />
                </UpdatedControls>
            </telerik:AjaxSetting>

            <telerik:AjaxSetting AjaxControlID="Panel1">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="Panel1" />
                </UpdatedControls>
            </telerik:AjaxSetting>

        </AjaxSettings>
    </telerik:RadAjaxManager>
    <asp:DropDownList ID="ddlLanguage" runat="server" AutoPostBack="True" Width="100px" Visible="False">
    </asp:DropDownList>
    <telerik:RadAjaxPanel ID="RadAjaxPanel1" runat="server" Width="100%" HorizontalAlign="NotSet" LoadingPanelID="RadAjaxLoadingPanel1">
    </telerik:RadAjaxPanel>
    <div class="row">
        <div class="form-group">

            <div class="col-sm-4">
                <div>
                    Category  
                <asp:DropDownList ID="ddlCategory" runat="server" AutoPostBack="True" CssClass="input-sm form-control input-s-sm inline v-middle"
                    Width="180px">
                </asp:DropDownList>
                </div>
            </div>

        </div>
    </div>

    <div class="row hidden">
        <div class="form-group">
            <div class="col-sm-6">
            </div>
            <div class="col-sm-3">
                <div>
                    Year&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="ddlYears" runat="server" AutoPostBack="True" CssClass="input-sm form-control input-s-sm inline v-middle"
                    Width="80px">
                </asp:DropDownList>
                </div>
            </div>
            <div class="col-sm-3">
                <div>
                    Month&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <asp:DropDownList ID="ddlMonths" runat="server" AutoPostBack="True" CssClass="input-sm form-control input-s-sm inline v-middle"
                    Width="110px">
                    <asp:ListItem Value="" Selected="True">All Monthes</asp:ListItem>
                    <asp:ListItem Value="1">1</asp:ListItem>
                    <asp:ListItem Value="2">2</asp:ListItem>
                    <asp:ListItem Value="3">3</asp:ListItem>
                    <asp:ListItem Value="4">4</asp:ListItem>
                    <asp:ListItem Value="5">5</asp:ListItem>
                    <asp:ListItem Value="6">6</asp:ListItem>
                    <asp:ListItem Value="7">7</asp:ListItem>
                    <asp:ListItem Value="8">8</asp:ListItem>
                    <asp:ListItem Value="9">9</asp:ListItem>
                    <asp:ListItem Value="10">10</asp:ListItem>
                    <asp:ListItem Value="11">11</asp:ListItem>
                    <asp:ListItem Value="12">12</asp:ListItem>
                </asp:DropDownList>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="form-group">
            <div class="col-sm-12">
                <section class="panel panel-default">
                    <div class="panel-heading">
                        List of Products 
                    </div>

                    <div id="collapseTwo" class="panel-collapse in">
                        <table id="Tbl_ProductsList" class="table table-striped table-bordered table-hover order-column ">
                            <thead>
                                <tr>
                                    <th style="width: 50px">Picture
                                    </th>
                                    <th>Name
                                    </th>
                                    <th>Stock Quantity
                                    </th>
                                    <th>Published</th>
                                    <th>Add to related</th>
                                </tr>
                            </thead>
                            <tbody id="Tbody_ProductsList">
                                <asp:Repeater ID="Repeater_ProductsList" runat="server" OnItemCommand="Repeater_ProductsList_ItemCommand">
                                    <ItemTemplate>
                                        <tr>
                                            <th>
                                                <img src='<%# Common.GeneralUtilities.AppSettings("ProductsImagesUploadPath")+"/Files/Products"  + "/" + Eval("ID", "{0}") + "/" + Eval("MainImage", "{0}")%>' class='<%# Eval("MainImage", "{0}") == "" ? "hidden" : ""%>' height="60" />
                                            </th>
                                            <th>
                                                <%# Eval("ProductName", "{0}")%>
                                            </th>
                                            <th>
                                                <%# Eval("StockQuantity", "{0}")%>
                                            </th>
                                            <td><%# (bool)Eval("Published") == true ? "<i class='fa fa-check true-icon text-success '>" : "<i class='fa fa-eye-slash'>"%></td>
                                            <th>

                                                <asp:LinkButton ID="BtnAdd" runat="server" Width="24px"
                                                    ToolTip="Add to related" CommandName="Select" CommandArgument='<%# Eval("ID","{0}")%>' CausesValidation="false">
                                            <i class="fa fa-plus fa-2x green" title="Add to related"></i>
                                                </asp:LinkButton>

                                            </th>
                                        </tr>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </tbody>
                        </table>

                        <%--<telerik:RadGrid ID="RadGridProductsList" runat="server" AutoGenerateColumns="False"
                            EnableModelValidation="True" Width="100%" BorderWidth="0px" AllowPaging="True" AllowFilteringByColumn="false"
                            EmptyDataText="No Products available" SkinID="Default">
                            <ClientSettings EnableRowHoverStyle="True">
                                <Selecting AllowRowSelect="True" />
                            </ClientSettings>
                            <MasterTableView>
                                <Columns>
                                    <telerik:GridTemplateColumn HeaderText="Package title"
                                        SortExpression="PackageTitle" FilterControlWidth="100%" AutoPostBackOnFilter="true" DataField="PackageTitle" UniqueName="PackageTitle" DataType="System.String" ShowFilterIcon="false" CurrentFilterFunction="Contains" AllowFiltering="true">
                                        <ItemTemplate>
                                            <asp:Label ID="LblTitle" runat="server" Text='<%#Eval("PackageTitle","{0}")%>'></asp:Label>
                                        </ItemTemplate>
                                        <HeaderStyle HorizontalAlign="Right" Width="250" />
                                        <ItemStyle HorizontalAlign="Right" />
                                    </telerik:GridTemplateColumn>
                              
                                    <telerik:GridTemplateColumn HeaderText="Preview">
                                        <ItemTemplate>
                                            <asp:HyperLink ID="HLPreview" runat="server" Target="_blank"
                                                NavigateUrl='<%# GeneralUtilities.AppSettings("WebsiteDomain") +"/"+IIf(ddlLanguage.SelectedValue="1","En","Ar") + "/Packages/" + Eval("Package_CategoryName_Unique", "{0}") + "/" + Eval("PackageUniqueName", "{0}")%>' ToolTip="Preview">
                                            <i class="fa fa-search fa-2x blue" title="Preview"></i>
                                            </asp:HyperLink>

                                        </ItemTemplate>
                                        <HeaderStyle Width="50" HorizontalAlign="Center" />
                                        <ItemStyle HorizontalAlign="Center" />
                                    </telerik:GridTemplateColumn>
                                    <telerik:GridTemplateColumn HeaderText="Add to related">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="BtnAdd" ImageUrl="/images/WPM_AddPage.png" runat="server" Width="24px"
                                                ToolTip="Add to related" CommandName="Select" CommandArgument='<%# Eval("PackageUID","{0}")%>' CausesValidation="false">
                                            <i class="fa fa-plus fa-2x green" title="Add to related"></i>
                                            </asp:LinkButton>

                                        </ItemTemplate>
                                        <HeaderStyle Width="50" HorizontalAlign="Center" />
                                        <ItemStyle HorizontalAlign="Center" />
                                    </telerik:GridTemplateColumn>
                                </Columns>
                            </MasterTableView>

                        </telerik:RadGrid>--%>
                    </div>

                </section>

            </div>
        </div>
    </div>
    <div class="row">

        <div class="col-sm-12">
            <section class="panel panel-default">
                <div class="panel-heading">
                    Related Products
                </div>

                <div id="collapseOne" class="panel-collapse in">
                    <table id="Tbl_RelatedProductsList" class="table table-striped table-bordered table-hover order-column ">
                        <thead>
                            <tr>
                                <th style="width: 50px">Picture
                                </th>
                                <th>Name
                                </th>
                                <th>Stock Quantity
                                </th>
                                <th>Published</th>
                                <th>Add to related</th>
                            </tr>
                        </thead>
                        <tbody id="Tbody_RelatedProductsList">
                            <asp:Repeater ID="Repeater_RelatedProductsList" runat="server" OnItemCommand="Repeater_RelatedProductsList_ItemCommand">
                                <ItemTemplate>
                                    <tr>
                                        <th>
                                            <img src='<%# Common.GeneralUtilities.AppSettings("ProductsImagesUploadPath")+"/Files/Products" + "/" + Eval("ID", "{0}") + "/" + Eval("MainImage", "{0}")%>' class='<%# Eval("MainImage", "{0}")==""? "hidden" : ""%>' height="60" />
                                        </th>
                                        <th>
                                            <%# Eval("ProductName", "{0}")%>
                                        </th>
                                        <th>
                                            <%# Eval("StockQuantity", "{0}")%>
                                        </th>
                                        <td><%# (bool)Eval("Published") == true ? "<i class='fa fa-check true-icon text-success '>" : "<i class='fa fa-eye-slash'>"%></td>
                                        <th>
                                            <asp:LinkButton ID="BtnDelete" runat="server" CausesValidation="false" CommandArgument='<%# Eval("Id", "{0}")%>' ToolTip="Remove"
                                                CommandName="Delete" OnClientClick="javascript:return confirm('Are you sure do you want to remove this artical? ')"> <i class="fa fa-trash-o text-danger fa-2x" ></i> </asp:LinkButton>

                                        </th>
                                    </tr>
                                </ItemTemplate>
                            </asp:Repeater>
                        </tbody>
                    </table>
                    <%--<telerik:RadGrid ID="RadGridRelatedPackages" runat="server" AutoGenerateColumns="False"
                        EnableModelValidation="True" Width="100%" BorderWidth="0px" AllowPaging="True"
                        EmptyDataText="No related Packages available" SkinID="Default">
                        <ClientSettings EnableRowHoverStyle="True">
                            <Selecting AllowRowSelect="True" />
                        </ClientSettings>
                        <MasterTableView>
                            <Columns>
                                <telerik:GridTemplateColumn HeaderText="Package title" HeaderStyle-HorizontalAlign="Left">
                                    <ItemTemplate>
                                        <asp:Label ID="LblTitle" runat="server" Text='<%#Eval("PackageTitleRelated","{0}")%>'></asp:Label>
                                    </ItemTemplate>
                                    <HeaderStyle HorizontalAlign="Left"></HeaderStyle>
                                </telerik:GridTemplateColumn>
                                <telerik:GridTemplateColumn HeaderText="Preview">
                                    <ItemTemplate>

                                        <asp:HyperLink ID="HLPreview" runat="server" Target="_blank"
                                            NavigateUrl='<%# GeneralUtilities.AppSettings("WebsiteDomain") + "/Packages/" + Eval("Package_CategoryName_UniqueRelated", "{0}") + "/" + Eval("PackageUniqueNameRelated", "{0}")%>' ToolTip="Preview">
                                            <i class="fa fa-search fa-2x blue" title="Preview"></i>
                                        </asp:HyperLink>
                                    </ItemTemplate>
                                    <HeaderStyle Width="50" HorizontalAlign="Center" />
                                    <ItemStyle HorizontalAlign="Center" />
                                </telerik:GridTemplateColumn>
                                <telerik:GridTemplateColumn HeaderText="Remove">
                                    <ItemTemplate>

                                        <asp:LinkButton ID="BtnDelete" runat="server" CausesValidation="false" CommandArgument='<%# Eval("PackageIDRelated", "{0}")%>' ToolTip="Remove"
                                            CommandName="Delete" ImageUrl="/admin/Images/wpm_Delete.gif" OnClientClick="javascript:return confirm('Are you sure do you want to remove this artical? ')"> <i class="fa fa-trash-o text-danger fa-2x" ></i> </asp:LinkButton>
                                    </ItemTemplate>
                                    <HeaderStyle Width="50" HorizontalAlign="Center" />
                                    <ItemStyle HorizontalAlign="Center" />
                                </telerik:GridTemplateColumn>
                            </Columns>
                        </MasterTableView>

                    </telerik:RadGrid>--%>
                </div>

            </section>


        </div>


    </div>


    <asp:HiddenField ID="hf_ProductID" runat="server" />
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="Content_Script" runat="server">
</asp:Content>
