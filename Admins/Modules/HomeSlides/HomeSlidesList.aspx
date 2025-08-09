<%@ Page Title="" Language="C#" MasterPageFile="~/Admins/AdminMaster.Master" AutoEventWireup="true" CodeBehind="HomeSlidesList.aspx.cs" Inherits="BGBeauty_Website.Admins.Modules.HomeSlides.HomeSlidesList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content_Title" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content_Toolbar" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content_MapPath" runat="server">
    <ul class="breadcrumb">
        <li><a href="#">Home</a><i class="fa fa-circle"></i></li>
        <li><a>Website Manager</a><i class="fa fa-circle"></i></li>
        <li class="active">Home Slides</li>
    </ul>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Content_Note" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="Content_Main" runat="server">
    
    <div class="row fontawesome-icon-list">
        <asp:DropDownList ID="ddlLanguage" runat="server" AutoPostBack="True" Width="100px" Visible="False">
        </asp:DropDownList>
        <div class="col-md-2">
            <div class="form-group">
                <a href='<%= "HomeSlidesAddEdit.aspx?SliderNo=" + ddlSliderNo.SelectedValue+"&LangID="+ddlLanguage.SelectedValue %>' class="btn btn-sm btn-success"><i class="fa fa-plus-circle "></i>New home slides</a>
            </div>
        </div>

        <div class="col-md-4">
            <%--<asp:LinkButton ID="BtnRefresh" runat="server" CommandName="RebindGrid"
                CausesValidation="False"><i class="fa fa-refresh " ></i> Refresh list</asp:LinkButton>--%>
        </div>
        <div class="col-md-4" style="display: none;">
            <div>
                Slider No. 
                <asp:DropDownList ID="ddlSliderNo" runat="server" AutoPostBack="True" CssClass="input-sm form-control input-s-sm inline v-middle"
                    Width="60px">
                    <asp:ListItem runat="server" Text="Main Slider" Value="1" Selected="True" />
                    <%--<asp:ListItem runat="server" Text="Inner slider or any other Name" Value="2" Selected="True" />--%>
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
                    Home Slides List
                </div>

                <div id="collapseOne" class="panel-collapse in">
                    <table id="dynamic-table" class="table table-striped table-bordered table-hover">
                        <thead>
                            <tr>
                                <th>Slide Title</th>
                                <th>Slide URL</th>
                                <th style="width: 50px">Edit Info</th>
                                <th style="width: 50px">Delete</th>
                                <th style="width: 50px">
                                    <asp:LinkButton ID="Btn_SaveOrder" runat="server" CommandName="SaveOrder" OnClick="Btn_SaveOrder_Click1" CausesValidation="False" CssClass="btn btn-sm btn-warning">
                                            <span class=""><i class="fa fa-save  font Fontsize_20"></i> Save Order</span>
                                    </asp:LinkButton></th>
                                
                            </tr>
                        </thead>
                        <tbody>
                            <asp:Repeater ID="Repeater_HomeSlides" runat="server" OnItemCommand="Repeater_HomeSlides_ItemCommand1">
                                <ItemTemplate>
                                    <tr>
                                        <td>
                                            <asp:Label ID="LblSlideTitle" runat="server" Text='<%#Eval("SlideTitle", "{0}")%>'>
                                            </asp:Label>
                                        </td>
                                        <th>
                                            <asp:HyperLink ID="HlSlideURL" runat="server"
                                                Text='<%# Eval("SlideURL","{0}")%>' Target="_blank"
                                                NavigateUrl='<%# Eval("SlideURL","{0}")%>'></asp:HyperLink>
                                        </th>
                                        <th>
                                            <a href='<%# "HomeSlidesAddEdit.aspx?SliderNo=" + ddlSliderNo.SelectedValue+"&ID=" + Eval("SlideUID", "{0}")+"&LangID="+ddlLanguage.SelectedValue%>'>
                                                <i class="fa fa-edit fa-2x font Fontsize_20"></i></a>
                                        </th>
                                        <th>
                                            <asp:LinkButton ID="BtnDelete" runat="server" CausesValidation="false" CommandArgument='<%# Eval("SlideUID", "{0}")%>'
                                                CommandName="Delete" ImageUrl="/admin/Images/wpm_Delete.gif" OnClientClick="javascript:return confirm('Are you sure do you want to Delete this Slide ? ')"
                                                ToolTip="Delete"> <i class="fa fa-trash-o fa-2x text-danger " ></i> </asp:LinkButton>
                                        </th>
                                        <th>
                                            <asp:TextBox ID="TxtOrderBy" runat="server" ClientIDMode="Static" CssClass="input-xs OrderBy " Text='<%# (string)Eval("SlideOrderBy", "{0}") %>' TabIndex='<%# (int)Eval("SlideUID") %>' meta:resourcekey="TxtOrderByResource1"></asp:TextBox>
                                        </th>
                                        
                                    </tr>
                                </ItemTemplate>

                            </asp:Repeater>
                        </tbody>
                    </table>
                </div>

            </section>

        </div>


    </div>
    <div class="row">
        <div class="col-md-12">
            <section class="panel panel-default">
                <div class="panel-heading">
                    Example
                </div>
                <div style="text-align: center; width: 100%">
                    <asp:Image ID="Image_Sample" runat="server" Style="max-width: 1000px; width: 90%;" />
                </div>
            </section>
        </div>
    </div>

    <asp:HiddenField ID="hf_w" runat="server" />
    <asp:HiddenField ID="hf_h" runat="server" />
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="Content_Script" runat="server">
</asp:Content>
