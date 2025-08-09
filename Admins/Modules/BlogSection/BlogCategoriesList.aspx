<%@ Page Title="Category List" Language="C#" MasterPageFile="~/Admins/AdminMaster.Master" AutoEventWireup="true" CodeBehind="BlogCategoriesList.aspx.cs" Inherits="BGBeautyProject_Website.Admins.Modules.BlogSection.BlogCategoriesList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content_Title" runat="server">
        <h1><%= Page.Title %></h1>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content_Toolbar" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content_MapPath" runat="server">
      <ul class="breadcrumb">
        <li><a href="#">Home</a><i class="fa fa-circle"></i></li>
        <li><a>Category</a><i class="fa fa-circle"></i></li>
        <li class="active"><%:Title %></li>
    </ul>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Content_Note" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="Content_Main" runat="server">
    
     <div class="row fontawesome-icon-list">

        <div class="col-md-2">
            <div class="form-group">
            </div>
        </div>

        <div class="col-md-4">
            <div class="form-group"></div>
        </div>
        <div class="col-md-6">
            <div class="form-group"></div>
        </div>

    </div>

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
                        <a href="/Admins/Modules/BlogSection/BlogCategoriesAddEdit" class="btn btn-sm btn-success">
                            <i class="fa fa-plus-circle "></i>New Category
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">

            <div class="col-md-12">
                <table id="MenuPages-table" class="table table-striped table-bordered table-hover">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th style="width: 80px" class="text-center">Edit</th>
                            <th style="width: 80px" class="text-center ">Delete</th>
                            <th style="width: 80px" class="text-center ">  
                                <asp:LinkButton ID="Btn_SaveOrder" runat="server" CommandName="SaveOrder" CausesValidation="False" OnClick="Btn_SaveOrder_Click" CssClass="btn btn-sm btn-warning">
                                            <span class=""><i class="fa fa-save  font Fontsize_20"></i> Save Order</span>
                                </asp:LinkButton>
                            </th>

                        </tr>
                    </thead>

                    <tbody>

                        <asp:Repeater ID="Repeater_Categories" runat="server" OnItemCommand="Repeater_Categories_ItemCommand">
                            <ItemTemplate>
                                <tr>
                                    <td><%#Eval("ID", "{0}")%>
                                        <asp:HiddenField ID="HF_UID" runat="server" Value='<%# Eval("ID", "{0}")%>' />
                                    </td>
                                    <td>
                                        <%#Eval("CategoryName", "{0}")%>
                                    </td>
                                    <td class="text-center">
                                      
                                                <a href='CategoriesAddEdit.aspx?CategoryUID=<%#Eval("ID")%>'>
                                                    <i width="30" border="0" class="fa fa-edit fa-2x"></i>
                                                </a>

                                    </td>
                                    <td class="text-center">
                                        <asp:LinkButton ID="BtnDelete" runat="server" CausesValidation="false" CommandArgument='<%# Eval("ID", "{0}")%>'
                                            CommandName="Delete" OnClientClick="javascript:return confirm('Are you sure do you want to Delete this Category ? ')"
                                            ToolTip="Delete" Visible="true"> <i class="fa fa-trash-o text-danger fa-2x  font Fontsize_20" ></i> </asp:LinkButton>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TxtOrderBy" runat="server" ClientIDMode="Static" CssClass="input-xs OrderBy "
                                                    Text='<%# Eval("DisplayOrder","{0}") %>'>
                                         </asp:TextBox>
                                    </td>
                                    
                                </tr>
                                <div class="hidden">
                                      <asp:Label ID="LblUID" runat="server" Text='<%# Eval("ID","{0}") %>' Visible="false"></asp:Label>
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
