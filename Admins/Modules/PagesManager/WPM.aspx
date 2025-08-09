<%@ Page Title="" Language="C#" MasterPageFile="~/Admins/AdminMaster.Master" AutoEventWireup="true" CodeBehind="WPM.aspx.cs" Inherits="BGBeauty_Website.Admins.Modules.PagesManager.WPM" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%--<script type="text/javascript">
        function ShowEditForm(ID, ParentID, IsMenu, EditInfo) {
            window.radopen("WPMAddEdit.aspx?PageID=" + ID + "&LangID=" + <%= ddlLanguage.SelectedValue %> +"&MenuNo=" +<%= ddlWpm_MenuNo.SelectedValue %> +"&IsMenu=" + IsMenu + "&ParentID=" + ParentID + "&EditInfo=" + EditInfo, "RadWindow1");
            return false;
        }

        function ShowInsertForm(ParentID, IsMenu) {
            window.radopen("WPMAddEdit.aspx?LangID=" +<%= ddlLanguage.SelectedValue %> +"&MenuNo=" +<%= ddlWpm_MenuNo.SelectedValue %> +"&IsMenu=" + IsMenu + "&ParentID=" + ParentID, "RadWindow1");
            return false;
        }

        function WindowClose(sender, eventArgs) {
            var arg = eventArgs.get_argument();
            if (arg) {
                alert("False");
            }
            else {
                //CallBackhideReloadGrid.callback();

                alert("Done");
                refreshGrid(arg);
            }
        }

        function refreshGrid(arg) {
            if (!arg) {
                $find("<%= RadAjaxManager1.ClientID %>").ajaxRequest("Rebind");
            }
            else {
                $find("<%= RadAjaxManager1.ClientID %>").ajaxRequest("RebindAndNavigate");
            }
        }
    </script>--%>
    <style type="text/css">
        .auto-style1 {
            height: 54px;
        }
        .auto-style2 {
            width: 60px;
            height: 54px;
        }
        .auto-style3 {
            text-align: center;
            width: 60px;
            height: 54px;
        }
        .auto-style4 {
            text-align: center;
            width: 50px;
            height: 54px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content_MapPath" runat="server">
    <ul class="breadcrumb no-border no-radius b-b b-light pull-in">
        <li><i class="fa fa-home"></i>Home</li>
        <li>Pages Manager</li>
        <li class="active"><%: Title%></li>
    </ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content_Title" runat="server">
    <h1><%: Title%></h1> 
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content_Main" runat="server">
    <asp:Panel ID="Panel1" runat="server"></asp:Panel>

    <div class="row fontawesome-icon-list">

        <div class="col-md-2">
            <div class="form-group">
                <a id="A_New" href='<%= "WPMAddEdit.aspx?LangID=" + ddlLanguage.SelectedValue + "&MenuNo=" + ddlWpm_MenuNo.SelectedValue +"&IsMenu=" + ddlWpm_MenuNo.SelectedValue + "&ParentID=0" %>' class="btn btn-sm btn-success">
                    <i class="fa fa-plus-circle"></i>New main page
                </a>
            </div>


        </div>
        <div class="col-md-4">
            <div class="form-group">
                <span>Language</span>
                <asp:DropDownList ID="ddlLanguage" runat="server" AutoPostBack="True" CssClass="input-sm form-control  inline " Width="100px">
                </asp:DropDownList>
            </div>

        </div>

        <div class="col-md-2">
            <div class="form-group">
            </div>
        </div>
        <div class="col-md-2">
            <div class="form-group">
                <asp:Panel ID="Panel_MenuNo" runat="server">
                    Menu
                <asp:DropDownList ID="ddlWpm_MenuNo" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlWpm_MenuNo_SelectedIndexChanged" CssClass="input-sm form-control input-s-sm inline v-middle" Width="100px">
                    <asp:ListItem Text="Main Menu" Value="1" />
                    <%--<asp:ListItem Text="Mobile Menu" Value="4" />--%>
                    <asp:ListItem Text="Footer" Value="3" />
                </asp:DropDownList>
                </asp:Panel>
            </div>
        </div>

        <div class="col-md-2">
            <div class="form-group">
                <asp:LinkButton ID="Btn_SaveMenu" runat="server" CommandName="SaveMenu" OnClick="Btn_SaveMenu_Click1" CausesValidation="False" CssClass="btn btn-sm btn-primary " Visible="False">
                        <img alt="" src="/Images/Wpm_Menu-icon.png" style="border: 0px; width: 20px; vertical-align: middle;" /> Save Menu
                </asp:LinkButton>
            </div>
        </div>
    </div>

    <div class="row">

        <div class="col-md-12">
            <section class="panel panel-default">
                <div class="panel-heading">
                    Menu Pages
                        
                </div>

                <div class="panel-body  no-padding">
                    <div id="collapseTwo" class="panel-collapse in">

                        <table id="MenuPages-table" class="table table-striped table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th>Page Name</th>
                                    <th>Title In Menu</th>
                                    <th style="width: 60px" class="text-center hidden">sub page</th>
                                    <th style="width: 60px" class="text-center">Edit Info</th>
                                    <th style="width: 60px" class="text-center">Edit content</th>
                                    <th style="width: 50px" class="text-center">Active</th>
                                    <th style="width: 50px" class="text-center">Publish</th>
                                    <th style="width: 50px" class="text-center">Preview</th>
                                    <th style="width: 50px" class="text-center">Delete</th>
                                    <th style="width: 50px" class="text-center">
                                        <asp:LinkButton ID="Btn_SaveOrder" OnClick="Btn_SaveOrder_Click1" runat="server" CommandName="SaveOrder" CausesValidation="False" CssClass="btn btn-sm btn-warning">
                                            <span class=""><i class="fa fa-save  font Fontsize_20"></i> Save Order</span>
                                        </asp:LinkButton>
                                    </th>

                                </tr>
                            </thead>

                            <tbody>
                                <asp:Repeater ID="Repeater_MenuPages" OnItemCommand="Repeater_MenuPages_ItemCommand1" runat="server">
                                    <ItemTemplate>
                                        <tr>
                                            <td>
                                                <%# Eval("Wpm_PageName","{0}") %>
                                                <%--<asp:Label ID="LblPageName" runat="server" Text='<%#Getname(Eval("Wpm_PageName","{0}"),Eval("Wpm_PageUID","{0}"))%>'></asp:Label>--%>
                                            </td>
                                            <td>
                                                <%# Eval("Wpm_PageTitleInMenu", "{0}")%>
                                            </td>
                                            <td class="text-center hidden">
                                                <asp:Panel ID="PanelEnableSub" runat="server" Visible='<%# Eval("Wpm_EnableSub") %>'>
                                                    <a class="GridCommand_a" href='<%# "WPMAddEdit.aspx?LangID=" + ddlLanguage.SelectedValue + "&MenuNo=" + ddlWpm_MenuNo.SelectedValue +"&IsMenu=1&ParentID="+Eval("Wpm_PageUID","{0}") %>'>
                                                        <i class="fa fa-plus-circle green fa-2x"></i>
                                                    </a>
                                                </asp:Panel>
                                            </td>

                                            <td class="text-center">
                                                <asp:Panel ID="PanelEditInfo1" runat="server" Visible='<%# Eval("Wpm_EnableEditInfo") %>'>
                                                    <a class="GridCommand_a" href='<%# "WPMAddEdit.aspx?PageID=" + Eval("Wpm_PageUID", "{0}") + "&LangID=" + ddlLanguage.SelectedValue + "&MenuNo=" + ddlWpm_MenuNo.SelectedValue + "&IsMenu="+ ddlWpm_MenuNo.SelectedValue + "&ParentID=" + Eval("Wpm_ParentID", "{0}") + "&EditInfo=1"%>'>
                                                        <i class="fa fa-info-circle fa-2x" title="Edit page info"></i>
                                                    </a>
                                                </asp:Panel>
                                            </td>
                                            <td class="text-center">
                                                <asp:Panel ID="PanelEnableEdit1" runat="server" Visible='<%# Eval("Wpm_EnableEdit") %>'>
                                                    <a class="GridCommand_a" href='<%# "WPMAddEdit.aspx?PageID=" + Eval("Wpm_PageUID", "{0}") + "&LangID=" + ddlLanguage.SelectedValue + "&MenuNo=" + ddlWpm_MenuNo.SelectedValue + "&IsMenu=1" + "&ParentID=" + Eval("Wpm_ParentID", "{0}") + "&EditInfo=0"%>'>
                                                        <i class="fa fa-edit fa-2x green" title="Edit page content"></i>
                                                    </a>
                                                </asp:Panel>
                                            </td>
                                            <td class="text-center">
                                                <asp:LinkButton ID="BtnActive" runat="server" CommandName="Active" CommandArgument='<%# Eval("Wpm_PageUID", "{0}")%>' CausesValidation="False">
                                                    <%#Eval("Wpm_IsActive", "{0}") == "True" ? "<i class='fa  fa-circle text-success font Fontsize_20 fa-2x'>" : "<i class='fa  fa-circle-thin text-default font Fontsize_20 fa-2x'>"%> </i>
                                                </asp:LinkButton>
                                            </td>
                                            <td class="text-center">
                                                <asp:LinkButton ID="BtnPublish" runat="server" CommandName="Publish" CommandArgument='<%# Eval("Wpm_PageUID", "{0}")%>' CausesValidation="False">
                                                      <%#Eval("Wpm_Publish", "{0}") == "True" ? "<i class='fa fa-eye text-success font Fontsize_20 fa-2x'>" : "<i class='fa fa-eye-slash text-default font Fontsize_20 fa-2x'>"%> </i>
                                                </asp:LinkButton>

                                            </td>
                                            <td class="text-center">
                                                <asp:HyperLink ID="HLPreview" Visible='<%# Eval("Wpm_EnablePreview") %>' runat="server"
                                                    NavigateUrl='<%# FormatURL(Eval("Wpm_PageName", "{0}"), Eval("Wpm_HttpURL", "{0}"))%>' ToolTip="Preview"
                                                    Target="_blank">
                                                    <i class="fa fa-search fa-2x" title="Preview"></i>
                                                </asp:HyperLink>
                                            </td>
                                            <td class="text-center">
                                                <%--Visible='<%# Deletelevel(Eval("Wpm_PageUID","{0}"),Eval("Wpm_EnableDelete")) %>'--%>
                                                <asp:LinkButton ID="BtnDelete" runat="server" CausesValidation="false" CommandArgument='<%# Eval("Wpm_PageUID", "{0}")%>'
                                                    CommandName="Delete" OnClientClick="javascript:return confirm('Are you sure do you want to Delete this Page? ')"
                                                    ToolTip="Delete" Visible='<%# Deletelevel(Eval("Wpm_PageUID","{0}"),(bool)Eval("Wpm_EnableDelete")) %>'> 
                                                      <i class="fa fa-trash-o text-danger font Fontsize_20 fa-2x" ></i> 
                                                </asp:LinkButton>

                                            </td>
                                            <td>
                                                <asp:TextBox ID="TxtOrderBy" runat="server" ClientIDMode="Static" CssClass="input-xs OrderBy "
                                                    Text='<%# Eval("Wpm_DisplayOrder","{0}") %>'>
                                                </asp:TextBox>
                                            </td>

                                        </tr>
                                        <div class="hidden">
                                            <asp:Label ID="LblUID" runat="server" Text='<%# Eval("Wpm_PageUID","{0}") %>' Visible="false"></asp:Label>
                                            <asp:Label ID="PageName" runat="server" Text='<%#Eval("Wpm_PageName","{0}") %>' Visible="false"></asp:Label>
                                            <asp:Label ID="PageTitle" runat="server" Text='<%#Eval("Wpm_PageTitle","{0}") %>'
                                                Visible="false"></asp:Label>
                                            <asp:Label ID="PageTitleInMenu" runat="server" Text='<%#Eval("Wpm_PageTitleInMenu","{0}") %>'
                                                Visible="false"></asp:Label>
                                            <%-- <asp:Label ID="Content" runat="server" Text='<%#Eval("Wpm_Content","{0}") %>' Visible="false"></asp:Label>--%>
                                            <asp:Label ID="ParentID" runat="server" Text='<%#Eval("Wpm_ParentID","{0}") %>' Visible="false"></asp:Label>
                                            <asp:Label ID="MetaKeywords" runat="server" Text='<%#Eval("Wpm_MetaKeywords","{0}") %>'
                                                Visible="false"></asp:Label>
                                            <asp:Label ID="MetaDescription" runat="server" Text='<%#Eval("Wpm_MetaDescription","{0}") %>'
                                                Visible="false"></asp:Label>
                                            <asp:Label ID="IsMenuItem" runat="server" Text='<%#Eval("Wpm_IsMenuItem","{0}") %>'
                                                Visible="false"></asp:Label>
                                            <asp:Label ID="ChangeFreq" runat="server" Text='<%#Eval("Wpm_Seo_ChangeFreq","{0}") %>'
                                                Visible="false"></asp:Label>
                                            <asp:Label ID="Priority" runat="server" Text='<%#Eval("Wpm_Seo_Priority","{0}") %>'
                                                Visible="false"></asp:Label>
                                            <asp:Label ID="HttpURL" runat="server" Text='<%#Eval("Wpm_HttpURL","{0}") %>' Visible="false"></asp:Label>
                                            <asp:Label ID="PageTarget" runat="server" Text='<%#Eval("Wpm_PageTarget","{0}") %>'
                                                Visible="false"></asp:Label>
                                        </div>
                                    </ItemTemplate>

                                </asp:Repeater>


                            </tbody>
                        </table>
                    </div>
                </div>
            </section>

        </div>

    </div>

    <div class="row fontawesome-icon-list">
        <div class="col-md-3">
            <div class="form-group">
                <a id="A1" href='<%= "WPMAddEdit.aspx?LangID=" + ddlLanguage.SelectedValue + "&IsMenu=0" %>' class="btn btn-sm btn-success">
                    <i class="fa fa-plus-circle"></i>New main independent page
                </a>
            </div>
        </div>
        <div class="col-md-9">
            <div class="form-group">
            </div>
        </div>

    </div>
    <div class="row">

        <div class="col-md-12">
            <section class="panel panel-default">
                <div class="panel-heading">
                    Independent Pages 
                </div>
                <div class="panel-body no-padding">
                    <div id="collapseOne" class="panel-collapse in">
                        <table id="IndependentPages-table" class="table table-striped table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th>Page Name</th>
                                    <th style="width: 50px" class="text-center">Edit Info</th>
                                    <th style="width: 50px" class="text-center">Edit content</th>
                                    <th style="width: 50px" class="text-center">Preview</th>
                                    <th style="width: 50px" class="text-center">Delete</th>
                                </tr>
                            </thead>

                            <tbody>
                                <asp:Repeater ID="Repeater_IndependentPages" runat="server" OnItemCommand="Repeater_IndependentPages_ItemCommand1">
                                    <ItemTemplate>
                                        <tr>
                                            <td>
                                                <%#Eval("Wpm_PageName", "{0}")%>
                                                <%--<asp:Label ID="LabelPageName" runat="server" Text='<%#Getname(Eval("Wpm_PageName","{0}"),Eval("Wpm_PageUID","{0}"))%>'></asp:Label>--%>
                                            </td>
                                             <td class="text-center">
                                                <asp:Panel ID="PanelEditInfo1" runat="server" Visible='<%# Eval("Wpm_EnableEditInfo") %>'>
                                                    <a class="GridCommand_a" href='<%# "WPMAddEdit.aspx?PageID=" + Eval("Wpm_PageUID", "{0}") + "&LangID=" + ddlLanguage.SelectedValue + "&IsMenu=0&EditInfo=1"%>'>
                                                        <i class="fa fa-info-circle fa-2x" title="Edit page info"></i>
                                                    </a>
                                                </asp:Panel>
                                            </td>
                                            <td class="text-center">
                                                <asp:Panel ID="PanelEnableEdit1" runat="server" Visible='<%# Eval("Wpm_EnableEdit") %>'>
                                                    <a class="GridCommand_a" href='<%# "WPMAddEdit.aspx?PageID=" + Eval("Wpm_PageUID", "{0}") + "&LangID=" + ddlLanguage.SelectedValue + "&IsMenu=0&EditInfo=0"%>'>
                                                        <i class="fa fa-edit fa-2x green" title="Edit page content"></i>
                                                    </a>
                                                </asp:Panel>
                                            </td>
                                            <td>
                                                <asp:HyperLink ID="HLPreview" Visible='<%# Eval("Wpm_EnablePreview") %>' runat="server"
                                                    NavigateUrl='<%# FormatURL(Eval("Wpm_PageName", "{0}"), Eval("Wpm_HttpURL", "{0}"))%>' ToolTip="Preview"
                                                    Target="_blank">
                                                    <i class="fa fa-search fa-2x" title="Preview"></i>
                                                </asp:HyperLink>
                                            </td>
                                            <td>
                                                <asp:LinkButton ID="BtnDelete" runat="server" CausesValidation="false" CommandArgument='<%# Eval("Wpm_PageUID", "{0}")%>'
                                                    CommandName="Delete" OnClientClick="javascript:return confirm('Are you sure do you want to Delete this Page? ')"
                                                    ToolTip="Delete" Visible='<%# Deletelevel(Eval("Wpm_PageUID","{0}"),(bool)Eval("Wpm_EnableDelete")) %>'> 
                                                      <i class="fa fa-trash-o text-danger font Fontsize_20 fa-2x" ></i> 
                                                </asp:LinkButton>

                                            </td>
                                            <td class="hidden">

                                                <asp:Label ID="LblUID" runat="server" Text='<%# Eval("Wpm_PageUID","{0}") %>' Visible="false"></asp:Label>
                                                <asp:Label ID="PageName" runat="server" Text='<%#Eval("Wpm_PageName","{0}") %>' Visible="false"></asp:Label>
                                                <asp:Label ID="PageTitle" runat="server" Text='<%#Eval("Wpm_PageTitle","{0}") %>'
                                                    Visible="false"></asp:Label>
                                                <asp:Label ID="ParentID" runat="server" Text='<%#Eval("Wpm_ParentID","{0}") %>' Visible="false"></asp:Label>
                                                <asp:Label ID="MetaKeywords" runat="server" Text='<%#Eval("Wpm_MetaKeywords","{0}") %>'
                                                    Visible="false"></asp:Label>
                                                <asp:Label ID="MetaDescription" runat="server" Text='<%#Eval("Wpm_MetaDescription","{0}") %>'
                                                    Visible="false"></asp:Label>
                                                <asp:Label ID="IsMenuItem" runat="server" Text='<%#Eval("Wpm_IsMenuItem","{0}") %>'
                                                    Visible="false"></asp:Label>
                                                <asp:Label ID="ChangeFreq" runat="server" Text='<%#Eval("Wpm_Seo_ChangeFreq","{0}") %>'
                                                    Visible="false"></asp:Label>
                                                <asp:Label ID="Priority" runat="server" Text='<%#Eval("Wpm_Seo_Priority","{0}") %>'
                                                    Visible="false"></asp:Label>
                                                <asp:Label ID="HttpURL" runat="server" Text='<%#Eval("Wpm_HttpURL","{0}") %>' Visible="false"></asp:Label>
                                                <asp:Label ID="PageTarget" runat="server" Text='<%#Eval("Wpm_PageTarget","{0}") %>'
                                                    Visible="false"></asp:Label>

                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:Repeater>


                            </tbody>
                        </table>
                    </div>
                </div>


            </section>


        </div>


    </div>

    <asp:HiddenField ID="Hf_MainTypeID" runat="server" />

</asp:Content>

