<%@ Page Title="" Language="C#" MasterPageFile="~/Admins/SecurityMaster.Master" AutoEventWireup="true" CodeBehind="UsersAddEdit.aspx.cs" Inherits="BGBeauty_Website.Admins.Modules.Security.UsersAddEdit" %>


<%@ Register Src="~/Admins/UserControls/Security/SecurityMenu.ascx" TagPrefix="uc1" TagName="SecurityMenu" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="Content_Title" runat="server">
    <h1><%= Page.Title %></h1>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content_MapPath" runat="server">
    <ul class="breadcrumb">
        <li><a href="/">Home </a><i class="fa fa-circle"></i></li>
        <li>

            <a href="#">Security</a>
            <i class="fa fa-circle"></i>
        </li>
        <li>

            <a href="/Admins/Modules/Security/RolesList">Users List</a>
            <i class="fa fa-circle"></i>
        </li>
        <li class="active">
            <%= Page.Title %>
        </li>
    </ul>
</asp:Content>
<asp:Content ID="Content5" runat="server" ContentPlaceHolderID="Content_Toolbar">
    <uc1:SecurityMenu runat="server" ID="SecurityMenu" />
</asp:Content>

<asp:Content ID="Content8" runat="server" ContentPlaceHolderID="Content_Main">
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
                            <div class="col-sm-4">
                                <div class="input-group">
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="input-group">
                                </div>
                            </div>
                        </div>
                        <hr />
                        <div class="row">
                            <div class="col-lg-3 col-md-4 col-sm-6">
                                <div class="form-group">
                                    <asp:Label ID="lblFirstNameL1" runat="server" AssociatedControlID="TxtFirstNameL1" CssClass="control-label">First Name</asp:Label>
                                    <asp:TextBox runat="server" ID="TxtFirstNameL1" CssClass="form-control" />
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="TxtFirstNameL1"
                                        CssClass="text-danger" ErrorMessage="The First Name field is required." />
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-4 col-sm-6">
                                <div class="form-group">
                                    <asp:Label ID="lblLastNameL1" runat="server" AssociatedControlID="TxtLastNameL1" CssClass="control-label">Last Name</asp:Label>
                                    <asp:TextBox runat="server" ID="TxtLastNameL1" CssClass="form-control" />
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="TxtLastNameL1"
                                        CssClass="text-danger" ErrorMessage="The Last Name   field is required." />
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-4 col-sm-6">
                                <div class="form-group">
                                    <asp:Label ID="lblEmail" runat="server" AssociatedControlID="TxtEmail" CssClass="control-label">Email</asp:Label>
                                    <asp:TextBox runat="server" ID="TxtEmail" CssClass="form-control" />
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="TxtEmail"
                                        CssClass="text-danger" ErrorMessage="The email field is required." />
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-4 col-sm-6">
                                <div class="form-group">
                                    <asp:Label ID="lblUserName" runat="server" AssociatedControlID="TxtUserName" CssClass="control-label">User name</asp:Label>
                                    <asp:TextBox runat="server" ID="TxtUserName" CssClass="form-control" />
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="TxtUserName"
                                        CssClass="text-danger" ErrorMessage="The User name field is required." />
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-4 col-sm-6">
                                <div class="form-group">
                                    <asp:Label ID="lblIsActive" runat="server" AssociatedControlID="DdlIsActive" CssClass="control-label">Active</asp:Label>
                                    <asp:DropDownList runat="server" ID="DdlIsActive" CssClass="form-control">
                                        <asp:ListItem Value="True" Text="Yes"></asp:ListItem>
                                        <asp:ListItem Value="False" Text="No" Selected="True"></asp:ListItem>
                                    </asp:DropDownList>
                                    <span class="btn-block"></span>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-4 col-sm-6">
                                <div class="form-group">
                                    <asp:Label ID="lblIsAdmin" runat="server" AssociatedControlID="DdlIsAdmin" CssClass="control-label">Admin</asp:Label>
                                    <asp:DropDownList runat="server" ID="DdlIsAdmin" CssClass="form-control">
                                        <asp:ListItem Value="True" Text="Yes"></asp:ListItem>
                                        <asp:ListItem Value="False" Text="No" Selected="True"></asp:ListItem>
                                    </asp:DropDownList>
                                    <span class="btn-block"></span>
                                </div>
                            </div>




                            <div class="col-lg-3 col-md-4 col-sm-6">
                                <div class="form-group">
                                    <asp:Label ID="lblChangePassNextLogin" runat="server" AssociatedControlID="DdlChangePassNextLogin" CssClass="control-label">Change Pass Next Login</asp:Label>
                                    <asp:DropDownList runat="server" ID="DdlChangePassNextLogin" CssClass="form-control">
                                        <asp:ListItem Value="True" Text="Yes"></asp:ListItem>
                                        <asp:ListItem Value="False" Text="No" Selected="True"></asp:ListItem>
                                    </asp:DropDownList>
                                    <span class="btn-block"></span>
                                </div>
                            </div>


                       <%--     
                            <div class="col-lg-3 col-md-4 col-sm-6">
                                <div class="form-group">
                                    <asp:Label ID="lblBrand" runat="server" AssociatedControlID="DdlBrand" CssClass="control-label">Brand</asp:Label>
                                    <asp:DropDownList runat="server" ID="DdlBrand" CssClass="form-control"></asp:DropDownList>
                                </div>
                            </div>--%>


                            <asp:Panel ID="Panel_Password" runat="server">

                                <div class="col-lg-3 col-md-4 col-sm-6">
                                    <div class="form-group">
                                        <asp:Label ID="lblPassword" runat="server" AssociatedControlID="TxtPassword" CssClass="control-label">Password</asp:Label>
                                        <asp:TextBox runat="server" ID="TxtPassword" TextMode="Password" CssClass="form-control" />
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="TxtPassword"
                                            CssClass="text-danger" ErrorMessage="The password field is required." />
                                    </div>
                                </div>

                                <div class="col-lg-3 col-md-4 col-sm-6">
                                    <div class="form-group">
                                        <asp:Label ID="lblConfirmPassword" runat="server" AssociatedControlID="TxtConfirmPassword" CssClass="control-label">Confirm password</asp:Label>
                                        <asp:TextBox runat="server" ID="TxtConfirmPassword" TextMode="Password" CssClass="form-control" />
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="TxtConfirmPassword"
                                            CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                                        <asp:CompareValidator runat="server" ControlToCompare="TxtPassword" ControlToValidate="TxtConfirmPassword"
                                            CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
                                    </div>
                                </div>
                            </asp:Panel>
                            <div class="col-lg-3 col-md-4 col-sm-6">
                                <asp:LinkButton ID="Btn_ChangePass" runat="server" CausesValidation="False" Font-Bold="True" OnClick="Btn_ChangePass_Click">Change Password</asp:LinkButton>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <div class="form-actions">
                <div class="row">
                    <div class="form-group">
                        <div class="col-md-12 text-center">
                            <asp:HyperLink ID="BtnCancel" runat="server" Text="Cancel" CssClass="btn btn-default" NavigateUrl="/Admins/Modules/Security/UsersList.aspx" />

                            <asp:Button ID="BtnSubmit" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="BtnSubmit_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <asp:HiddenField ID="HF_UserID" runat="server" />
    <asp:HiddenField ID="HF_SecurityStamp" runat="server" />
</asp:Content>
