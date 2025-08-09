<%@ Page Title="Brand Add/Edit" Language="C#" MasterPageFile="~/Admins/AdminMaster.Master" AutoEventWireup="true" CodeBehind="BrandAddEdit.aspx.cs" Inherits="BGBeauty_Website.Admins.Modules.BrandsProduct.BrandAddEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link href="/Admins/assets/global/plugins/bootstrap-wysihtml5/wysiwyg-color.css" rel="stylesheet" />
        <link href="/Admins/assets/global/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5_Small.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://ajax.aspnetcdn.com/ajax/jquery.ui/1.13.1/themes/black-tie/jquery-ui.css"/>
        <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
        <script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>
        <script>
            $(document).ready(function () {

                $('#Content_Main_RepLanguageTapContant_txtStartDate_0').datepicker({ showOn: 'both', dateFormat: 'dd/mm/yy', changeMonth: true, changeYear: true });

                $('#Content_Main_RepLanguageTapContant_txtDeliveryDate_0').datepicker({ showOn: 'both', dateFormat: 'dd/mm/yy', changeMonth: true, changeYear: true });
            });
        </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content_Title" runat="server">
    <h1><%: Page.Title %></h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content_Toolbar" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content_MapPath" runat="server">
    <ul class="breadcrumb">
        <li><a href="/">Home </a><i class="fa fa-circle"></i></li>
        <li>
            <a href="#">Catalog</a>
            <i class="fa fa-circle"></i>
        </li>
        <li class="active">
            <%: Page.Title %>
        </li>
    </ul>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Content_Note" runat="server">
    <div class="pull-right">
        <asp:Button ID="BtnSubmit" runat="server" Text="Submit" OnClick="BtnSubmit_Click1"  CssClass="btn btn-primary"  />
        <asp:HyperLink ID="BtnCancel" runat="server" Text="Cancel" CssClass="btn btn-default" NavigateUrl="/Admins/Modules/BrandsProduct/BrandList" />
        <asp:LinkButton OnClick="Btn_Delete_Click1" ID="Btn_Delete" runat="server" CssClass="btn btn-danger" OnClientClick="javascript:return confirm('Are you sure do you want to Delete this Brand? ')"><i class="fa fa-trash "></i> Delete</asp:LinkButton>
    </div>                     
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="Content_Main" runat="server">
   <asp:ScriptManager ID="ScriptManager1" runat="server" EnableCdn="true"></asp:ScriptManager>
    <asp:HiddenField ID="HF_TabId" runat="server" Value="tab_1_1_1" ClientIDMode="Static" />

