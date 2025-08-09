<%@ Page Title="" Language="C#" MasterPageFile="~/Language/En/HomeMasterPage.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="BGBeautyProject_Website.Language.En.TestPage.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<link href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/themes/start/jquery-ui.css"
    rel="stylesheet" type="text/css" />
<script type="text/javascript">
    var selected_tab = 1;
    $(function () {
        var tabs = $("#tabs").tabs({
            select: function (e, i) {
                selected_tab = i.index;
            }
        });
        selected_tab = $("[id$=selected_tab]").val() != "" ? parseInt($("[id$=selected_tab]").val()) : 0;
        tabs.tabs('select', selected_tab);
        $("form").submit(function () {
            $("[id$=selected_tab]").val(selected_tab);
        });
    });
   
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <div id="tabs">
    <ul>
        <li><a href="#tabs-1">Tab 1</a></li>
        <li><a href="#tabs-2">Tab 2</a></li>
        <li><a href="#tabs-3">Tab 3</a></li>
    </ul>
    <div id="tabs-1">
        Content 1
    </div>
    <div id="tabs-2">
        Content 2
    </div>
    <div id="tabs-3">
        Content 3
    </div>
</div>
<asp:HiddenField ID="selected_tab" runat="server" />

</asp:Content>
