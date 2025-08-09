<%@ Page Title="" Language="C#" MasterPageFile="~/Admins/AdminMaster.Master" AutoEventWireup="true" CodeBehind="BrandList.aspx.cs" Inherits="BGBeauty_Website.Admins.Modules.BrandsProduct.BrandList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content_Title" runat="server">
    <h1><%= Page.Title %></h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content_Toolbar" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content_MapPath" runat="server">
    <ul class="breadcrumb">
        <li><a href="/">Home </a><i class="fa fa-circle"></i></li>
        <li>
            <a href="#">Catalog</a>
            <i class="fa fa-circle"></i>
        </li>
        <li class="active">
            <%= Page.Title %>
        </li>
    </ul>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Content_Note" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="Content_Main" runat="server">
    <div class="portlet light borderedv">
        <div class="portlet-title">
            <div class="caption font-dark">

                <span class="caption-subject bold uppercase"><%= Page.Title %></span>
            </div>
            <div class="tools">
                <a class="collapse" href="javascript:;"></a>
            </div>

        </div>

        <div class="table-toolbar hidden">
            <div class="row">
                <div class="col-md-12">
                    <div class="btn-group">
                        <a class="btn  btn-success btn-sm btn-block" href="/Admins/Modules/BrandsProduct/BrandAddEdit" aria-expanded="false">New Brand
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">

            <div class="col-md-12">
                <asp:Repeater ID="RepeaterTbl" runat="server" OnItemCommand="RepeaterTbl_ItemCommand">
                    <HeaderTemplate>
                        <table id="Tbl_UsersList" class="table table-striped table-bordered table-hover order-column">
                            <thead>
                                <th>ID</th>
                                <th>Name</th>
                                <th>E-Mail</th>
                                 <th style="width: 80px"><asp:LinkButton ID="Btn_SaveOrder" runat="server"  CommandName="SaveOrder" CausesValidation="False" OnClick="Btn_SaveOrder_Click1" CssClass="btn btn-sm btn-warning">
                                            <span class=""><i class="fa fa-save  font Fontsize_20"></i> Save Order</span>
                                        </asp:LinkButton></th>
                                <th class="text-center">Active</th>
                                <th class="text-center">Show On Home</th>
                                <th style="width: 80px"></th>
                            </thead>
                            <tbody>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr><%--Getname(Eval("Name", "{0}"), Eval("ID", "{0}"))--%>
                            <td><%# Eval("ID")%></td>
                            <td><%# Eval("Name", "{0}") %> <i class="fa fa-tr"></i></td>
                            <td><%# Eval("EMail","{0}")%></td>
                            <td class="text-center"><asp:TextBox ID="TxtOrderBy" runat="server" ClientIDMode="Static" CssClass="input-xs OrderBy "
                                                    Text='<%# Eval("DisplayOrder","{0}") %>'>
                                 </asp:TextBox>
                            </td>
                            <td class="text-center"> <asp:LinkButton ID="BtnActive" runat="server" CommandName="Active" CommandArgument='<%# Eval("ID", "{0}")%>' CausesValidation="False">
                                <%# (bool)Eval("Active") == true ? "<i class='fa fa-check true-icon text-success font Fontsize_20 fa-2x'>" : "<i class='fa fa-eye-slash font Fontsize_20 fa-2x'>"%> </i></asp:LinkButton></td>
                            <td class="text-center"><asp:LinkButton ID="BtnShowOnHome" runat="server" CommandName="ShowOnHome" CommandArgument='<%# Eval("ID", "{0}")%>' CausesValidation="False"><%# (bool)Eval("ShowOnHome") == true ? "<i class='fa fa-check true-icon text-success font Fontsize_20 fa-2x'>" : "<i class='fa fa-eye-slash font Fontsize_20 fa-2x'>"%></i></asp:LinkButton></td>

                            <td><a href='<%# "BrandAddEdit?id=" + Eval("ID", "{0}")%>' class="btn btn-primary">Edit</a></td>
                        </tr>
                        <div class="hidden">
                                <asp:HiddenField ID="HfBrandID" runat="server" Value='<%# Eval("ID","{0}") %>'></asp:HiddenField>
                                <asp:Label ID="LblUID" runat="server" Text='<%# Eval("ID", "{0}")%>' Visible="false"></asp:Label>
                                <asp:Label ID="PageName" runat="server" Text='' Visible="false"></asp:Label>
                                <asp:Label ID="PageTitle" runat="server" Text='' Visible="false"></asp:Label>

                         </div>
                    </ItemTemplate>
                    <FooterTemplate>
                        </tbody>
                        </table>
                    </FooterTemplate>
                </asp:Repeater>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="Content_Script" runat="server">
</asp:Content>
