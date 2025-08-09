<%@ Page Title="" Language="C#" MasterPageFile="~/Admins/AdminMaster.Master" AutoEventWireup="true" CodeBehind="SpecificationAttributeAddEdit.aspx.cs" Inherits="BGBeauty_Website.Admins.Modules.SpecificationList.SpecificationAttributeAddEdit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="/Admins/assets/global/plugins/select2/css/select2.min.css" rel="stylesheet" type="text/css" />
    <link href="/Admins/assets/global/plugins/select2/css/select2-bootstrap.min.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content_Title" runat="server">
    <%: Page.Title %>
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

            <a href="/Admins/Modules/Catalog/SpecificationAttributeList">Specification List</a>
            <i class="fa fa-circle"></i>
        </li>
        <li class="active">
            <%: Page.Title %>
        </li>
    </ul>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Content_Note" runat="server">
     <div class=" portlet-input pull-right margin-bottom-20">
        <asp:LinkButton ID="BtnSubmit" OnClick="BtnSubmit_Click" runat="server" Text="Save" CssClass="btn btn-primary"><i class="fa fa-save"></i> Save</asp:LinkButton>
        <asp:LinkButton ID="Btn_SaveContinue" OnClick="Btn_SaveContinue_Click" runat="server" CssClass="btn btn-primary"><i class="fa fa-save"></i> Save and continue</asp:LinkButton>
        <asp:HyperLink ID="BtnCancel" runat="server" Text="Cancel" CssClass="btn btn-default" NavigateUrl="/Admins/Modules/SpecificationList/SpecificationAttributeList" />
        <asp:LinkButton ID="Btn_Delete" runat="server" OnClick="Btn_Delete_Click" CssClass="btn btn-danger" OnClientClick="javascript:return confirm('Are you sure do you want to Delete this Specification? ')"><i class="fa fa-trash "></i> Delete</asp:LinkButton>
    </div>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="Content_Main" runat="server">
     <asp:ScriptManager ID="ScriptManager1" runat="server" EnableCdn="true"></asp:ScriptManager>
     <asp:HiddenField ID="HF_TabId" runat="server" Value="tab_1_1_1" />

    <div class="row">
        <div class="col-sm-12">
            <div class="portlet light bordered ">
                <div class="portlet-title">
                    <div class="caption font-dark">
                        <i class="icon-cursor  hide"></i>
                        <span class="caption-subject  bold uppercase"><%: Page.Title %></span>
                    </div>
                    <div class="tools">
                        <a class="collapse" href="javascript:;"></a>
                    </div>
                </div>
                <div class="portlet-body">
                   
                    <div class="tabbable-custom nav-justified">
                        <ul class="nav nav-tabs nav-justified" id="TabDetails">
                            <li class='<%: HF_TabId.Value == "tab_1_1_1" ? "active" : ""%>'>
                                <a href="#tab_1_1_1" data-toggle="tab">Specification  Attribute info</a>
                            </li>
                            <li class='<%: HF_TabId.Value == "tab_1_1_2" ? "active" : ""%>'>
                                <a href="#tab_1_1_2" data-toggle="tab">Options </a>
                            </li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane <%: HF_TabId.Value == "tab_1_1_1" ? "active" : "" %>" id="tab_1_1_1">
                                <div class="row">
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
                                               
                                                         <div class=" col-sm-6">
                                                            <div class="form-group">
                                                                <asp:Label ID="lblAttributeName" runat="server" AssociatedControlID="TxtAttributeSpecificationName" CssClass="control-label">Attribute Name</asp:Label>
                                                                <asp:TextBox runat="server" ID="TxtAttributeSpecificationName" CssClass="form-control" />
                                                                <asp:RequiredFieldValidator runat="server" ControlToValidate="TxtAttributeSpecificationName"
                                                                    CssClass="text-danger" ErrorMessage="The Attribute Name field is required." />
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
                                        <label>Display Order</label>
                                        <asp:TextBox ID="TxtDisplayOrder" runat="server" ClientIDMode="Static" CssClass="input-xs OrderBy " Text="0">
                                        </asp:TextBox>
                                    </div>
                                </div>
                                </div>
                              </div>
                            
                            <div class="tab-pane <%: HF_TabId.Value == "tab_1_1_2" ? "active" : "" %>" id="tab_1_1_2">
                                <asp:Label ID="LblOptionTabMsg" runat="server" Text="You need to save the Specification before you can add options for this Specification page. "></asp:Label>
                                <asp:Panel ID="Panel_Options" runat="server" CssClass="form-body">
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <asp:Panel ID="PanelOptions" runat="server" DefaultButton="BtnSaveOption">
                                                <table id="Tbl_attributesList" class="table table-striped  table-hover order-column ">
                                                    <thead>
                                                        <tr>
                                                            <th>Option Name
                                                            </th>
                                                            <th>Order</th>
                                                            <th></th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="Tbody_attributesList">
                                                        <asp:Repeater ID="Repeater_OptionsList" runat="server" OnItemCommand="Repeater_OptionsList_ItemCommand">
                                                            <ItemTemplate>
                                                                <tr>
                                                                    <td>
                                                                        <%# Eval("Name", "{0}")%>
                                                                    </td>
                                                                    <td><%# Eval("DisplayOrder")%></td>
                                                                    <td>
                                                                        <asp:LinkButton ID="BtnOptionEdit" runat="server" CausesValidation="false" CommandArgument='<%# Eval("Id", "{0}")%>'  CommandName="Edit" > <li class='fa fa-edit '></li> Edit</asp:LinkButton>

                                                                    </td>
                                                                    <td>
                                                                        <asp:LinkButton ID="BtnDeleteOption" runat="server" CommandName="Delete" CommandArgument='<%# Eval("Id", "{0}")%>' OnClientClick="javascript:return confirm('Are you sure do you want to Delete this Option? ')"><i class='fa fa-trash text-danger '></i> Delete</asp:LinkButton>
                                                                    </td>
                                                                </tr>
                                                            </ItemTemplate>
                                                        </asp:Repeater>
                                                    </tbody>
                                                    <tfoot>
                                                        <tr>
                                                            <td>
                                                                <asp:TextBox ID="TxtOptionTitle" runat="server" CssClass="form-control"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" ControlToValidate="TxtOptionTitle" ValidationGroup="option" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="TxtOptionDisplayOrder" runat="server" ClientIDMode="Static" CssClass="form-control OrderBy " Text="0">
                                                                </asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required" ControlToValidate="TxtOptionDisplayOrder" ValidationGroup="option" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                                            </td>
                                                            <td colspan="2">
                                                                <asp:LinkButton ID="BtnSaveOption" runat="server" OnClick="BtnSaveOption_Click" ValidationGroup="option"><i class='fa fa-save text-success'></i> Save</asp:LinkButton>
                                                                <asp:LinkButton ID="BtnCancelOption" OnClick="BtnCancelOption_Click" runat="server" CausesValidation="False"><i class='fa fa-trash text-danger '></i> Cancel</asp:LinkButton>
                                                                <asp:HiddenField ID="HF_OptionID" runat="server" />
                                                            </td>
                                                        </tr>
                                                    </tfoot>
                                                </table>
                                            </asp:Panel>

                                        </div>
                                    </div>
                                </asp:Panel>
                            </div>
                        </div>


                    </div>
                
            </div>
            <div class="form-actions ">
                <div class="row">
                    <div class="form-group">
                        <div class="col-md-12 text-center">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
 </div>
    <asp:HiddenField ID="HF_SpecificationID" runat="server" />
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="Content_Script" runat="server">
     <script src="/Admins/assets/global/plugins/select2/js/select2.full.min.js" type="text/javascript"></script>
    <script src="/Admins/assets/global/plugins/bootstrap-wysihtml5/wysihtml5-0.3.0.js" type="text/javascript"></script>
    <script src="/Admins/assets/global/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.js" type="text/javascript"></script>
   
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


    </script>
</asp:Content>
