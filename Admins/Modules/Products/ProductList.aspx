<%@ Page Title="Product List" Language="C#" MasterPageFile="~/Admins/AdminMaster.Master" CodeBehind="ProductList.aspx.cs" Inherits="BGBeauty_Website.Admins.Modules.Products.ProductList" %>
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
                        <span class="caption-subject bold uppercase"><%= Page.Title %> </span>
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
                                    <a class="btn  btn-success btn-sm btn-block" href="/Admins/Modules/Products/ProductAddEdit" aria-expanded="false">New Product 
                                    </a>
                                </div>
                            </div>
                          
                        </div>
                          <div class="row ">
                                <div class=" col-sm-4">
                                    <div class="form-group">
                                        <asp:Label ID="lblParentCategory" runat="server"  AssociatedControlID="DdlParentCategory" CssClass="control-label">Parent category</asp:Label>
                                        <asp:DropDownList runat="server" ID="DdlParentCategory" OnSelectedIndexChanged="DdlParentCategory_SelectedIndexChanged" CssClass="form-control" AutoPostBack="True">
                                            
                                        </asp:DropDownList>
                                    </div>
                                </div>

                                <div class=" col-sm-4">

                                    <div class="form-group">
                                        <asp:Label ID="lblBrand" runat="server" AssociatedControlID="DdlBrand" CssClass="control-label">Brand</asp:Label>
                                        <asp:DropDownList runat="server" ID="DdlBrand" OnSelectedIndexChanged="DdlBrand_SelectedIndexChanged" CssClass="form-control" AutoPostBack="True">
                                            
                                        </asp:DropDownList>
                                    </div>
                                </div>


                            </div>
                    </div>

                    <table id="Tbl_ProductsList" class="table table-striped table-bordered table-hover order-column ">
                        <thead>
                            <tr>
                                <th style="width: 50px">Picture
                                </th>
                                <th>SKU
                                </th>
                                <th>Name
                                </th>
                                <th>Stock Quantity
                                </th>
                                <th>Brand</th>
                                <th style="width: 50px">Published</th>
                                <th style="width: 50px">Show To Home</th>
                                <th style="width: 50px">Related</th>
                                <th style="width: 50px">Preview</th>
                                <th style="width: 50px"></th>
                                <th style="width:100px"><asp:LinkButton ID="BtnDeleteAll" runat="server" CommandName="Del" CommandArgument='<%# Eval("ID")%>' class="btn btn-danger"  OnClientClick="javascript:return confirm('Are you sure do you want to Delete all Products? ')">Delete All</asp:LinkButton></th>
                            </tr>
                        </thead>
                        <tbody id="Tbody_ProductsList">
                            <asp:Repeater ID="Repeater_ProductsList" runat="server" OnItemCommand="Repeater_ProductsList_ItemCommand1">
                                <ItemTemplate>
                                    <tr>
                                        <td class="text-center">
                                            <img src='<%#  Common.GeneralUtilities.AppSettings("ProductsImagesUploadPath")+"/Files/Products" + "/" + Eval("ID", "{0}") + "/" + Eval("MainImage", "{0}")%>' class='<%# Eval("MainImage", "{0}") == "" ? "hidden" : ""%>' height="60" />

                                        </td>
                                         <td>
                                            <%# Eval("SKU", "{0}")%>
                                        </td>
                                        <td>
                                            <%# Eval("ProductName", "{0}")%>
                                        </td>
                                        <td>
                                            <%# Eval("StockQuantity", "{0}")%>
                                        </td>
                                        <td>
                                            <%# Eval("BrandName ", "{0}")%>
                                        </td>

                                        <td class="text-center">
                                            <asp:LinkButton ID="BtnPublish" runat="server" CommandName="Publish" CommandArgument='<%# Eval("ID") %>'><%# (bool)Eval("Published") == true ? "<i class='fa fa-check true-icon text-success  fa-2x'></i>" : "<i class='fa fa-eye-slash fa-2x  '></i>"%></asp:LinkButton>
                                        </td>
                                         <td class="text-center">
                                            <asp:LinkButton ID="BtnShowToHome" runat="server" CommandName="ShowOnHomePage" CommandArgument='<%# Eval("ID") %>'><%# (bool)Eval("ShowOnHomePage") == true ? "<i class='fa fa-check true-icon text-success  fa-2x'></i>" : "<i class='fa fa-eye-slash fa-2x  '></i>"%></asp:LinkButton>
                                        </td>
                                        <td>
                                            <a href="#" onclick="window_open('/Admins/modules/ProductRelatedProduct/ProductRelatedProducts?id=<%# Eval("ID") %>','800','600')"><i class="fa fa-link green"></i>Choose products</a>
                                        </td>
                                        <td class="text-center">
                                            <a href='<%# Common.GeneralUtilities.AppSettings("WebsiteDomain") + "/Language/En/ProductDetailsArea/ProductDetails?id=" + Eval("Id", "{0}") %>' target="_blank"><i class="fa fa-search fa-2x "></i></a>
                                        </td>
                                        <td class="text-center">
                                            <asp:HyperLink ID="HyperLink1" class="btn btn-primary"   runat="server" NavigateUrl='<%# "ProductAddEdit?id=" + Eval("Id", "{0}")%>'><li class='fa fa-edit '></li> Edit</asp:HyperLink>
                                        </td>
                                        <td><asp:LinkButton runat="server" CommandName="Del" CommandArgument='<%# Eval("ID")%>' class="btn btn-danger"  OnClientClick="javascript:return confirm('Are you sure do you want to Delete this Product? ')">Delete</asp:LinkButton></td>
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
            initTbl_ProductsList();
        });

        var initTbl_ProductsList = function () {

            var table = $('#Tbl_ProductsList');

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
                    'targets': [0, 5, 6, 7, 8]
                }, {
                    "searchable": false,
                    'targets': [0, 5, 6, 7, 8]
                }],
                "order": [
                    [1, "asc"]
                ]
            });

            //var oTableColReorder = new $.fn.dataTable.ColReorder(oTable);

            var tableWrapper = $('#Tbl_ProductsList_wrapper'); // datatable creates the table wrapper by adding with id {your_table_jd}_wrapper
            tableWrapper.find('.dataTables_length select').select2(); // initialize select2 dropdown

        }



    </script>
</asp:Content>
