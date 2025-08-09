<%@ Page Title="" Language="C#" MasterPageFile="~/Admins/SecurityMaster.Master" AutoEventWireup="true" CodeBehind="UsersList.aspx.cs" Inherits="BGBeauty_Website.Admins.Modules.Security.UsersList" %>


<%@ Register Src="~/Admins/UserControls/Security/SecurityMenu.ascx" TagPrefix="uc1" TagName="SecurityMenu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="Content_Title" runat="server">
    <h1><%= Page.Title %></h1>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content_MapPath" runat="server">
    <ul class="breadcrumb">
        <li><a href="/">Home </a><i class="fa fa-circle"></i></li>
        <li>

            <a href="#">Security</a>
            <i class="fa fa-circle"></i>
        </li>
        <li class="active">
            <%= Page.Title %>
        </li>
    </ul>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Content_Toolbar" runat="server">
    <uc1:SecurityMenu runat="server" ID="SecurityMenu" />
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="Content_Main" runat="server">

    <div class="row ">
        <div class="col-sm-12">
            <div class="portlet light bordered ">
                <div class="portlet-title">
                    <div class="caption font-dark">
                        <i class="icon-cursor  hide"></i>
                        <span class="caption-subject bold uppercase">User List</span>
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
                                    <a class="btn btn-success btn-sm btn-block" href='<%= "/Admins/Modules/Security/UsersAddEdit.aspx"%>' aria-expanded="false">New User
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
                    <table id="Tbl_UsersList" class="table table-striped table-bordered table-hover order-column">
                        <thead>
                            <tr>
                                <%--<th style="width: 25px">
                                        <asp:CheckBox ID="CB_All" runat="server" />
                                    </th>--%>
                                <th>Full Name 
                                </th>

                                <th>User Name 
                                </th>
                                <th>Last Login
                                </th>
                                <th>Active
                                </th>
                                <th>Admin
                                </th>

                                <th></th>
                            </tr>
                        </thead>
                        <tbody id="Tbody_UsersList">
                            <asp:Repeater ID="Repeater_UsersList" runat="server">
                                <ItemTemplate>
                                    <tr>
                                        <%--<th>
                                                <asp:CheckBox ID="CB_Asset" runat="server" ToolTip='<%# Eval("Id","{0}") %>' />
                                            </th>--%>
                                        <th>
                                            <%# Eval("FirstName", "{0}") + " " + Eval("LastName", "{0}")%>
                                        </th>

                                        <th>
                                            <%# Eval("UserName","{0}") %>
                                        </th>

                                        <th>
                                            <%# Eval("LastLoginDateUtc","{0:dd-MM-yyyy}") %>
                                        </th>
                                        <th class="text-center">
                                            <%# (bool)Eval("Active") == true? "<li class='fa fa-check font-green'></li>" : "<li class='fa fa-close font-red'></li>" %>
                                        </th>
                                        <th class="text-center">
                                            <%# (bool)Eval("IsAdmin") == true ? "<li class='fa fa-check font-green'></li>" : "<li class='fa fa-close font-red'></li>" %>
                                        </th>


                                        <th>
                                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "UsersAddEdit?id=" + Eval("Id", "{0}")%>'><li class='fa fa-edit '></li> Edit</asp:HyperLink>
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

  
<%--
     <script type="text/javascript" src="http://cdn.rawgit.com/bassjobsen/Bootstrap-3-Typeahead/master/bootstrap3-typeahead.min.js"></script>

   		<script src="/Admins/assets/global/plugin/datatables/jquery.dataTables.min.js"></script>
		<script src="/Admins/assets/global/plugin/datatables/dataTables.colVis.min.js"></script>
		<script src="/Admins/assets/global/plugin/datatables/dataTables.tableTools.min.js"></script>
		<script src="/Admins/assets/global/plugin/datatables/dataTables.bootstrap.min.js"></script>
		<script src="/Admins/assets/global/plugin/datatable-responsive/datatables.responsive.min.js"></script>
    

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

    </script>--%>
</asp:Content>



