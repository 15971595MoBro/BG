<%@ Page Title="" Language="C#" MasterPageFile="~/Admins/AdminMaster.Master" AutoEventWireup="true" CodeBehind="BlogVideoList.aspx.cs" Inherits="BGBeautyProject_Website.Admins.Modules.BlogSection.BlogVideoList" %>
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
                        <a href="BlogVideoAddEdit?BlogID=<%=Request.QueryString["BlogID"] %>" class="btn btn-sm btn-success">
                            <i class="fa fa-plus-circle "></i>Add New Video
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
                            <th>Title</th>
                            <th>Edit</th>
                            <th style="width: 50px" class="text-center ">Delete</th>

                        </tr>
                    </thead>

                    <tbody>
                        <asp:Repeater ID="RepeaterBlogVideos" runat="server" OnItemCommand="RepeaterBlogVideos_ItemCommand">
                            <ItemTemplate>
                                <tr>
                                    <td>
                                        <%# Eval("Title")%>
                                    </td>

                                    <td>
                                        <a href=' <%# "BlogVideoaddedit.aspx?EventID=" + Request.QueryString["BlogID"] + "&ID=" + Eval("VideoUID", "{0}")%>'>
                                            <%--<img alt="Edit" src="Images/Edit1.png" width="30" border="0">--%>
                                            <i class="fa fa-edit fa-2x text-sucess"></i>
                                        </a>
                                    </td>
                                    <td>
                                        <asp:LinkButton ID="BtnDelete" runat="server" CommandName="Delete" CommandArgument='<%#Eval("VideoUID")%>' OnClientClick=" return confirm('Are you sure you want to delete?');">
                                        <i class="fa fa-trash fa-2x text-danger"></i>
                                        </asp:LinkButton>
                                    </td>
                                </tr>
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