<div id="widget-grid" class="portlet light borderedv">
        <div class="table-toolbar">
             <header>
                <h4><span class="widget-icon"><i class="fa fa-edit"></i></span>Brand Info</h4>
            </header>
            <div>
                <hr />
                <div class="jarviswidget-editbox"></div>

                <ul class="nav nav-tabs bordered" id="TabDetails">
                    <li class='<%: HF_TabId.Value == "tab_1_1_1" ? "active" : "" %>'>
                        <a href="#tab_1_1_1" data-toggle="tab">Brand Info</a>
                    </li>
                    <li class='<%: HF_TabId.Value == "tab_1_1_2" ? "active" : "" %>  hidden'>
                        <a href="#tab_1_1_2" data-toggle="tab">Pictures </a>
                    </li>
                </ul>


                <div id="myMainTabsContant" class="tab-content padding-10" style="margin-top: -10px">

                    <div class=" tab-pane panel-body fade in border <%: HF_TabId.Value == "tab_1_1_1" ? "active" : "" %>" id="tab_1_1_1">
                        <div class="widget-body col-lg-12">
                            <ul id="myTab1" class="nav nav-tabs bordered">
                                <asp:Repeater ID="RepLanguageTaps" runat="server">
                                    <ItemTemplate>
                                        <li class='<%# Container.ItemIndex == 0 ? "active" : "" %>'>
                                            <a href='<%# "#Tab"+Container.ItemIndex.ToString() %>' data-toggle="tab"><%# Eval("Name", "{0}") %></a>
                                        </li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>

                            <div id="myTabContent1" class="tab-content padding-10" style="margin-top: -10px">
                                <asp:Repeater ID="RepLanguageTapContant" runat="server">
                                    <ItemTemplate>
                                        <div class=" tab-pane fade in border <%# Container.ItemIndex == 0 ? "active" : "" %>" id='<%# "Tab"+Container.ItemIndex.ToString() %>'>
                                            <div class="row" style="margin: 10px; padding-top: 10px">
                                               

                                                <div class=" col-sm-12">
                                                    <div class="form-group">
                                                        <asp:Label ID="lblBrandName" runat="server" AssociatedControlID="TxtBrandName" CssClass="control-label">Brand Name</asp:Label>
                                                        <asp:TextBox runat="server" ID="TxtBrandName" CssClass="form-control" />
                                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="TxtBrandName"
                                                            CssClass="text-danger" ErrorMessage="The Brand Name field is required." Display="Dynamic" />
                                                    </div>
                                                </div>
                                                <div class=" col-sm-12">
                                                    <div class="form-group">
                                                        <asp:Label ID="lblBrandEmail" runat="server" AssociatedControlID="TxtBrandEmail" CssClass="control-label">Brand E-mail</asp:Label>
                                                        <asp:TextBox runat="server" ID="TxtBrandEmail" CssClass="form-control" />

                                                    </div>
                                                </div>
                                                <div class=" col-sm-12">
                                                    <div class="form-group">
                                                        <asp:Label ID="lblBrandDesc" runat="server" AssociatedControlID="TxtBrandDesc" CssClass="control-label">Brand Description</asp:Label>
                                                        <asp:TextBox runat="server" ID="TxtBrandDesc" CssClass="form-control" TextMode="MultiLine" />
                                                        <%--         <asp:RequiredFieldValidator runat="server" ControlToValidate="RxtBrandDescL1"
                                                            CssClass="text-danger" ErrorMessage="The Brand Name field is required." />--%>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                        <asp:HiddenField ID="HF_LanguageID" runat="server" Value='<%# Eval("LangUID") %>' />
                                    </ItemTemplate>
                                </asp:Repeater>

                            </div>
                        </div>


                        
                            <div class=" col-sm-6">
                                <div class="form-group">
                                    <label>
                                        Photo / Note : be sure that images must be (w: 500px * h: 410px)
                                    </label>
                                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="filestyle" data-icon="false" data-classButton="btn btn-default" data-classInput="form-control inline input-s" />

                                </div>
                            </div>
                            <div class=" col-sm-6">
                                <div class="form-group">
                                    <asp:Image ID="MainImg" runat="server" Height="80" ImageUrl="~/Files/default-placeholder-300x300.png" />
                                    <asp:LinkButton ID="BtnImgDel" runat="server" CausesValidation="false" OnClientClick="javascript:return confirm('Are you sure do you want to Delete this Photo? ')"
                                        ToolTip="Delete Photo"> <i class="fa fa-trash-o text-danger font Fontsize_20" ></i> </asp:LinkButton>
                                    <asp:HiddenField ID="Hf_Logo" runat="server" />
                                    <asp:HiddenField ID="Hf_LogoCode" runat="server" />
                                </div>
                            </div>

                            <div class=" col-sm-3">
                                <div class="form-group">
                                    <asp:CheckBox ID="CH_Active" runat="server" Text="Active" />
                                </div>
                            </div>
                            <div class=" col-sm-3">
                                <div class="form-group">
                                    <asp:CheckBox ID="CH_ShowOnHome" runat="server" Text="Show On Home" />
                                </div>
                            </div>
                            <div class=" col-sm-6">
                                <div class="form-group">
                                    Display Order
                                   <asp:TextBox ID="TxtDisplayOrder" runat="server" ClientIDMode="Static" CssClass="input-xs OrderBy " Text="0">
                                   </asp:TextBox>
                                </div>
                            </div> 

                       
                        
                     
                    </div>
                </div>
            </div>
        </div>
    </div>

    <asp:HiddenField ID="HF_BrandID" runat="server" />
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="Content_Script" runat="server">
    <script src="/Admins/assets/global/plugins/bootstrap-wysihtml5/wysihtml5-0.3.0.js" type="text/javascript"></script>
    <script src="/Admins/assets/global/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.js" type="text/javascript"></script>
    <script src="/Admins/assets/global/plugins/select2/js/select2.full.min.js" type="text/javascript"></script>
    
    
    <script>
        jQuery(document).ready(function () {

            if (document.getElementById('<%=HF_TabId.ClientID %>').value == "") {
                document.getElementById('<%=HF_TabId.ClientID %>').value = "tab_1_1_1";
            }
        });

        $('.wysihtml5').wysihtml5(
            {
                "font-styles": true,
                "emphasis": true,
                "lists": true,
                "html": true,
                "link": true,
                "image": false
            });



        $(function () {
            var HF_TabId = $("[id*=HF_TabId]").val() != "" ? $("[id*=HF_TabId]").val() : "personal";
            $('#TabDetails a[href="#' + HF_TabId + '"]').tab('show');
            $("#TabDetails a").click(function () {
                $("[id*=HF_TabId]").val($(this).attr("href").replace("#", ""));
            });
        });

        $(".select2, .select2-multiple").select2();



    </script>
</asp:Content>
