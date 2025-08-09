<%@ Page Title="Add / Edit Blog" Language="C#" MasterPageFile="~/Admins/AdminMaster.Master" AutoEventWireup="true" CodeBehind="BlogAddEdit.aspx.cs" Inherits="BGBeautyProject_Website.Admins.Modules.BlogSection.BlogAddEdit" ValidateRequest="false" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="/Admins/assets/global/plugins/bootstrap-timepicker/css/bootstrap-timepicker.min.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content_Title" runat="server">
    <h1><%: Title %>
        <asp:Label ID="LblTitle" runat="server"></asp:Label>
    </h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content_Toolbar" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content_MapPath" runat="server">
    <ul class="breadcrumb no-border no-radius b-b b-light pull-in">
        <li><a href="#">Home</a><i class="fa fa-circle"></i></li>
        <li><a href="BlogList.aspx">Blogs</a><i class="fa fa-circle"></i></li>
        <li class="active">
            <%: Title %></li>
    </ul>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Content_Note" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="Content_Main" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" EnableCdn="false">
    </asp:ScriptManager>

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
                              <a class="btn btn-s-md btn-default btn-rounded" href="BlogList.aspx">Cancel</a>



                        </div>
                    </div>
                    <div class="panel-body">
                        <div class="col-md-6">
                            <div class="col-sm-12">
                                <div class="form-group pull-in clearfix">
                                    <label>
                                        Blog Name
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red"
                                    ControlToValidate="TxtBlogName" ErrorMessage="*" SetFocusOnError="True"></asp:RequiredFieldValidator></label>
                                    <asp:TextBox ID="TxtBlogName" runat="server" Text="" class="form-control" placeholder="Enter Blog Name"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="form-group pull-in clearfix">
                                    <label>
                                        Blog Brief
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="Red"
                                    ControlToValidate="TxtBlogBrief" ErrorMessage="*" SetFocusOnError="True"></asp:RequiredFieldValidator></label>
                                    <asp:TextBox ID="TxtBlogBrief" runat="server" Text="" class="form-control" placeholder="Enter Blog Brief"></asp:TextBox>
                                </div>
                            </div>


                        </div>
                        <div class="col-md-6">

                            <div class="col-sm-6">
                                <div class="form-group pull-in clearfix">
                                    <label>Publish</label>
                                    <asp:DropDownList ID="DdlPublish" runat="server" class="form-control">
                                        <asp:ListItem Value="True">Yes</asp:ListItem>
                                        <asp:ListItem Value="False">No</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>



                            <div class="col-sm-6">
                                <div class="form-group pull-in clearfix">
                                    <label>Show In Home Page</label>
                                    <asp:DropDownList ID="DdlShowInHomePage" runat="server" class="form-control">
                                        <asp:ListItem Value="True">Yes</asp:ListItem>
                                        <asp:ListItem Value="False">No</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>

                            <div class="col-sm-12">
                                <div class="form-group pull-in clearfix">
                                    <label>
                                        Photo
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator_Image" runat="server" ForeColor="Red"
                                    ControlToValidate="FileUploadImg" ErrorMessage="*" SetFocusOnError="True" Visible="False"></asp:RequiredFieldValidator>
                                    </label>
                                    <asp:FileUpload ID="FileUploadImg" runat="server" class="filestyle" data-icon="false" data-classButton="btn btn-default" data-classInput="form-control inline input-s" />
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="form-group pull-in clearfix">
                                    <asp:Image ID="MainImg" runat="server" Height="70" />
                                    <asp:LinkButton ID="BtnImgDel" runat="server" CausesValidation="false" ImageUrl="/Admins/Images/wpm_Delete.gif" OnClientClick="javascript:return confirm('Are you sure do you want to Delete this Page? ')"
                                        ToolTip="Delete Photo" Visible="False"> <i class="fa fa-trash-o text-danger font Fontsize_20" ></i> </asp:LinkButton>
                                </div>
                            </div>

                             <div class="col-sm-12">
                                <div class="form-group pull-in clearfix">
                                    <label>
                                        Photo Thumbnail
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ForeColor="Red"
                                    ControlToValidate="FileUploadImgThumb" ErrorMessage="*" SetFocusOnError="True" Visible="False"></asp:RequiredFieldValidator>
                                    </label>
                                    <asp:FileUpload ID="FileUploadImgThumb" runat="server" class="filestyle" data-icon="false" data-classButton="btn btn-default" data-classInput="form-control inline input-s" />
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="form-group pull-in clearfix">
                                    <asp:Image ID="MainImgThumb" runat="server" Height="70" />
                                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="false" ImageUrl="/Admins/Images/wpm_Delete.gif" OnClientClick="javascript:return confirm('Are you sure do you want to Delete this Page? ')"
                                        ToolTip="Delete Photo" Visible="False"> <i class="fa fa-trash-o text-danger font Fontsize_20" ></i> </asp:LinkButton>
                                </div>
                            </div>

                        </div>
                        <div class="col-md-12">
                            <div class="col-sm-6">
                                <div class="form-group pull-in clearfix">
                                    <label>
                                        Category Type
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" Font-Size="11px" ControlToValidate="DdlCategoryType" ForeColor="Red"
                                            ErrorMessage="Please select Event Type" Enabled="true" Display="None" InitialValue="0"></asp:RequiredFieldValidator>
                                    </label>
                                    <asp:DropDownList ID="DdlCategoryType" runat="server" class="form-control">
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group pull-in clearfix">
                                <label>
                                    Blog Description 
                                </label>
                                <asp:TextBox runat="server" ID="TxtDescription" CssClass="ckeditor form-control" TextMode="MultiLine" Height="150" ClientIDMode="Static" MaxLength="4000" />
                            </div>
                        </div>
                        <div class="form-group pull-in clearfix">
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
<asp:Content ID="Content7" ContentPlaceHolderID="Content_Script" runat="server">
    <script src="/Admins/assets/global/plugins/bootstrap-timepicker/js/bootstrap-timepicker.min.js"></script>
    <script type="text/javascript">
        $('.datepicker').datepicker({
            dateFormat: 'mm/dd/yy',
            prevText: '<i class="fa fa-chevron-left"></i>',
            nextText: '<i class="fa fa-chevron-right"></i>',
            onSelect: function (selectedDate) {
                $('#finishdate').datepicker('option', 'minDate', selectedDate);
            },
            //minDate: -1,
            autoclose: true
        });

        $('.timepicker').timepicker();

        //$('#txt_StartTime').timepicker({
        //    template: false,
        //    showInputs: true,
        //    minuteStep: 5
        //});

        //$('#txt_EndTime').timepicker({
        //    template: false,
        //    showInputs: true,
        //    minuteStep: 5
        //});


        function EnableDisableTime(bolFlag) {
            debugger;
            if (bolFlag) {
                document.getElementById("divStartTime").disabled = false;
                document.getElementById("divEndTime").disabled = false;

            }
            else {
                document.getElementById("divStartTime").disabled = true;
                document.getElementById("divEndTime").disabled = true;

            }

        }

    </script>
</asp:Content>
