<%@ Page Title="Manage Categories" Language="C#" MasterPageFile="~/Admins/AdminMaster.Master" AutoEventWireup="true" CodeBehind="CategoryList.aspx.cs" Inherits="BGBeauty_Website.Admins.Modules.Categories.CategoryList" %>

<%--<%@ Import Namespace="BGBeauty_Lib.Common" %>--%>

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

        <div class="table-toolbar">
            <div class="row">
                <div class="col-md-12">
                    <div class="btn-group">
                        <a class="btn  btn-success btn-sm btn-block" href="/Admins/Modules/Categories/CategoryAddEdit" aria-expanded="false">New Category
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">

            <div class="col-md-12">
                <table id="Tbl_UsersList" class="table table-striped table-bordered table-hover order-column">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th class="text-center">Publised</th>
                            <th class="text-center">Show On Home</th>
                            <th class="text-center">Top Menu</th>
                            <th style="width: 80px"><asp:LinkButton ID="Btn_SaveOrder" runat="server"  CommandName="SaveOrder" CausesValidation="False" OnClick="Btn_SaveOrder_Click" CssClass="btn btn-sm btn-warning">
                                            <span class=""><i class="fa fa-save  font Fontsize_20"></i> Save Order</span>
                                        </asp:LinkButton></th>
                            <%--<th>Preview</th>--%>
                            <th style="width: 80px"></th>
                            <th style="width: 100px"></th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="RepeaterTbl" runat="server" OnItemCommand="RepeaterTbl_ItemCommand1">
                            <ItemTemplate>
                                <tr>
                                    <%--Getname(Eval("Name", "{0}"), Eval("ID", "{0}"))--%>
                                    <td><%# Eval("Id")%></td>
                                    <td><%# Eval("CategoryName", "{0}") %> <i class="fa fa-tr"></i></td>
                                    <td class="text-center">
                                        <asp:LinkButton ID="BtnPublish" runat="server" CommandName="Publish" CommandArgument='<%# Eval("Id", "{0}")%>' CausesValidation="False">
                                            <%# (bool)(Eval("Published")) == true ? "<i class='fa fa-check true-icon text-success font Fontsize_20 fa-2x'>" : "<i class='fa fa-eye-slash font Fontsize_20 fa-2x'>"%></i></asp:LinkButton>
                                    </td>
                                    <td class="text-center">
                                        <asp:LinkButton ID="BtnShowOnHomePage" runat="server" CommandName="ShowOnHomePage" CommandArgument='<%# Eval("Id", "{0}")%>' CausesValidation="False">
                                            <%# (bool)(Eval("ShowOnHomePage")) == true ? "<i class='fa fa-check true-icon text-success font Fontsize_20 fa-2x'>" : "<i class='fa fa-eye-slash font Fontsize_20 fa-2x'>"%></i></asp:LinkButton>
                                    </td>
                                    <td class="text-center">
                                        <asp:LinkButton ID="BtnIncludeInTopMenu" runat="server" CommandName="IncludeInTopMenu" CommandArgument='<%# Eval("Id", "{0}")%>' CausesValidation="False"><%# (bool)(Eval("IncludeInTopMenu")) == true ? "<i class='fa fa-check true-icon text-success font Fontsize_20 fa-2x'>" : "<i class='fa fa-eye-slash font Fontsize_20 fa-2x'>"%></i></asp:LinkButton>
                                    </td>
                                    <td>
                                         <asp:TextBox ID="TxtOrderBy" runat="server" ClientIDMode="Static" CssClass="input-xs OrderBy "
                                                    Text='<%# Eval("DisplayOrder","{0}") %>'>
                                                </asp:TextBox>
                                    </td>
                                  <%--  <td class="text-center">
                                        <a href='<%#  "/en/catalog/CategoryProducts/" + Eval("Id", "{0}") + "/" + BGBeauty_Lib.Common.GeneralUtilities.GetUniqueName(Eval("Name", "{0}")) %>' target="_blank"><i class="fa fa-search fa-2x "></i></a>
                                    </td>--%>
                                    <td><a href='<%# "CategoryAddEdit?id=" + Eval("Id", "{0}")%>' class="btn btn-primary">Edit</a></td>
                                    <td>
                                        <asp:LinkButton runat="server" CommandName="Delete" CommandArgument='<%# Eval("Id" , "{0}")%>' class="btn btn-danger" OnClientClick="javascript:return confirm('Are you sure do you want to Delete this category? ')"
                                            >Delete</asp:LinkButton></td>
                                </tr>
                                <div class="hidden">
                                            <asp:HiddenField ID="HfCategoryID" runat="server" Value='<%# Eval("Id","{0}") %>'></asp:HiddenField>
                                            <asp:Label ID="LblUID" runat="server" Text='<%# Eval("Id", "{0}")%>' Visible="false"></asp:Label>
                                            <asp:Label ID="PageName" runat="server" Text='' Visible="false"></asp:Label>
                                            <asp:Label ID="PageTitle" runat="server" Text='' Visible="false"></asp:Label>

                                        </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="Content_Script" runat="server">
</asp:Content>
