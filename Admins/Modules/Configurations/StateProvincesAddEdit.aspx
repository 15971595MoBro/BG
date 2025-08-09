<%@ Page Title="" Language="C#" MasterPageFile="~/Admins/AdminMaster.Master" AutoEventWireup="true" CodeBehind="StateProvincesAddEdit.aspx.cs" Inherits="BGBeautyProject_Website.Admins.Modules.Configurations.StateProvincesAddEdit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content_Title" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content_Toolbar" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content_MapPath" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Content_Note" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="Content_Main" runat="server">
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
                <div class="portlet-body form">
                    <div class="col-sm-12">
                        <div class=" portlet-input pull-right margin-bottom-20">

                            <asp:Button ID="BtnSubmit" runat="server" Text="Submit" OnClick="BtnSubmit_Click1" CssClass="btn btn-primary" />
                            <a class="btn btn-default" href="/Admins/Modules/Configurations/StateProvincesList?countryid=<%:DdlCountries.SelectedValue %>">Cancel</a>
                            <%--<asp:LinkButton ID="Btn_Delete" runat="server" CssClass="btn btn-danger" OnClientClick="javascript:return confirm('Are you sure do you want to Delete this category? ')"><i class="fa fa-trash "></i> Delete</asp:LinkButton>--%>
                        </div>
                    </div>

                    <div class="form-body">
                        <div class="row ">
                            <div class=" col-sm-6">
                                <div class="form-group">
                                    <label class="control-label">
                                        Country
                                        
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="DdlCountries"
                                        CssClass="text-danger" ErrorMessage="The Country field is required." SetFocusOnError="True" Display="Dynamic" />

                                    </label>
                                    <asp:DropDownList runat="server" ID="DdlCountries" CssClass="form-control" AutoPostBack="true">
                                    </asp:DropDownList>
                                </div>
                            </div>
<%--                            <div class=" col-sm-6">
                                <div class="form-group">
                                    <label class="control-label">State</label>
                                    <asp:DropDownList runat="server" ID="DdlStateProvinces" CssClass="form-control">
                                    </asp:DropDownList>
                                </div>
                            </div>--%>

                            <div class=" col-sm-6">
                                <div class="form-group">
                                   <label>State/Province Name</label> 
                                   <asp:TextBox ID="TxtStateProvince" runat="server" ClientIDMode="Static" CssClass="form-control"   >
                                   </asp:TextBox>
                                </div>
                            </div>
    

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
    <asp:HiddenField ID="HF_StateProvinceID" runat="server" />
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="Content_Script" runat="server">
</asp:Content>
