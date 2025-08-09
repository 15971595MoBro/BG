<%@ Page Title="Social Media Links" Language="C#" MasterPageFile="~/Admins/AdminMaster.Master" AutoEventWireup="true" CodeBehind="SocialMediaList.aspx.cs" Inherits="BGBeauty_Website.Admins.Modules.SocialMedia.SocialMediaList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="Content_MapPath">
    <ul class="breadcrumb">
        <li><a href="#">Content Management</a><i class="fa fa-circle"></i></li>
        <li><a>Social Media</a><i class="fa fa-circle"></i></li>
        <li class="active"><%:Title %></li>
    </ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content_Title" runat="server">
    <h1><%= Page.Title %></h1>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content_Main" runat="server">

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
                        <a href="SocialMediaAddEdit" class="btn btn-sm btn-success ">
                            <i class="fa fa-plus-circle "></i>New social media
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
                            <th>Social Name</th>
                            <th style="width: 60px" class="text-center">Social Icon</th>
                            <th>Social URL</th>
                            <th style="width: 50px" class="text-center">Publish</th>
                            <th style="width: 50px" class="text-center">Edit</th>
                            <th style="width: 50px" class="text-center">Delete</th>
                            <th style="width: 50px" class="text-center">
                                <asp:LinkButton ID="Btn_SaveOrder" runat="server" CommandName="SaveOrder" CausesValidation="False" OnClick="Btn_SaveOrder_Click" CssClass="btn btn-sm btn-warning">
                                            <span class=""><i class="fa fa-save  font Fontsize_20"></i> Save Order</span>
                                </asp:LinkButton>
                            </th>

                        </tr>
                    </thead>

                    <tbody>

                        <asp:Repeater ID="Repeater_SocialMedia" runat="server" OnItemCommand="Repeater_SocialMedia_ItemCommand">
                            <ItemTemplate>
                                <tr>
                                    <td>
                                        <asp:Label ID="LblSocialName" runat="server" Text='<%#Eval("SocialName", "{0}")%>'>
                                        </asp:Label>
                                        <asp:HiddenField ID="HF_UID" runat="server" Value='<%# Eval("SocialID", "{0}")%>' />

                                    </td>
                                    <td class="text-center">
                                        <i class='<%# "fa  fa-" + Eval("SocialName", "{0}").ToLower()%>'></i>
                                    </td>
                                    <td>
                                        <asp:HyperLink ID="HlSocialURL" runat="server"
                                            NavigateUrl='<%# Eval("SocialURL", "{0}")%>' Target="_blank"
                                            Text='<%# Eval("SocialURL", "{0}")%>'></asp:HyperLink>
                                    </td>
                                    <td class="text-center">
                                        <asp:LinkButton ID="BtnPublish" runat="server" CommandName="Publish" CommandArgument='<%# Eval("SocialID", "{0}")%>' CausesValidation="False">
                                                      <%# (bool)Eval("Publish") == true ? "<i class='fa fa-eye text-success font Fontsize_20 '>": "<i class='fa fa-eye-slash text-default font Fontsize_20 '>" %> </i>
                                        </asp:LinkButton>

                                    </td>
                                    <td class="text-center">
                                        <a href='<%# "SocialMediaAddEdit.aspx?ID=" + Eval("SocialID", "{0}")%>'>
                                            <i class="fa fa-edit  font Fontsize_20"></i></a>
                                    </td>
                                    <td class="text-center">
                                        <asp:LinkButton ID="BtnDelete" runat="server" CausesValidation="false" CommandArgument='<%# Eval("SocialID", "{0}")%>'
                                            CommandName="Delete" OnClientClick="javascript:return confirm('Are you sure do you want to Delete this Social Link ? ')"
                                            ToolTip="Delete"> <i class="fa fa-trash-o text-danger  font Fontsize_20" ></i> </asp:LinkButton>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TxtOrderBy" runat="server" ClientIDMode="Static" CssClass="input-xs OrderBy "
                                            Text='<%# Eval("OrderBy","{0}") %>'>
                                        </asp:TextBox>
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
