<%@ Page Title="" Language="C#" MasterPageFile="~/Admins/AdminMaster.Master" AutoEventWireup="true" CodeBehind="HomeSlidesAddEdit.aspx.cs" Inherits="BGBeauty_Website.Admins.Modules.HomeSlides.HomeSlidesAddEdit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content_Title" runat="server">
    <h1>Home Slides
                <asp:Label ID="LblTitle" runat="server"></asp:Label>
    </h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content_Toolbar" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content_MapPath" runat="server">
     <ul class="breadcrumb">
        <li><a href="#">Home</a><i class="fa fa-circle"></i></li>
        <li><a>Content Management</a><i class="fa fa-circle"></i></li>
        <li class="active">
            <asp:Label ID="lbl_Pathtitle" runat="server" Text="Add Home Slides"></asp:Label></li>
    </ul>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Content_Note" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="Content_Main" runat="server">
   <div class="row">
        <div class="col-md-12">
            <section class="panel panel-default">
                <header class="panel-heading font-bold">
                    Home Slide information
                </header>
                <div class="panel-body">
                    <div class="form-group pull-in clearfix">

                        <div class="col-sm-8">
                            <label>
                                Slide Name
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red"
                                    ControlToValidate="TxtSlideName" ErrorMessage="*" SetFocusOnError="True"></asp:RequiredFieldValidator></label>
                            <asp:TextBox ID="TxtSlideName" runat="server" Text="" class="form-control" placeholder="Enter Slide Name"></asp:TextBox>
                        </div>
                        <div class="col-md-4">
                            <label>
                                Slide URL 
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="Red"
                                    ControlToValidate="TxtSlideURL" ErrorMessage="*" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </label>
                            <asp:TextBox ID="TxtSlideURL" runat="server" Text="" class="form-control" placeholder="Enter Slide URL"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group pull-in clearfix">
                        <div class="col-sm-8">
                            <label>
                                Slide Brief
                            </label>
                            <asp:TextBox ID="TxtSlideBrief" runat="server" Text="" TextMode="MultiLine" Height="50" class="form-control" placeholder="Enter Slide Brief"></asp:TextBox>
                        </div>
                        <div class="col-sm-4">
                            <label>
                                Slide Button Text
                            </label>
                            <asp:TextBox ID="TxtSlideBtn" runat="server" Text="" class="form-control" placeholder="Enter Slide Button Text"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group pull-in clearfix">
                        <div class="col-sm-12">
                            <label>
                                Description
                            </label>
                            <asp:TextBox ID="TxtDescription" runat="server" Text="" class="form-control" placeholder="Enter Description" TextMode="MultiLine" Height="100" Width="100%"></asp:TextBox>
                        </div>
                    </div>
                    <div class="line line-dashed line-lg pull-in"></div>
                    <div class="form-group pull-in clearfix">
                        <div class="col-sm-6">
                            <label>
                                Photo
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator_Image" runat="server" ForeColor="Red"
                                    ControlToValidate="FileUpload1" ErrorMessage="*" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </label>
                            <asp:FileUpload ID="FileUpload1" runat="server" class="filestyle" data-icon="false" data-classButton="btn btn-default" data-classInput="form-control inline input-s" />
                            <label class="font-bold">Note : be sure that images must be (w: <%= W %>px * h: <%= H %> px)</label>

                        </div>
                        <div class="col-sm-6">
                            <asp:Image ID="MainImg" runat="server" Height="80" />
                            <asp:LinkButton ID="BtnImgDel" runat="server" CausesValidation="false" ImageUrl="/Admins/Images/wpm_Delete.gif" OnClientClick="javascript:return confirm('Are you sure do you want to Delete this Slide? ')"
                                ToolTip="Delete Photo" Visible="false"> <i class="fa fa-trash-o text-danger font Fontsize_20" ></i> </asp:LinkButton>
                        </div>
                    </div>
                    <div class="line line-dashed line-lg pull-in"></div>
                    <div class="text-center">
                        <asp:Button ID="BtnCancel" runat="server" CausesValidation="false" CssClass="btn btn-s-md btn-default btn-rounded" OnClick="BtnCancel_Click" Text="Cancel" />

                        &nbsp;<asp:Button ID="BtnSaveInfo" runat="server" CommandArgument="EditInfo" CommandName="Update" OnClick="BtnSaveInfo_Click" CssClass="btn btn-s-md btn-info btn-rounded" Text="Submit" />

                    </div>
                </div>

            </section>
        </div>


    </div>

    <asp:HiddenField ID="Hf_UID" Value="" runat="server" />
<asp:HiddenField ID="Hf_LangID" Value="" runat="server" />
    <asp:HiddenField ID="Hf_Image" Value="" runat="server" />
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="Content_Script" runat="server">
</asp:Content>
