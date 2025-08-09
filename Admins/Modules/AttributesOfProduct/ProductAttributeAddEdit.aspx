<%@ Page Title="" Language="C#" MasterPageFile="~/Admins/AdminMaster.Master" AutoEventWireup="true" CodeBehind="ProductAttributeAddEdit.aspx.cs" Inherits="BGBeauty_Website.Admins.Modules.AttributesOfProduct.ProductAttributeAddEdit" %>
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
        <li>

            <a href="/Admins/Modules/AttributesOfProduct/ProductAttributeList">Attributes List</a>
            <i class="fa fa-circle"></i>
        </li>
        <li class="active">
            <%: Page.Title %>
        </li>
    </ul>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Content_Note" runat="server">
    <div class="pull-right">
             <asp:LinkButton ID="BtnSubmit" runat="server" Text="Save" OnClick="BtnSubmit_Click1" CssClass="btn btn-primary"><i class="fa fa-save"></i> Save</asp:LinkButton>
             <asp:HyperLink ID="BtnCancel" runat="server" Text="Cancel"  CssClass="btn btn-default" NavigateUrl="/Admins/Modules/AttributesOfProduct/ProductAttributeList" />
             <asp:LinkButton ID="Btn_Delete" runat="server" OnClick="Btn_Delete_Click" CssClass="btn btn-danger" OnClientClick="javascript:return confirm('Are you sure do you want to Delete this Product Attribute? ')"><i class="fa fa-trash "></i> Delete</asp:LinkButton>
     </div> 
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="Content_Main" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" EnableCdn="true"></asp:ScriptManager>
    <asp:HiddenField ID="HF_TabId" runat="server" Value="tab_1_1_1" ClientIDMode="Static" />

    <div id="widget-grid" class="portlet light borderedv">
        <div class="table-toolbar">
             <header>
                <h4><span class="widget-icon"><i class="fa fa-edit"></i></span>Product Attribute Info</h4>
            </header>
            <div>
                <hr />
                <div class="jarviswidget-editbox"></div>

                <ul class="nav nav-tabs bordered" id="TabDetails">
                    <li class='<%: HF_TabId.Value == "tab_1_1_1" ? "active" : "" %>'>
                        <a href="#tab_1_1_1" data-toggle="tab">roduct Attribute Info</a>
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
                                               
                                                <div class=" col-sm-8">
                                                    <div class="form-group">
                                                        <asp:Label  ID="lblAttributeName" runat="server" AssociatedControlID="TxtAttributeName" CssClass="control-label">Attribute Name</asp:Label>
                                                        <asp:TextBox runat="server" ID="TxtAttributeName" CssClass="form-control" />
                                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="TxtAttributeName"
                                                            CssClass="text-danger" ErrorMessage="The Attribute Name field is required." />
                                                    </div>
                                                </div>
                                                <div class=" col-sm-8">
                                                    <div class="form-group">
                                                        <asp:Label ID="lblAttributeDesc" runat="server" AssociatedControlID="TxtAttributeDesc" CssClass="control-label">Attribute Description</asp:Label>
                                                        <asp:TextBox runat="server" ID="TxtAttributeDesc" TextMode="MultiLine" CssClass="form-control" Height="80" />
                                                        <%--         <asp:RequiredFieldValidator runat="server" ControlToValidate="RxtAttributeDescL1"
                                                            CssClass="text-danger" ErrorMessage="The Attribute Name field is required." />--%>
                                                    </div>
                                                </div>

                                             

                                            </div>
                                        </div>
                                        <asp:HiddenField ID="HF_LanguageID" runat="server" Value='<%# Eval("LangUID") %>' />
                                    </ItemTemplate>
                                </asp:Repeater>

                            </div>
                        </div>


                        
                   

                            <div class=" col-sm-3">
                                <div class="form-group">
                                    <asp:CheckBox ID="CH_Active" runat="server" Text="Active" />
                                </div>
                            </div>
                           

                       
                        
                     
                    </div>
                </div>
            </div>
        </div>
    </div>

    <asp:HiddenField ID="HF_AttributeID" runat="server" />
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
