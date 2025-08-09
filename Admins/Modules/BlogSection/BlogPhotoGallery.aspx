<%@ Page Title="Photos List" Language="C#" MasterPageFile="~/Admins/AdminMaster.Master" AutoEventWireup="true" CodeBehind="BlogPhotoGallery.aspx.cs" Inherits="BGBeautyProject_Website.Admins.Modules.BlogSection.BlogPhotoGallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content_Title" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content_Toolbar" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content_MapPath" runat="server">
    <ul class="breadcrumb">
        <li><a href="#">Home</a><i class="fa fa-circle"></i></li>
        <li><a>PhotoGallary</a><i class="fa fa-circle"></i></li>
        <li class="active"><%:Title %></li>
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
                        <a href="/Admins/Modules/BlogSection/BlogPhotoGalleryAddEdit?BlogID=<%= Hf_Blog_ID.Value %>" class="btn btn-sm btn-success">
                            <i class="fa fa-plus-circle "></i>New Photo
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
                            <th>Edit</th>
                            <th>Delete</th>
                            <th style="width:60px;">
                                <asp:LinkButton ID="Btn_SaveOrder" runat="server" CommandName="SaveOrder" CausesValidation="False" OnClick="Btn_SaveOrder_Click" CssClass="btn btn-sm btn-warning">
                                            <span class=""><i class="fa fa-save  font Fontsize_20"></i> Save Order</span>
                                </asp:LinkButton>
                            </th>

                            
                        </tr>
                    </thead>

                    <tbody>
                        <asp:Repeater ID="RepeaterBlogPhotos" runat="server" OnItemCommand="RepeaterBlogPhotos_ItemCommand1">
                            <ItemTemplate>
                                <tr>
                                    <td>
                                        <%#Eval("PhotoID")%>      
                                    </td>
                                    <td>
                                        <%# Eval("Name", "{0}") %>
                                    </td>

                                    <td>
                                        <asp:Panel ID="PanelEditInfo1" runat="server">
                                                    <a class="GridCommand_a" href='<%# "BlogPhotoGalleryAddEdit.aspx?PhotoID=" + Eval("PhotoID", "{0}")%>'>
                                                        <i class="fa fa-info-circle fa-2x" title="Edit Photo info"></i>
                                                    </a>
                                         </asp:Panel>
                                    </td>
                                    <td>
                                         <asp:LinkButton ID="BtnDelete" runat="server" CausesValidation="false" CommandArgument='<%# Eval("PhotoID", "{0}")%>'
                                                CommandName="Delete" ImageUrl="/Admins/Images/wpm_Delete.gif" OnClientClick="javascript:return confirm('Are you sure do you want to Delete this Photo ? ')"
                                                ToolTip="Delete"> <i class="fa fa-trash-o fa-2x text-danger " ></i> </asp:LinkButton>
                                    </td>
                                    <td>
                                         <asp:TextBox ID="TxtOrderBy" runat="server" ClientIDMode="Static" CssClass="input-xs OrderBy " Text='<%# Eval("DisplayInOrder", "{0}") %>' ></asp:TextBox>

                                    </td>
                                </tr>
                                <div class="hidden">
                                      <asp:Label ID="LblUID" runat="server" Text='<%# Eval("PhotoID","{0}") %>' Visible="false"></asp:Label>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>

                    </tbody>
                </table>




            </div>
        </div>

    </div>
    <asp:HiddenField  ID="Hf_Blog_ID" runat="server" />

</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="Content_Script" runat="server">
        <script type="text/javascript">

        function checkDelete() {
            return confirm("Are you sure you want to delete?");
        }
        </script>
</asp:Content>
