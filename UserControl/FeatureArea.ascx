<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="FeatureArea.ascx.cs" Inherits="BGBeauty_Website.UserControl.FeatureArea" %>




<div class="support-area pb-60 pt-60" style="background:#f6f6f6;">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-6 col-sm-6 mb-all-30">
                <asp:Repeater runat="server" ID="Repeater_FreeShipping">
                    <ItemTemplate>
                        <%# Eval("Wpm_Content", "{0}") %>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6 mb-all-30">
                <asp:Repeater runat="server" ID="Repeater_CardPayments">
                    <ItemTemplate>
                        <%# Eval("Wpm_Content", "{0}") %>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6 mb-xsm-30">
                <asp:Repeater runat="server" ID="Repeater_EasyReturns">
                    <ItemTemplate>
                        <%# Eval("Wpm_Content", "{0}") %>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6">
                  <asp:Repeater runat="server" ID="Repeater_Support">
                    <ItemTemplate>
                        <%# Eval("Wpm_Content", "{0}") %>
                        </ItemTemplate>
                      </asp:Repeater>
            </div>
        </div>
    </div>
    <!-- Container End -->
</div>
