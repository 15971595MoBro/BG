<%@ Page Title="Visitor List" Language="C#" MasterPageFile="~/Admins/AdminMaster.Master" AutoEventWireup="true" CodeBehind="VisitorsProductsList.aspx.cs" Inherits="BGBeautyProject_Website.Admins.Modules.Customers.VisitorsProductsList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
            <a href="#">Customers</a>
            <i class="fa fa-circle"></i>
        </li>
        <li class="active">
            <%: Page.Title %>
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
                        <i class="icon-cursor  hide"></i>
                        <span class="caption-subject bold uppercase">Visitor List</span>
                    </div>
                    <div class="tools">
                        <a class="collapse" href="javascript:;"></a>
                    </div>

                </div>
                <div class="portlet-body">
                    <div class="table-toolbar">
                        <div class="row">
                        </div>
                    </div>
                    <table id="Tbl_UsersList" class="table table-striped table-bordered table-hover order-column">
                        <thead>
                            <tr>
                                <th>Product Name</th>

                                <th>Number Vistor</th>

                                <th></th>
                            </tr>
                        </thead>
                        <tbody id="Tbody_CustomersList">
                            <asp:Repeater ID="Repeater_VisitorList" runat="server" OnItemCommand="Repeater_VisitorList_ItemCommand">
                                <ItemTemplate>
                                    <tr>
                                       
                                        <th>
                                            <%# Eval("ProductName", "{0}")%>
                                        </th>

                                        <th>
                                            <%# Eval("VisitorCounter","{0}") %>
                                        </th>

                                        <th>
                                            <asp:LinkButton runat="server" CommandName="Reset" CommandArgument='<%# Eval("Id")%>' class="btn btn-danger" OnClientClick="javascript:return confirm('Are you sure do you want to reset this Counter? ')">Reset</asp:LinkButton></td>
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
            initTbl_UsersList();
        });

        var initTbl_UsersList = function () {

            var table = $('#Tbl_UsersList');

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
                    'targets': [9]
                }, {
                    "searchable": false,
                    "targets": [9]
                }],
                "order": [
                    [0, "asc"]
                ]
            });

            var oTableColReorder = new $.fn.dataTable.ColReorder(oTable);

            var tableWrapper = $('#Tbl_UsersList_wrapper'); // datatable creates the table wrapper by adding with id {your_table_jd}_wrapper
            tableWrapper.find('.dataTables_length select').select2(); // initialize select2 dropdown

        }

    </script>
</asp:Content>
