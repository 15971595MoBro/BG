<%@ Page Title="Blog List" Language="C#" MasterPageFile="~/Admins/AdminMaster.Master" AutoEventWireup="true" CodeBehind="BlogList.aspx.cs" Inherits="BGBeautyProject_Website.Admins.Modules.BlogSection.BlogList" %>
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
        <li><a>Blogs</a><i class="fa fa-circle"></i></li>
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
                        <a href="BlogAddEdit" class="btn btn-sm btn-success">
                            <i class="fa fa-plus-circle "></i>New Blog
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
                            <th>Name</th>
<%--                            <th style="width: 50px" class="text-center">Time</th>--%>
                            <th style="width: 50px" class="text-center">Video</th>
                            <th style="width: 120px" class="text-center">Photo Gallery</th>
                            <%--<th style="width: 50px" class="text-center">Prices</th>
                            <th style="width: 50px" class="text-center">Players</th>--%>
                            <th style="width: 50px" class="text-center">Edit</th>
                            <th style="width: 50px" class="text-center ">Delete</th>

                        </tr>
                    </thead>

                    <tbody>

                        <asp:Repeater ID="Repeater_Blogs" runat="server" OnItemCommand="Repeater_Blogs_ItemCommand">
                            <ItemTemplate>
                                <tr>
                                    <td>
                                        <asp:Label ID="LblName" runat="server" Text='<%#Eval("name", "{0}")%>'>
                                        </asp:Label>
                                        <asp:HiddenField ID="HF_UID" runat="server" Value='<%# Eval("BlogUID", "{0}")%>' />

                                    </td>
                                  <%--  <td class="text-center">
                                        <a href='EventTimeList.aspx?EventID=<%#Eval("EventUID")%>'>
                                            <i class="fa fa-clock-o fa-2x"></i></a>
                                        
                                    </td>--%>
                                    <td class="text-center">
                                         <a onclick="window_open('BlogVideoList.aspx?BlogID=<%#Eval("BlogUID")%>' ,800,500 )" href="#EventVideo">
                                            <i class="fa fa-video-camera fa-2x"></i></a>
                                   
                                    </td>
                                    <td class="text-center">
                                        <a href='BlogPhotoGallery.aspx?BlogID=<%#Eval("BlogUID")%>'>
                                            <i class="fa fa-picture-o fa-2x"></i></a>
                                        
                                    </td>
                                    <%--<td class="text-center">
                                        <a onclick="window_open('EventPricesList.aspx?EventID=<%#Eval("EventUID")%>' ,800,500 )" href="#EventPrices">
                                            <i class="fa fa-dollar fa-2x"></i></a>
                                    </td>
                                    <td class="text-center">
                                        <a onclick="window_open('EventPlayersList.aspx?EventID=<%#Eval("EventUID")%>' ,800,500 )" href="#EventPlayers">
                                            <i class="fa fa-user-circle-o fa-2x"></i></a>

                                    </td>--%>
                                    <td class="text-center">

                                        <a href='BlogAddEdit.aspx?BlogUID=<%#Eval("BlogUID")%>'>
                                            <i class="fa fa-edit fa-2x"></i></a>
                                    </td>
                                    <td class="text-center">
                                        <asp:LinkButton ID="BtnDelete" runat="server" CausesValidation="false" CommandArgument='<%# Eval("BlogUID", "{0}")%>'
                                            CommandName="Delete" OnClientClick="javascript:return confirm('Are you sure do you want to Delete this Blog ? ')"
                                            ToolTip="Delete"> <i class="fa fa-trash-o text-danger  fa-2x" ></i> </asp:LinkButton>
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
