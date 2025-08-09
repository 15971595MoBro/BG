<%@ Page Title="" Language="C#" MasterPageFile="~/Admins/SecurityMaster.Master" AutoEventWireup="true" CodeBehind="RolesAddEdit.aspx.cs" Inherits="BGBeauty_Website.Admins.Modules.Security.RolesAddEdit" %>

<%@ Register Src="~/Admins/UserControls/Security/SecurityMenu.ascx" TagPrefix="uc1" TagName="SecurityMenu" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="Content_Title" runat="server">
      <h1><%= Page.Title %></h1>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content_MapPath" runat="server">
    <ul class="breadcrumb">
    <li><a href="/"> Home </a>  <i class="fa fa-circle"></i></li>
    <li>
        
        <a href="#">Security</a>
          <i class="fa fa-circle"></i>
    </li>
    <li>
      
        <a href="/Admins/Modules/Security/RolesList">Roles List</a>
          <i class="fa fa-circle"></i>
    </li>
    <li class="active">
        <%= Page.Title %>
    </li>
        </ul>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="Content_Main" runat="server">
    <div class="row">
        <div class="col-sm-12">
            <div class="portlet light bordered ">
                <div class="portlet-title">
                    <div class="caption font-dark">
                        <i class="icon-cursor  hide"></i>
                        <span class="caption-subject  bold uppercase"><%= Page.Title %></span>
                    </div>
                    <div class="tools">
                        <a class="collapse" href="javascript:;"></a>
                    </div>
                </div>
                <div class="portlet-body form">
                    <div class="form-body">
                        <div class="row">
                            <div class=" col-sm-6">
                                <div class="form-group">
                                    <asp:Label ID="lblRoleName" runat="server" AssociatedControlID="TxtRoleName" CssClass="control-label">Role Name</asp:Label>
                                    <asp:TextBox runat="server" ID="TxtRoleName" CssClass="form-control" />
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="TxtRoleName"
                                        CssClass="text-danger" ErrorMessage="The Role Name field is required." />
                                </div>
                            </div>
                                                        
                        </div>
                    
                    </div>
                </div>
            </div>
            <div class="form-actions ">
                <div class="row">
                    <div class="form-group">
                        <div class="col-md-12 text-center">
                            <asp:HyperLink ID="BtnCancel" runat="server" Text="Cancel" CssClass="btn btn-default" CausesValidation="False" NavigateUrl="/Admins/Modules/Security/RolesList.aspx" />
                            <asp:Button ID="BtnSubmit" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="BtnSubmit_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <asp:HiddenField ID="HF_RoleID" runat="server" />
    <asp:HiddenField ID="HF_SecurityStamp" runat="server" />
</asp:Content>

<asp:Content ID="Content9" runat="server" ContentPlaceHolderID="Content_Toolbar">
    <uc1:SecurityMenu runat="server" ID="SecurityMenu" />
</asp:Content>


