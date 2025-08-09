<%@ Page Title="" Language="C#" MasterPageFile="~/Admins/SecurityMaster.Master" AutoEventWireup="true" CodeBehind="RoleMenuPermission.aspx.cs" Inherits="BGBeauty_Website.Admins.Modules.Security.RoleMenuPermission" %>

<%@ Register Src="~/Admins/UserControls/Security/SecurityMenu.ascx" TagPrefix="uc1" TagName="SecurityMenu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content_Title" runat="server">
     <h1><%= Page.Title %></h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content_Toolbar" runat="server">
     <uc1:SecurityMenu runat="server" ID="SecurityMenu" />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content_MapPath" runat="server">
    <ul class="breadcrumb">
        <li><a href="/">Home </a></li>
        <li class="fa fa-circle"></li>
        <li>
            <a href="#">Security</a>
              <i class="fa fa-circle"></i>
        </li>
        <li class="fa fa-circle"></li>
        <li class="active">
            <%= Page.Title %>
        </li>
    </ul>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Content_Note" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="Content_Main" runat="server">
        <div class="row">
        <div class="form-group">
            <div class="col-sm-12">
                <asp:Label ID="Lbl_DdlRoles" runat="server" Text="Employee Position"></asp:Label>
                <asp:DropDownList ID="DdlRoles" runat="server" CssClass="form-control"  AutoPostBack="True" OnSelectedIndexChanged="DdlRoles_SelectedIndexChanged"></asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Choose Position" ControlToValidate="DdlRoles" ForeColor="Red" SetFocusOnError="True" ValidationGroup="Employee"></asp:RequiredFieldValidator>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="form-group">

            <div class="col-sm-12">
                <asp:Label ID="Lbl_Tree" runat="server" Text="Menu" CssClass="text-center font-red-intense bold font-md"></asp:Label>
                <asp:TreeView ID="TreeView1" runat="server" ShowCheckBoxes="All" ImageSet="Arrows">
                    <%--AfterClientCheck="CheckChildNodes();"  onclick="OnTreeClick(event)"--%>
                    <HoverNodeStyle Font-Underline="false" ForeColor="#3654A0" />
                    <NodeStyle Font-Names="Tahoma" Font-Size="11" ForeColor="#333333" HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px" Font-Bold="true" />
                    <ParentNodeStyle Font-Bold="true" />
                    <SelectedNodeStyle Font-Underline="True" ForeColor="#3654A0" HorizontalPadding="0px" VerticalPadding="0px" />
                </asp:TreeView>
            </div>

        </div>


        <div class="form-group text-center">
            <div class="col-sm-12">
                <div class="form-actions center margin-top-20">
                    <asp:LinkButton ID="BtnSubmit" runat="server" OnClick="BtnSubmit_Click" >
                        <asp:Label ID="Lbl_BtnSubmit" runat="server" Text="Save Menu" CssClass="btn btn-primary"></asp:Label>
                    </asp:LinkButton>

                </div>
            </div>
        </div>

    </div>
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="Content_Script" runat="server">
    
    <script lang="javascript" type="text/javascript">
        //function OnTreeClick(evt) {
        //      var src = window.event != window.undefined ? window.event.srcElement : evt.target;
        //      var isChkBoxClick = (src.tagName.toLowerCase() == "input" && src.type == "checkbox");
        //      if (isChkBoxClick) {
        //          var parentTable = GetParentByTagName("table", src);
        //          var nxtSibling = parentTable.nextSibling;
        //          if (nxtSibling && nxtSibling.nodeType == 1)//check if nxt sibling is not null & is an element node
        //          {
        //              if (nxtSibling.tagName.toLowerCase() == "div") //if node has children
        //              {
        //                  //check or uncheck children at all levels
        //                  CheckUncheckChildren(parentTable.nextSibling, src.checked);
        //              }
        //          }
        //          //check or uncheck parents at all levels
        //          CheckUncheckParents(src, src.checked);
        //      }
        //  }

        //  function CheckUncheckChildren(childContainer, check) {
        //      var childChkBoxes = childContainer.getElementsByTagName("input");
        //      var childChkBoxCount = childChkBoxes.length;
        //      for (var i = 0; i < childChkBoxCount; i++) {
        //          childChkBoxes[i].checked = check;
        //      }
        //  }

        //  function CheckUncheckParents(srcChild, check) {
        //      var parentDiv = GetParentByTagName("div", srcChild);
        //      var parentNodeTable = parentDiv.previousSibling;

        //      if (parentNodeTable) {
        //          var checkUncheckSwitch;

        //          if (check) //checkbox checked
        //          {
        //              var isAllSiblingsChecked = AreAllSiblingsChecked(srcChild);
        //              if (isAllSiblingsChecked)
        //                  checkUncheckSwitch = true;
        //              else
        //                  return; //do not need to check parent if any(one or more) child not checked
        //          }
        //          else //checkbox unchecked
        //          {
        //              checkUncheckSwitch = false;
        //          }

        //          var inpElemsInParentTable = parentNodeTable.getElementsByTagName("input");
        //          if (inpElemsInParentTable.length > 0) {
        //              var parentNodeChkBox = inpElemsInParentTable[0];
        //              parentNodeChkBox.checked = checkUncheckSwitch;
        //              //do the same recursively
        //              CheckUncheckParents(parentNodeChkBox, checkUncheckSwitch);
        //          }
        //      }
        //  }

        //  function AreAllSiblingsChecked(chkBox) {
        //      var parentDiv = GetParentByTagName("div", chkBox);
        //      var childCount = parentDiv.childNodes.length;
        //      for (var i = 0; i < childCount; i++) {
        //          if (parentDiv.childNodes[i].nodeType == 1) //check if the child node is an element node
        //          {
        //              if (parentDiv.childNodes[i].tagName.toLowerCase() == "table") {
        //                  var prevChkBox = parentDiv.childNodes[i].getElementsByTagName("input")[0];
        //                  //if any of sibling nodes are not checked, return false
        //                  if (!prevChkBox.checked) {
        //                      return false;
        //                  }
        //              }
        //          }
        //      }
        //      return true;
        //  }

        //  //utility function to get the container of an element by tagname
        //  function GetParentByTagName(parentTagName, childElementObj) {
        //      var parent = childElementObj.parentNode;
        //      while (parent.tagName.toLowerCase() != parentTagName.toLowerCase()) {
        //          parent = parent.parentNode;
        //      }
        //      return parent;
        //  }
    </script>
</asp:Content>
