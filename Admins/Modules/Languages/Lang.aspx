<%@ Page Title="Language Page" Language="C#" MasterPageFile="~/Admins/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Lang.aspx.cs" Inherits="BGBeauty_Website.Admins.Modules.Languages.Lang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content_Title" runat="server">
    <ul class="breadcrumb no-border no-radius b-b b-light pull-in">
        <li><i class="fa fa-home"></i>Home<i class="fa fa-circle"></i></li>
        <li>Configuration <i class="fa fa-circle"></i></li>
        <li class="active"><%: Title%></li>
    </ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content_Toolbar" runat="server">
    <%--<h1><%: Title%></h1> --%>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content_MapPath" runat="server">
    <div class="row fontawesome-icon-list">

        <div class="col-md-2">
            <div class="form-group">
                <a href='<%= "LangAddEdit.aspx"%>' class="btn btn-sm btn-success"><i class="fa fa-plus-circle "></i>New Languages </a>
            </div>
        </div>

        <div class="col-md-2">
            <div class="form-group">
                <span>Language</span>
                <asp:DropDownList ID="ddlLanguage" runat="server" AutoPostBack="True" CssClass="input-sm form-control  inline" Width="100px">
                </asp:DropDownList>
            </div>

            <%--<asp:LinkButton ID="BtnRefresh" runat="server" CommandName="RebindGrid"
                CausesValidation="False"><i class="fa fa-refresh " ></i> Refresh list</asp:LinkButton>--%>
        </div>
        <div class="col-md-4" style="display: none;">
            <div>
                Slider No. 
                <asp:DropDownList ID="ddlSliderNo" runat="server" AutoPostBack="True" CssClass="input-sm form-control input-s-sm inline v-middle"
                    Width="60px">
                    <asp:ListItem runat="server" Text="1" Value="1" Selected="True" />
                </asp:DropDownList>
            </div>
        </div>
        <div class="col-md-2">
        </div>

    </div>
    <div class="row">

        <div class="col-md-12">
            <section class="panel panel-default">
                <div class="panel-heading">
                    Languages Page
                        
                </div>

                <div class="panel-body  no-padding">
                    <div id="collapseTwo" class="panel-collapse in">

                        <table id="MenuPages-table" class="table table-striped table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th>Language Name</th>
                                    <th>Language Symbol</th>
                                    <th style="width: 60px" class="text-center">Edit Info</th>
                                   
                                    
                                    <th style="width: 50px" class="text-center">Publish</th>
                                 
                                    <th style="width: 50px" class="text-center">Delete</th>
                                    <th style="width: 50px" class="text-center">
                                        <asp:LinkButton ID="Btn_SaveOrder" runat="server" CommandName="SaveOrder" CausesValidation="False" OnClick="Btn_SaveOrder_Click"  CssClass="btn btn-sm btn-warning">
                                            <span class=""><i class="fa fa-save  font Fontsize_20"></i> Save Order</span>
                                        </asp:LinkButton>
                                    </th>

                                </tr>
                            </thead>

                            <tbody>
                                <asp:Repeater ID="Repeater_MenuPages" runat="server" OnItemCommand="Repeater_Language_ItemCommand">
                                    <ItemTemplate>
                                        <tr>
                                            <td>
                                                <%# Eval("Name","{0}") %>
                                                <%--<asp:Label ID="LblPageName" runat="server" Text='<%#Getname(Eval("Wpm_PageName","{0}"),Eval("Wpm_PageUID","{0}"))%>'></asp:Label>--%>
                                            </td>
                                            <td>
                                                <%# Eval("LanguageCulture", "{0}")%>
                                            </td>
                

                                            <td class="text-center">
                                                <asp:Panel ID="PanelEditInfo1" runat="server" >
                                                    <a class="GridCommand_a" href='<%# "LangAddEdit.aspx?LangID=" + Eval("LangUID", "{0}") %>'>
                                                        <i class="fa fa-info-circle fa-2x" title="Edit page info"></i>
                                                    </a>
                                                </asp:Panel>
                                            </td>
  

                                            <td class="text-center">
                                                <asp:LinkButton ID="BtnPublish" runat="server" CommandName="Publish" CommandArgument='<%# Eval("LangUID", "{0}")%>' CausesValidation="False">
                                                      <%# (bool)Eval("Published") == true ?  "<i class='fa fa-eye text-success font Fontsize_20 fa-2x'>": "<i class='fa fa-eye-slash text-default font Fontsize_20 fa-2x'>" %> </i>
                                                </asp:LinkButton>

                                            </td>
                                        <td>
                                            <%--<asp:LinkButton ID="BtnDelete" runat="server" CausesValidation="false" 
                                                CommandName="Delete" ImageUrl="/Admins/Images/wpm_Delete.gif" OnClientClick="javascript:return confirm('Are you sure do you want to Delete this Language ? ')"
                                                 OnClick="Btn_DeleteLanguage_Click"> <i class="fa fa-trash-o fa-2x text-danger " ></i> </asp:LinkButton>--%>
                                            <asp:LinkButton ID="BtnDelete" ImageUrl="/Admins/Images/wpm_Delete.gif" CommandArgument='<%# Eval("LangUID", "{0}")%>' runat="server" CommandName="Delete" CausesValidation="False"  OnClientClick="javascript:return confirm('Are you sure do you want to Delete this Language ? ')"   >
                                            <i class="fa fa-trash-o fa-2x text-danger"></i> 
                                        </asp:LinkButton>
                                        </td>

                                            <td>
                                                <asp:TextBox ID="TxtOrderBy" runat="server" ClientIDMode="Static" CssClass="input-xs OrderBy "
                                                    Text='<%# Eval("DisplayOrder","{0}") %>'>
                                                </asp:TextBox>
                                            </td>

                                        </tr>
                                        <div class="hidden">
                                            <asp:Label ID="LblUID" runat="server" Text='<%# Eval("LangUID","{0}") %>' Visible="false"></asp:Label>
                                            <asp:Label ID="PageName" runat="server" Text='<%#Eval("Name","{0}") %>' Visible="false"></asp:Label>
                                            <asp:Label ID="PageTitle" runat="server" Text='<%#Eval("LanguageCulture","{0}") %>'
                                                Visible="false"></asp:Label>
                                            
                                            <%-- <asp:Label ID="Content" runat="server" Text='<%#Eval("Wpm_Content","{0}") %>' Visible="false"></asp:Label>--%>

                                            
                                            
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
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Content_Note" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="Content_Main" runat="server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="Content_Script" runat="server">
</asp:Content>
