<%@ Page Title="Specification Attribute" Language="C#" MasterPageFile="~/Admins/AdminMaster.Master" AutoEventWireup="true" CodeBehind="SpecificationAttributeList.aspx.cs" Inherits="BGBeauty_Website.Admins.Modules.SpecificationList.SpecificationAttributeList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
    <div class="row ">
        <div class="col-sm-12">
            <div class="portlet light bordered ">
                <div class="portlet-title">
                    <div class="caption font-dark">
                        <%--<i class="icon-settings font-dark"></i>--%>
                        <span class="caption-subject bold uppercase">specification attribute  List</span>
                    </div>
                    <div class="tools">
                        <a class="collapse" href="javascript:;"></a>
                    </div>

                </div>
                <div class="portlet-body">
                    <div class="table-toolbar">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="btn-group">
                                    <a class="btn  btn-success btn-sm btn-block" href="/Admins/Modules/SpecificationList/SpecificationAttributeAddEdit" aria-expanded="false">New specification attribute 
                                    </a>
                                </div>
                            </div>
                            <%--<div class="col-md-6">
                                <div class="btn-group pull-right">
                                    <button class="btn font-green  btn-outline dropdown-toggle" data-toggle="dropdown">
                                        Tools
                                                       
                                        <i class="fa fa-angle-down"></i>
                                    </button>
                                    <ul class="dropdown-menu pull-right">
                                        <li>
                                            <a href="javascript:;">
                                                <i class="fa fa-print"></i>Print </a>
                                        </li>
                                        <li>
                                            <a href="javascript:;">
                                                <i class="fa fa-file-pdf-o"></i>Save as PDF </a>
                                        </li>
                                        <li>
                                            <a href="javascript:;">
                                                <i class="fa fa-file-excel-o"></i>Export to Excel </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>--%>
                        </div>
                    </div>

                    <table id="Tbl_attributesList" class="table table-striped table-bordered table-hover order-column ">
                        <thead>
                            <tr>
                                <th>attribute Name
                                </th>
                                <th>Order</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody id="Tbody_attributesList">
                            <asp:Repeater ID="Repeater_attributesList" runat="server">
                                <ItemTemplate>
                                    <tr>
                                        <th>
                                            <%# Eval("Name", "{0}")%>
                                        </th>
                                        <td><%# Eval("DisplayOrder")%></td>
                                        <th>
                                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "SpecificationAttributeAddEdit?id=" + Eval("Id", "{0}")%>'><li class='fa fa-edit '></li> Edit</asp:HyperLink>
                                        </th>
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
    <script>

        jQuery(document).ready(function () {
            initTbl_attributesList();
        });

        var initTbl_attributesList = function () {

            var table = $('#Tbl_attributesList');

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
                    [10, 20, 50, -1],
                    [10, 20, 50, "All"] // change per page values here
                ],
                "pageLength": 10, // set the initial value,
                "columnDefs": [{  // set default column settings
                    'orderable': false,
                    'targets': [2]
                }, {
                    "searchable": false,
                    "targets": [2]
                }],
                "order": [
                    [1, "asc"]
                ]
            });

            var oTableColReorder = new $.fn.dataTable.ColReorder(oTable);

            var tableWrapper = $('#Tbl_attributesList_wrapper'); // datatable creates the table wrapper by adding with id {your_table_jd}_wrapper
            tableWrapper.find('.dataTables_length select').select2(); // initialize select2 dropdown

        }

    </script>
</asp:Content>
