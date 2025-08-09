<%@ Page Title="" Language="C#" MasterPageFile="~/Admins/SecurityMaster.Master" AutoEventWireup="true" CodeBehind="UserInRole.aspx.cs" Inherits="BGBeauty_Website.Admins.Modules.Security.UserInRole" EnableEventValidation="false"  %>

<%@ Register Src="~/Admins/UserControls/Security/SecurityMenu.ascx" TagPrefix="uc1" TagName="SecurityMenu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content8" runat="server" ContentPlaceHolderID="Content_Title">
    <h1><%= Page.Title %></h1>
</asp:Content>

<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="Content_MapPath">
    <ul class="breadcrumb">
    <li><a href="/"> Home </a>  <i class="fa fa-circle"></i></li>
    <li>
        
        <a href="#">Security</a>
          <i class="fa fa-circle"></i>
    </li>
    <li class="active">
        <%= Page.Title %>
    </li>
        </ul>
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="Content_Toolbar">
    <uc1:SecurityMenu runat="server" ID="SecurityMenu" />
</asp:Content>

<asp:Content ID="Content6" runat="server" ContentPlaceHolderID="Content_Main">
    <div class="row margin-bottom-15">
        <div class="col-sm-12">
            <div class="portlet light bordered ">
                
                <div class="portlet-body">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <asp:Label ID="LblRoles" runat="server" AssociatedControlID="DdlRoles" CssClass="control-label">Roles</asp:Label>
                                <asp:DropDownList runat="server" ID="DdlRoles" CssClass="form-control" AutoPostBack="True">
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="DdlRoles"
                                    CssClass="text-danger" ErrorMessage="Roles field is required." />
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-5">
                            <asp:ListBox ID="Lst_All" runat="server" SelectionMode="Multiple" CssClass="form-control" Height="250" ClientIDMode="Static"></asp:ListBox>
                        </div>
                        <div class="col-md-2 text-center">
                            <input type="button" id="left" value="<< Remove from Role" class="btn btn-primary" />

                            <input type="button" id="right" value="Move to role >>" class="btn btn-primary" />
                        </div>
                        <div class="col-md-5">
                            <asp:ListBox ID="Lst_Selected" runat="server" SelectionMode="Multiple" CssClass="form-control" Height="250" ClientIDMode="Static"></asp:ListBox>
                        </div>
                    </div>

                    <div class="row margin-top-20 margin-bottom-20 text-center">
                        <div class="col-md-12">
                            <asp:Button ID="BtnSubmit" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="BtnSubmit_Click" ClientIDMode="Static" />
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>


</asp:Content>



<asp:Content ContentPlaceHolderID="Content_Script" runat="server">

    
     <script type="text/javascript">
         $(function () {
             $("#left").bind("click", function () {
                 var options = $("[id*=Lst_Selected] option:selected");
                 for (var i = 0; i < options.length; i++) {
                     var opt = $(options[i]).clone();
                     $(options[i]).remove();
                     $("[id*=Lst_All]").append(opt);
                 }
             });
             $("#right").bind("click", function () {
                 var options = $("[id*=Lst_All] option:selected");
                 for (var i = 0; i < options.length; i++) {
                     var opt = $(options[i]).clone();
                     $(options[i]).remove();
                     $("[id*=Lst_Selected]").append(opt);
                 }
             });
         });
    </script>
    <script type="text/javascript">
        $(function () {
            $("[id*=BtnSubmit]").bind("click", function () {
                $("[id*=Lst_All] option").attr("selected", "selected");
                $("[id*=Lst_Selected] option").attr("selected", "selected");
            });
        });
    </script>
</asp:Content>
