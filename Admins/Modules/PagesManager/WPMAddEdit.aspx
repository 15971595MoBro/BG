<%@ Page Title="" Language="C#" MasterPageFile="~/Admins/AdminMaster.Master" AutoEventWireup="true" CodeBehind="WPMAddEdit.aspx.cs" Inherits="BGBeauty_Website.Admins.Modules.PagesManager.WPMAddEdit" %>



<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%--   <script type="text/javascript">

        function GetRadWindow() {
            var oWindow = null;
            if (window.radWindow) oWindow = window.radWindow; //Will work in Moz in all cases, including clasic dialog
            else if (window.frameElement.radWindow) oWindow = mewindow.frameElement.radWindow; //IE (and Moz as well)

            return oWindow;
        }

        function CloseAndRebind(args) {
            GetRadWindow().BrowserWindow.refreshGrid(args);
            GetRadWindow().close();
        }

        function CancelEdit() {
            GetRadWindow().close();
        }

    </script>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content_MapPath" runat="server">
    <ul class="breadcrumb no-border no-radius b-b b-light pull-in">
        <li><i class="fa fa-home"></i>Home</li>
        <li>Pages Manager</li>
        <li class="active">
            <asp:Label ID="LblPathTitle" runat="server"></asp:Label></li>
    </ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content_Title" runat="server">
    <asp:Label ID="LblTitle" runat="server"></asp:Label>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content_Main" runat="server">

    <telerik:RadScriptManager ID="RadScriptManager1" runat="server"></telerik:RadScriptManager>
    <telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" runat="server" Skin="Default">
    </telerik:RadAjaxLoadingPanel>

    <asp:Panel ID="Panel_PageInfo" runat="server">
        <div class="row">
            <div class="col-sm-12">
                <section class="panel panel-default">
                    <header class="panel-heading font-bold">Page main information</header>

                    <div class="panel-body">
                        <asp:Panel ID="Panel_IsMenuItem" runat="server">
                            <div class="form-group pull-in clearfix">
                                <div class="col-sm-4">
                                    <label>
                                        Parent Page
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator_DdlParentPage" runat="server" ForeColor="Red"
                                    ControlToValidate="DdlParentPage" ErrorMessage="*" SetFocusOnError="True" Visible="False"></asp:RequiredFieldValidator></label>
                                    <asp:DropDownList ID="DdlParentPage" runat="server" AutoPostBack="True" CssClass="form-control">
                                    </asp:DropDownList>
                                </div>
                                <div class="col-sm-4" id="div1" runat="server">

                                    <label>
                                        Title In Menu
                                    </label>
                                    <asp:TextBox ID="TxtPageTitleInMenu" runat="server" Text='<%# Eval("Wpm_PageName","{0}") %>' CssClass="form-control" placeholder="Title In Menu"></asp:TextBox>

                                </div>
                                <div class="col-sm-4">
                                    <label>Menu</label>
                                    <asp:DropDownList ID="DdlMenuNo" runat="server" CssClass="form-control">
                                        <asp:ListItem Text="Main Menu" Value="1" />
                                        <%--<asp:ListItem Text="Top Menu" Value="2" />--%>
                                        <asp:ListItem Text="Footer" Value="3" />
                                        <%--<asp:ListItem Text="Mobile Menu" Value="4" />--%>
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </asp:Panel>

                        <div class="form-group pull-in clearfix">

                            <div class="col-sm-4" id="divTemplate" runat="server">
                                <telerik:RadAjaxPanel ID="RadAjaxPanel1" runat="server" HorizontalAlign="NotSet" LoadingPanelID="RadAjaxLoadingPanel1">
                                    <label>
                                        Page Name
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator_TxtPageName" runat="server" ForeColor="Red"
                                    ControlToValidate="TxtPageName" ErrorMessage="*" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        <asp:FilteredTextBoxExtender ID="TxtPageName_FilteredTextBoxExtender" runat="server" Enabled="True" TargetControlID="TxtPageName" FilterMode="inValidChars"
                                            FilterType="Custom" InvalidChars="+,&,%,:,*">
                                            <%--ValidChars="A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z,0,1,2,3,4,5,6,7,8,9"--%>
                                        </asp:FilteredTextBoxExtender>
                                    </label>
                                    <asp:Label ID="LblNameAvailable" runat="server" ForeColor="#33CC33" Text="✓Available" Visible="false"></asp:Label>
                                    <asp:Label ID="LblNameNotAvailable" runat="server" ForeColor="Red" Text="X Name already exists" Visible="false"></asp:Label>
                                    <asp:CompareValidator ID="CompareValidator1" runat="server"
                                        ControlToCompare="txtPageNameFound"
                                        ControlToValidate="TxtPageName" ForeColor="Red"
                                        Display="Static" ErrorMessage="Name already exists" Operator="NotEqual"
                                        SetFocusOnError="True" Visible="False"></asp:CompareValidator>
                                    <asp:TextBox ID="TxtPageName" runat="server" OnTextChanged="TxtPageName_TextChanged1" AutoPostBack="True" Text='<%# Eval("Wpm_PageName","{0}") %>' CssClass="form-control" placeholder="Page Name"></asp:TextBox>
                                </telerik:RadAjaxPanel>
                            </div>

                            <div class="col-sm-4">
                                <label>
                                    Page Title
                                </label>
                                <asp:TextBox ID="TxtPageTitle" runat="server" Text='<%# Eval("Wpm_PageName","{0}") %>' CssClass="form-control" placeholder="Page Title"></asp:TextBox>
                            </div>

                            <div class="col-sm-4">
                                <label>Publish</label>
                                <asp:DropDownList ID="DdlPublish" runat="server" CssClass="form-control">
                                    <asp:ListItem Value="True">Yes</asp:ListItem>
                                    <asp:ListItem Value="False">No</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>

                        <div class="line line-dashed line-lg pull-in"></div>
                        <div class="form-group pull-in clearfix">
                            <div class="col-sm-4">
                                <label>Seo ChangeFreq</label>
                                <asp:TextBox ID="TxtWpm_Seo_ChangeFreq" runat="server" CssClass="form-control" placeholder="Seo_ChangeFreq"></asp:TextBox>
                            </div>
                            <div class="col-sm-4">
                                <label>Seo Priority</label>
                                <asp:TextBox ID="TxtWpm_Seo_Priority" runat="server" CssClass="form-control" placeholder="Seo_Priority"></asp:TextBox>
                            </div>
                        </div>


                        <div class="line line-dashed line-lg pull-in"></div>
                        <div class="form-group pull-in clearfix">
                            <div class="col-sm-6">
                                <label>Meta Description </label>
                                <asp:TextBox ID="TxtMetaDescription" runat="server" Height="80px" TextMode="MultiLine" CssClass="form-control" placeholder="Meta Description"></asp:TextBox>
                            </div>
                            <div class="col-sm-6" id="div2" runat="server">

                                <label>Meta Keywords </label>
                                <asp:TextBox ID="TxtMetaKeywords" runat="server" Height="80px" TextMode="MultiLine" CssClass="form-control" placeholder="Keywords 1 , Keywords 2 , Keywords 3"></asp:TextBox>

                            </div>
                        </div>



                    </div>
                </section>
            </div>
        </div>

        <%--  <div class="CheckBox">
            <div class="col-sm-12">
                <label>
                    <asp:CheckBox ID="ch_ExternalPage" runat="server" AutoPostBack="True"  />
                    Link to external page</label>
            </div>
        </div>--%>
    </asp:Panel>


    <asp:Panel ID="Panel_ExternalPage" runat="server">
        <div class="row">
            <div class="col-sm-12">
                <section class="panel panel-default">
                    <header class="panel-heading font-bold">External Page</header>

                    <div class="panel-body">
                        <div class="form-group pull-in clearfix">
                            <div class="col-sm-6">
                                <label>
                                    Url Target
                                </label>
                                <asp:DropDownList ID="ddlTarget" runat="server" CssClass="form-control">
                                    <asp:ListItem Value="">&lt;-Select Target-&gt;</asp:ListItem>
                                    <asp:ListItem Value="_blank">_blank</asp:ListItem>
                                    <asp:ListItem Value="_self">_self</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="col-sm-6" id="div3" runat="server">

                                <label>
                                    HTTP URL
                                </label>
                                <asp:TextBox ID="TxtHttpURL" runat="server" Text='<%# Eval("Wpm_HttpURL", "{0}")%>' CssClass="form-control" placeholder="Page Name"></asp:TextBox>

                            </div>
                        </div>




                    </div>
                </section>
            </div>


            <div class=" col-sm-6">
                <div class="form-group">
                    <label>
                        Main image <%--: be sure that images must be (w: 800px * h: 730px)--%>
                    </label>
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="filestyle" data-icon="false" data-classButton="btn btn-default" data-classInput="form-control inline input-s" />

                </div>
            </div>
            <div class=" col-sm-6">
                <div class="form-group">
                    <asp:Image ID="MainImg" runat="server" Height="80" ImageUrl="~/Files/default-placeholder-300x300.png" />
                    <asp:LinkButton ID="BtnImgDel" runat="server" CausesValidation="false" OnClientClick="javascript:return confirm('Are you sure do you want to Delete this Photo? ')"
                        ToolTip="Delete Photo"> <i class="fa fa-trash-o text-danger font Fontsize_20" ></i> </asp:LinkButton>
                    <asp:HiddenField ID="Hf_Image" runat="server" />
                    <asp:HiddenField ID="Hf_ImageCode" runat="server" />
                </div>
            </div>
        </div>
    </asp:Panel>

    <asp:Panel ID="Panel_Content" runat="server">
        <div class="row">
            <div class="col-sm-12">
                <section class="panel panel-default">
                    <header class="panel-heading font-bold">
                        Content
                    </header>
                    <asp:Panel ID="Panel_Template" runat="server" CssClass="hidden">
                        <div class="panel-body">
                            <div class="form-group pull-in clearfix">
                                <div class="col-sm-12">
                                    <label>
                                        Template</label>
                                    <asp:DropDownList ID="ddlTemplates" runat="server" OnSelectedIndexChanged="ddlTemplates_SelectedIndexChanged1" CssClass="form-control" CausesValidation="False" AutoPostBack="True">
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>
                    </asp:Panel>


                    <div class="form-group">
                        <%--wysihtml5 --%>
                        <%--<asp:TextBox runat="server" ID="TxtFullDescription" CssClass="ckeditor form-control" TextMode="MultiLine" Height="150" ClientIDMode="Static" />--%>

                        <telerik:RadEditor ID="RadEditor1" runat="server" EnableResize="False" Height="540px" Width="100%" ToolsFile="~/ToolsFile.xml">
                            <ImageManager DeletePaths="~/uploads" UploadPaths="~/uploads" ViewPaths="~/uploads" MaxUploadFileSize="10485760" />
                            <DocumentManager DeletePaths="~/uploads" UploadPaths="~/uploads" ViewPaths="~/uploads" MaxUploadFileSize="10485760" />
                            <MediaManager DeletePaths="~/uploads" UploadPaths="~/uploads" ViewPaths="~/uploads" MaxUploadFileSize="10485760" />
                            <FlashManager DeletePaths="~/uploads" UploadPaths="~/uploads" ViewPaths="~/uploads" />
                            <TemplateManager DeletePaths="~/uploads" UploadPaths="~/uploads" ViewPaths="~/uploads" />
                            <CssFiles>
                                <telerik:EditorCssFile Value="/css/app.css" />
                            </CssFiles>
                            <Content>
                            </Content>
                        </telerik:RadEditor>
                    </div>
                </section>
            </div>
        </div>

    </asp:Panel>

    <div class="line line-dashed line-lg pull-in"></div>
    <div class="text-center">

        <asp:Button ID="BtnCancel" runat="server" CausesValidation="false" OnClick="BtnCancel_Click1" CssClass="btn btn-s-md btn-default btn-rounded"
            Text="Cancel" />

        &nbsp;<asp:Button ID="BtnSaveInfo" runat="server" CommandArgument="EditInfo" CommandName="Update"
            CssClass="btn btn-s-md btn-info btn-rounded" Text="Submit" OnClick="BtnSaveInfo_Click1" />
    </div>


    <telerik:RadWindowManager ID="RadWindowManager1" runat="server" VisibleStatusbar="False" Animation="Fade">
    </telerik:RadWindowManager>

    <asp:HiddenField ID="Hf_PageID" runat="server" />
    <asp:HiddenField ID="Hf_ParentID" runat="server" />
    <asp:HiddenField ID="Hf_MenuNo" runat="server" Value="0" />
    <asp:HiddenField ID="Hf_IsMenu" runat="server" Value="0" />
    <asp:HiddenField ID="Hf_LangID" runat="server" />
    <asp:HiddenField ID="Hf_EditInfo" runat="server" />
    <div style="display: none">
        <asp:TextBox ID="txtPageNameFound" runat="server" BackColor="#333333"></asp:TextBox>
    </div>
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="Content_Script">
    <script src="/Admins/assets/global/plugins/ckeditor/ckeditor.js"></script>
</asp:Content>
