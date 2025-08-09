<%@ Page Title="Language Add/Edit" Language="C#" MasterPageFile="~/Admins/AdminMaster.Master" AutoEventWireup="true" CodeBehind="LangAddEdit.aspx.cs" Inherits="BGBeauty_Website.Admins.Modules.Languages.LangAddEdit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content_Title" runat="server">
    <ul class="breadcrumb">
        <li><a href="#">Home</a><i class="fa fa-circle"></i></li>
        <li><a>Configuration</a><i class="fa fa-circle"></i></li>
        <li class="active"><asp:Label ID="lbl_Pathtitle" runat="server" Text="Add Language"></asp:Label></li>
    </ul>
   
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content_Toolbar" runat="server">
    <h1>Home Languages
           <asp:Label ID="LblTitle" runat="server"></asp:Label>
    </h1>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content_MapPath" runat="server">
       <div class="row">
        <div class="col-md-12">
            <section class="panel panel-default">
                <header class="panel-heading font-bold">
                    Language information
                </header>
                <div class="panel-body">
                    <div class="form-group pull-in clearfix">

                        <div class="col-sm-8">
                            <label>
                                Language Name
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red"
                                    ControlToValidate="TxtLangName" ErrorMessage="*" SetFocusOnError="True"></asp:RequiredFieldValidator></label>
                            <asp:TextBox ID="TxtLangName" runat="server" Text="" class="form-control" placeholder="Enter Language Name"></asp:TextBox>
                        </div>
                        <div class="col-md-4">
                            <label>
                                Language Symbol 
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="Red"
                                    ControlToValidate="TxtLangSymbol" ErrorMessage="*" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </label>
                            <asp:TextBox ID="TxtLangSymbol" runat="server" Text="" class="form-control" placeholder="Enter Language Symbol"></asp:TextBox>
                        </div>
                    </div>
                    <div class="line line-dashed line-lg pull-in"></div>

                    
                    <div class="text-center">
                        <asp:Button ID="BtnCancel" runat="server" CausesValidation="false" CssClass="btn btn-s-md btn-default btn-rounded"  Text="Cancel" OnClick="BtnCancel_Click" />

                        &nbsp;<asp:Button ID="BtnSaveInfo" runat="server" CommandArgument="EditInfo" CommandName="Update"  CssClass="btn btn-s-md btn-info btn-rounded" Text="Submit" OnClick="BtnSaveInfo_Click" />

                    </div>
                </div>

            </section>
        </div>


    </div>


<asp:HiddenField ID="Hf_LangID"  runat="server" />
    
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Content_Note" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="Content_Main" runat="server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="Content_Script" runat="server">
</asp:Content>
