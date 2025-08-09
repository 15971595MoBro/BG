<%@ Page Title="" Language="C#" MasterPageFile="~/Admins/AdminMaster.Master" AutoEventWireup="true" CodeBehind="SocialMediaAddEdit.aspx.cs" Inherits="BGBeauty_Website.Admins.Modules.SocialMedia.SocialMediaAddEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content_MapPath" runat="server">
    <ul class="breadcrumb no-border no-radius b-b b-light pull-in">
         <li><a href="#">Content Management</a><i class="fa fa-circle"></i></li>
        <li><a>Social Media</a><i class="fa fa-circle"></i></li>
       <li class="active">
            <%: Title %></li>
    </ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content_Title" runat="server">
    <h1><%: Title %>
        <asp:Label ID="LblTitle" runat="server"></asp:Label>
    </h1>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content_Main" runat="server">
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
                    <div class="col-sm-12">
                        <div class=" portlet-input pull-right margin-bottom-20">
                            <asp:Button ID="BtnSaveInfo" runat="server" CommandArgument="EditInfo" CommandName="Update" OnClick="BtnSaveInfo_Click" CssClass="btn btn-s-md btn-info btn-rounded" Text="Submit" />
                            &nbsp;
                              <asp:Button ID="BtnCancel" runat="server" CausesValidation="false" CssClass="btn btn-s-md btn-default btn-rounded" OnClick="BtnCancel_Click"
                                Text="Cancel" />



                        </div>
                    </div>
                    <div class="panel-body">
                        <div class="form-group pull-in clearfix">
                            <div class="col-sm-4">
                                <label>
                                    Social Name
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red"
                                    ControlToValidate="TxtSocialName" ErrorMessage="*" SetFocusOnError="True"></asp:RequiredFieldValidator></label>
                                <asp:TextBox ID="TxtSocialName" runat="server" Text="" class="form-control" placeholder="Enter Social Name"></asp:TextBox>
                            </div>
                            <div class="col-md-4">
                                <label>
                                    Social URL 
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="Red"
                                    ControlToValidate="TxtSocialURL" ErrorMessage="*" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                </label>
                                <asp:TextBox ID="TxtSocialURL" runat="server" Text="" class="form-control" placeholder="Enter Social URL"></asp:TextBox>
                            </div>
                            <div class="col-sm-4">
                                <label>Publish</label>
                                <asp:DropDownList ID="DdlPublish" runat="server" class="form-control">
                                    <asp:ListItem Value="True">Yes</asp:ListItem>
                                    <asp:ListItem Value="False">No</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="form-group pull-in clearfix">
                            <div class="col-sm-6" style="display: none">
                                <label>
                                    Photo
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator_Image" runat="server" ForeColor="Red"
                                    ControlToValidate="FileUpload1" ErrorMessage="*" SetFocusOnError="True" Visible="False"></asp:RequiredFieldValidator>
                                </label>
                                <asp:FileUpload ID="FileUpload1" runat="server" class="filestyle" data-icon="false" data-classButton="btn btn-default" data-classInput="form-control inline input-s" />

                            </div>
                            <div class="col-sm-6">

                                <asp:Image ID="MainImg" runat="server" Height="32" Style="display: none" />
                                <asp:LinkButton ID="BtnImgDel" runat="server" CausesValidation="false" ImageUrl="/Admins/Images/wpm_Delete.gif" OnClientClick="javascript:return confirm('Are you sure do you want to Delete this Page? ')"
                                    ToolTip="Delete Photo" Visible="False"> <i class="fa fa-trash-o text-danger font Fontsize_20" ></i> </asp:LinkButton>
                            </div>
                        </div>
                        <div class="text-center">
                          
                        </div>
                    </div>
                </div>
            </section>
        </div>


    </div>

    <asp:HiddenField ID="Hf_UID" Value="" runat="server" />
    <asp:HiddenField ID="Hf_Image" Value="" runat="server" />
</asp:Content>
