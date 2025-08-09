<%@ Page Title="" Language="C#" MasterPageFile="~/Admins/AdminMaster.Master" AutoEventWireup="true" CodeBehind="ShippingFeesList.aspx.cs" Inherits="BGBeauty_Website.Admins.Modules.Sales.ShippingFeesList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="/Admins/assets/global/plugins/select2/css/select2.min.css" rel="stylesheet" type="text/css" />
    <link href="/Admins/assets/global/plugins/select2/css/select2-bootstrap.min.css" rel="stylesheet" type="text/css" />
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
            <a href="#">Sales</a>
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
    <div class="row ">
        <div class="col-sm-12">
            <div class="portlet light bordered ">
                <div class="portlet-title">
                    <div class="caption font-dark">
                        <%--<i class="icon-settings font-dark"></i>--%>
                        <span class="caption-subject bold uppercase"><%= Page.Title %> </span>
                    </div>
                    <div class="tools">
                        <a class="collapse" href="javascript:;"></a>
                    </div>

                </div>
                <div class="table-toolbar">
                    <div class="row">
                        <div class="col-sm-3">
                            <asp:DropDownList ID="DdlCountries" runat="server" OnSelectedIndexChanged="DdlCountries_SelectedIndexChanged1" AutoPostBack="True" CssClass="form-control"></asp:DropDownList>
                        </div>
                        <div class="col-sm-3">
                            <asp:DropDownList ID="DdlStateProvinces" runat="server" OnSelectedIndexChanged="DdlStateProvinces_SelectedIndexChanged1" AutoPostBack="True" CssClass="form-control"></asp:DropDownList>
                        </div>
                        <div class="col-sm-3">
                        </div>
                        <div class="col-md-3 " style="text-align:right">
                            <div class="btn-group">
                                <a class="btn  btn-success btn-sm btn-block" href="/Admins/Modules/Sales/ShippingFeesAddEdit?CountryID=<%:DdlCountries.SelectedValue %>" aria-expanded="false">New Shipping Fees
                                </a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="portlet-body">


                    <table id="Tbl_ShippingFeesList" class="table table-striped table-bordered table-hover order-column ">
                        <thead>
                            <tr>

                                <th>
                                    <h4 class="panel-title">ID</h4>
                                </th>
                                <th>
                                    <h4 class="panel-title">Country</h4>
                                </th>
                                <th>
                                    <h4 class="panel-title">State</h4>
                                </th>
                                <th style="width: 80px">
                                    <h4 class="panel-title">Items Count</h4>
                                </th>

                                <th style="width: 100px">
                                    <h4 class="panel-title">Shipping Fees</h4>
                                </th>
                                <th style="width: 50px"></th>
                                <th style="width: 100px">
                                    <asp:LinkButton ID="BtnDeleteAll" runat="server" CommandName="Del" CommandArgument='<%# Eval("ShippingFees_ID")%>' class="btn btn-danger" OnClientClick="javascript:return confirm('Are you sure do you want to Delete all Shipping Fees? ')" Visible="False">Delete All</asp:LinkButton></th>
                            </tr>
                        </thead>
                        <tbody id="Tbody_ShippingFeesList">
                            <asp:Repeater ID="Repeater_ShippingFeesList" runat="server" OnItemCommand="Repeater_ShippingFeesList_ItemCommand1">
                                <ItemTemplate>
                                    <tr>
                                        <td class="product-name-td" style="padding: 5px">
                                            <%#Eval("ShippingFees_ID", "{0}") %>
                                        </td>
                                        <td>
                                            <div class="qty-holder">
                                                <%# Eval("CountryName", "{0}")%>
                                            </div>
                                        </td>
                                        <td>
                                            <div class="qty-holder">
                                                <%# Eval("StateProvinceName", "{0}")%>
                                            </div>
                                        </td>
                                        <td>
                                            <div class="qty-holder">
                                                <%# Eval("ShippingItemsCount", "{0}")%>
                                            </div>
                                        </td>

                                        <td>
                                            <span class="text-primary">
                                                <%# Eval("ShippingFees", "{0:0.##}") + " " + Common.GeneralUtilities.AppSettings("currency")%>                                        
                                            </span>
                                        </td>
                                        <td class="text-center">
                                            <asp:HyperLink ID="HyperLink1" class="btn btn-primary" runat="server" NavigateUrl='<%# "ShippingFeesAddEdit?CountryID=" + DdlCountries.SelectedValue + "&ID=" + Eval("ShippingFees_ID", "{0}")%>'><li class='fa fa-edit '></li> Edit</asp:HyperLink>
                                        </td>
                                        <td>
                                            <asp:LinkButton runat="server" CommandName="Del" CommandArgument='<%# Eval("ShippingFees_ID")%>' class="btn btn-danger" OnClientClick="javascript:return confirm('Are you sure do you want to Delete this Order? ')">Delete</asp:LinkButton></td>
                                    </tr>
                                </ItemTemplate>
                            </asp:Repeater>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

    </div>
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="Content_Script" runat="server">
     <script src="/Admins/assets/global/plugins/bootstrap-wysihtml5/wysihtml5-0.3.0.js" type="text/javascript"></script>
    <script src="/Admins/assets/global/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.js" type="text/javascript"></script>
    <script src="/Admins/assets/global/plugins/select2/js/select2.full.min.js" type="text/javascript"></script>

    <script>


        function window_open(URL, w, h) {
            // Fixes dual-screen position                         Most browsers      Firefox
            var dualScreenLeft = window.screenLeft != undefined ? window.screenLeft : screen.left;
            var dualScreenTop = window.screenTop != undefined ? window.screenTop : screen.top;

            var width = window.innerWidth ? window.innerWidth : document.documentElement.clientWidth ? document.documentElement.clientWidth : screen.width;
            var height = window.innerHeight ? window.innerHeight : document.documentElement.clientHeight ? document.documentElement.clientHeight : screen.height;

            var left = ((width / 2) - (w / 2)) + dualScreenLeft;
            var top = ((height / 2) - (h / 2)) + dualScreenTop;
            var newWindow = window.open(URL, null, "directories=no,height=" + h + ",width=" + w + ', top=' + top + ', left=' + left + ",status=no,toolbar=no,menubar=no,location=no, scrollbars=yes");

            // Puts focus on the newWindow
            if (window.focus) {
                newWindow.focus();
            }
        };



        jQuery(document).ready(function () {
            initTbl_ShippingFeesList();
        });

        var initTbl_ShippingFeesList = function () {

            var table = $('#Tbl_ShippingFeesList');

            /* Fixed header extension: http://datatables.net/extensions/keytable/ */

            var oTable = table.dataTable({


                // Internationalisation. For more info refer to http://datatables.net/manual/i18n
                "language": {
                    "aria": {
                        "sortAscending": ": activate to sort column ascending",
                        "sortDescending": ": activate to sort column descending"
                    },
                    "emptyTable": "No data available in table",
                    "info": "Showing _START_ to _END_ of _TOTAL_ entries",
                    "infoEmpty": "No entries found",
                    "infoFiltered": "(filtered1 from _MAX_ total entries)",
                    "lengthMenu": "Show _MENU_ entries",
                    "search": "Search:",
                    "zeroRecords": "No matching records found"
                },

                "alengthMenu": [
                    [10, 25, 50, -1],
                    [10, 25, 50, "All"] // change per page values here
                ],
                "pageLength": 25, // set the initial value,
                "columnDefs": [{  // set default column settings
                    'orderable': false,
                    'targets': [6, 7]
                }, {
                    "searchable": false,
                    "targets": [6, 7]
                }],
                "order": [
                    [0, "desc"]
                ]
            });

            //var oTableColReorder = new $.fn.dataTable.ColReorder(oTable);

            var tableWrapper = $('#Tbl_ShippingFeesList_wrapper'); // datatable creates the table wrapper by adding with id {your_table_jd}_wrapper
            tableWrapper.find('.dataTables_length select').select2(); // initialize select2 dropdown

        }



    </script>
</asp:Content>
