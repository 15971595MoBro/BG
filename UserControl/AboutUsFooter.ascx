<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AboutUsFooter.ascx.cs" Inherits="BGBeauty_Website.UserControl.LogoFooter" %>


<asp:Repeater runat="server" ID="Reppeater_AboutUSFooter">
    <ItemTemplate>
         <%# Eval("Wpm_Content" , "{0}") %>
    </ItemTemplate>
</asp:Repeater>


