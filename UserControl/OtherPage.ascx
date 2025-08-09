<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="OtherPage.ascx.cs" Inherits="BGBeauty_Website.UserControl.OtherPage" %>


<div class="col-lg-2 col-md-6 mb-all-30">
    <asp:Repeater ID="Repeater_MenuFooter" runat="server">
        <ItemTemplate>
            <div class="single-footer">
                <div class="single-footer">
                    <h4 class="footer-title"><%# Eval("Wpm_PageTitleInMenu", "{0}") %></h4>
                    <div class="footer-content">
                        <ul class="footer-list">
                            <asp:Repeater ID="Repeater_SubMenu" runat="server" DataSource='<%# GetPages((int)Eval("Wpm_PageUID")) %>'>
                                <ItemTemplate>
                                    <li><a href='<%# (bool)Eval("Wpm_IsActive") == true ? ( string.IsNullOrEmpty(Eval("Wpm_HttpURL", "{0}"))  ?  "/En/Pages/" + Eval("Wpm_PageName", "{0}"):  Eval("Wpm_HttpURL", "{0}")) : "#"  %>' target='<%# Eval("Wpm_PageTarget", "{0}") %>'>
                            <%# Eval("Wpm_PageTitleInMenu", "{0}") %></a></li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>
</div>
