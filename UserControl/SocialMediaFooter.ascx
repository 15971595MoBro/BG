<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SocialMediaFooter.ascx.cs" Inherits="BGBeauty_Website.UserControl.SocialMediaFooter" %>


<ul class="social-icon">
    <asp:Repeater runat="server" ID="Repeater_SocialMedia">
        <ItemTemplate>
            <li>
                <a href='<%# Eval("SocialURL", "{0}") %>' title='<%# Eval("SocialName", "{0}") %>' rel="noopener"><i class='fa fa-<%# Eval("SocialName", "{0}") %>'></i></a>
            </li>
        </ItemTemplate>
    </asp:Repeater>

</ul>
