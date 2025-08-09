<%@ Page Title="" Language="C#" MasterPageFile="~/Admins/SecurityMaster.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="BGBeauty_Website.Admins.Modules.Security._default" %>

<%@ Register Src="~/Admins/UserControls/Security/SecurityMenu.ascx" TagPrefix="uc1" TagName="SecurityMenu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="Content_Title">
    <h1><%= Page.Title %></h1>

</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Content_Toolbar" runat="server">
    <uc1:SecurityMenu runat="server" ID="SecurityMenu" />
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="Content_Main" runat="server">
    <div class="row margin-bottom-25">
        <div class="col-md-12">
            <div class="text-center ">
                <span class=" bold lead ">Welcome To Security Controller</span>
                <br />
                <span class="pull-right margin-right-10 ">you can manage security from here <i class="fa fa-arrow-up pull-right fa-3x "></i></span>

            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="text-center"><i class="fa fa-lock fa-5x bold " aria-hidden="true"></i></div>
        </div>
    </div>
</asp:Content>


<asp:Content ID="Content8" runat="server" ContentPlaceHolderID="Content_MapPath">
    <ul class="page-breadcrumb breadcrumb">
        <li><a href="/">Home </a></li>
        <i class="fa fa-circle"></i>
        <li><a href="#">Security</a></li>
        <i class="fa fa-circle"></i>
        <li class="active">
            <%= Page.Title %>
        </li>
    </ul>
</asp:Content>




<asp:Content ID="Content9" runat="server" ContentPlaceHolderID="Content_Note">
</asp:Content>





