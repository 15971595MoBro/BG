<%@ Page Title="Manage Product Attribute Values" Language="C#" MasterPageFile="~/Admins/AdminMaster.Master" AutoEventWireup="true" CodeBehind="PopupProductAttributeValues.aspx.cs" Inherits="BGBeauty_Website.Admins.Modules.Products.PopupProductAttributeValues" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="/Admins/assets/global/plugins/bootstrap-colorpicker/css/colorpicker.css" rel="stylesheet" type="text/css" />
    <link href="/Admins/assets/global/plugins/jquery-minicolors/jquery.minicolors.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content_Title" runat="server">
    <h1><%= Page.Title %></h1>
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
            <%= Page.Title %>
        </li>
    </ul>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Content_Note" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="Content_Main" runat="server">
    <div class="portlet light borderedv">
        <div class="portlet-title">
            <div class="caption font-dark">

                <span class="caption-subject bold uppercase"><%= Page.Title %></span>
            </div>
            <div class="tools">
                <a class="collapse" href="javascript:;"></a>
            </div>

        </div>

        <div class="table-toolbar">
        </div>
        <div class="row">

            <div class="col-md-12">
                <asp:Repeater ID="RepeaterAttributeValue" runat="server" OnItemCommand="RepeaterAttributeValue_ItemCommand1">
                    <HeaderTemplate>
                        <table id="Tbl_UsersList" class="table table-striped table-bordered table-hover order-column">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Name</th>
                                    <th>Order</th>
                                    <th></th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <%--Getname(Eval("Name", "{0}"), Eval("ID", "{0}"))--%>
                            <td><%# Eval("ID")%></td>
                            <td><%# Eval("ColorSquaresRgb", "{0}") != "" ? Eval("Name", "{0}")  + " - "+Eval("ColorSquaresRgb", "{0}") + " <span class='minicolors-swatch minicolors-sprite'><span class='minicolors-swatch-color' style='background-color: "+Eval("ColorSquaresRgb", "{0}")+";   width: 25px;height: 25px;'>.</span></span>" : Eval("Name", "{0}")  %> <i class="fa fa-tr"></i></td>
                            <td><%# Eval("DisplayOrder")%></td>
                            <td>
                                <asp:LinkButton ID="BtnEdit" runat="server" CommandName="Edit" CommandArgument='<%# Eval("ID")%>'><li class='fa fa-edit '></li> Edit</asp:LinkButton>
                            </td>
                            <td>
                                <asp:LinkButton ID="BtnDelete" runat="server" CommandName="Delete" CommandArgument='<%# Eval("ID")%>' CssClass=" font-red" OnClientClick="javascript:return confirm('Are you sure do you want to Delete this value ? ')"><li class='fa fa-trash '></li> Delete</asp:LinkButton>


                            </td>
                        </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                        </tbody>
                        </table>
                    </FooterTemplate>
                </asp:Repeater>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Add a new attribute 
                    </div>
                    <div class="panel-body">


                        <div class=" col-sm-7">
                            <div class="form-group">
                                <label>
                                    Name 
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="TxtValueName" ValidationGroup="Attribute" SetFocusOnError="True"></asp:RequiredFieldValidator>

                                </label>
                                <asp:TextBox ID="TxtValueName" runat="server" ClientIDMode="Static" CssClass="input-xs form-control ">
                                </asp:TextBox>
                            </div>
                        </div>
                        <asp:Panel ID="Panel_Color" runat="server" class=" col-sm-3">
                            <div class="form-group">
                                <label>
                                    Color
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="TxtColor" ValidationGroup="Attribute" SetFocusOnError="True"></asp:RequiredFieldValidator>

                                </label>

                                <asp:TextBox ID="TxtColor" runat="server" CssClass="form-control Color" ClientIDMode="Static" data-control="hue"></asp:TextBox>

                            </div>
                        </asp:Panel>
                        <div class=" col-sm-2">
                            <div class="form-group">
                                <label>Display Order</label>
                                <asp:TextBox ID="TxtattributeDisplayOrder" runat="server" ClientIDMode="Static" CssClass="input-xs OrderBy " Text="0">
                                </asp:TextBox>
                            </div>
                        </div>
                        <div class=" col-sm-12">
                            <div class="form-group text-center">
                                <asp:LinkButton ID="BtnSaveAttribute" runat="server" OnClick="BtnSaveAttribute_Click1" Text="Save" CssClass="btn btn-primary" ValidationGroup="Attribute"><i class="fa fa-save"></i> Save</asp:LinkButton>
                                <asp:LinkButton ID="BtnCancelAttribute" runat="server" Text="Cancel" OnClick="BtnCancelAttribute_Click1" CssClass="btn btn-default" CausesValidation="False"> Cancel</asp:LinkButton>
                            </div>
                        </div>
                        <asp:HiddenField ID="HF_ProductAttributeMappingId" runat="server" />
                        <asp:HiddenField ID="HF_AttributeValueID" runat="server" />

                    </div>

                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="Content_Script" runat="server">

    <script src="/Admins/assets/global/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.js" type="text/javascript"></script>

    <script src="/Admins/assets/global/plugins/jquery-minicolors/jquery.minicolors.min.js" type="text/javascript"></script>

    <script>
        $('.Color').each(function () {
            //
            // Dear reader, it's actually very easy to initialize MiniColors. For example:
            //
            //  $(selector).minicolors();
            //
            // The way I've done it below is just for the demo, so don't get confused
            // by it. Also, data- attributes aren't supported at this time...they're
            // only used for this demo.
            //
            $(this).minicolors({
                control: $(this).attr('data-control') || 'hue',
                defaultValue: $(this).attr('data-defaultValue') || '',
                inline: $(this).attr('data-inline') === 'true',
                letterCase: $(this).attr('data-letterCase') || 'lowercase',
                opacity: $(this).attr('data-opacity'),
                position: $(this).attr('data-position') || 'bottom left',
                change: function (hex, opacity) {
                    if (!hex) return;
                    if (opacity) hex += ', ' + opacity;
                    if (typeof console === 'object') {
                        console.log(hex);
                    }
                },
                theme: 'bootstrap'
            });

        });
    </script>
</asp:Content>
