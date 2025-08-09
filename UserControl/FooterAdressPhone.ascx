<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="FooterAdressPhone.ascx.cs" Inherits="BGBeauty_Website.UserControl.FooterAdressPhone" %>


        <asp:Repeater runat="server" ID="Repeater_AddressPhone">
            <ItemTemplate>
                <%# Eval("Wpm_Content" , "{0}") %>
            </ItemTemplate>
        </asp:Repeater>

        
