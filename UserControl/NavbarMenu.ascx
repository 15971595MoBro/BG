<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="NavbarMenu.ascx.cs" Inherits="BGBeauty_Website.UserControl.NavbarMenu" %>

<asp:Repeater ID="Repeater_SubMenu" runat="server">
       <ItemTemplate>
            <li>
                <a href='<%# (bool)Eval("Wpm_IsActive") == true ? ( string.IsNullOrEmpty(Eval("Wpm_HttpURL", "{0}"))  ?  "/En/Pages/" + Eval("Wpm_PageName", "{0}"):  Eval("Wpm_HttpURL", "{0}")) : "#"  %>' target='<%# Eval("Wpm_PageTarget", "{0}") %>'>
                <%# Eval("Wpm_PageTitleInMenu", "{0}") %> </a></li>
        </ItemTemplate>
</asp:Repeater>