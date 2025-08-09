<%@ Page Title="" Language="C#" MasterPageFile="~/Admins/AdminMaster.Master" AutoEventWireup="true" CodeBehind="BlogVideoaddedit.aspx.cs" Inherits="BGBeautyProject_Website.Admins.Modules.BlogSection.BlogVideoaddedit" %>
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
      <div class="row">
        <div class="col-md-12">
            <section class="portlet light bordered">
                <div class="portlet-title">
                    <div class="caption font-dark">
                        <i class="icon-cursor  hide"></i>
                        <span class="caption-subject  bold uppercase"><%: Page.Title %></span>
                    </div>
                    <div class="tools">
                        <a class="collapse" href="javascript:;"></a>
                    </div>
                </div>

                <div class="portlet-body form">

                    <div class="panel-body">
                        

                    <div class="col-md-4">
                        <div class="form-group">
                            <label>Name</label>
                            <asp:TextBox CssClass="form-control" runat="server" ID="txtTitle" MaxLength="150" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Title is required" ControlToValidate="txtTitle"
                                SetFocusOnError="true" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                    </div>


                    <div class="col-md-8">
                        <div class="form-group">
                            <label>Brief</label>
                            <asp:TextBox CssClass="form-control" runat="server" ID="txtBrief" MaxLength="150" />
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="form-group">
                            <label class="">Active</label>
                            <asp:DropDownList AutoPostBack="true" ID="DdlIsActive" runat="server" CssClass="form-control">
                                <asp:ListItem Text="Yes" Value="True"></asp:ListItem>
                                <asp:ListItem Text="No" Value="False"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>

                     <div class="col-md-4">
                        <div class="form-group">
                            <label class="">ShowInHome</label>
                            <asp:DropDownList AutoPostBack="true" ID="DdlShowInHome" runat="server" CssClass="form-control">
                                <asp:ListItem Text="Yes" Value="True"></asp:ListItem>
                                <asp:ListItem Text="No" Value="False"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                        
                    <div class=" col-md-8" id="DivVideoURL" runat="server">
                        <label>Youtube Video Link</label>
                        <asp:TextBox ID="txtvideoURL" runat="server" CssClass="form-control"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Title is required" ControlToValidate="txtvideoURL"
                                SetFocusOnError="true" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>

                        <div class="form-group pull-in clearfix">
                        </div>

                        <div class="col-sm-12 text-center">
                            <div class=" portlet-input margin-bottom-20">
                                <asp:Button ID="BtnSave" runat="server" CommandArgument="EditInfo" CommandName="Update" OnClick="BtnSave_Click" CssClass="btn btn-s-md btn-info btn-rounded" Text="Submit" />
                                &nbsp;
                              <a class="btn btn-s-md btn-default btn-rounded" href="BlogVideoList.aspx<%: "?BlogID="+ Request.QueryString["BlogID"] %>">Cancel</a>

                            </div>
                        </div>

                    </div>
                </div>
            </section>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="Content_Script" runat="server">
</asp:Content>
