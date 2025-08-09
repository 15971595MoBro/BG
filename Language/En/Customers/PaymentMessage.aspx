<%@ Page Title="Order process" Language="C#" MasterPageFile="~/Language/En/InternalMasterPage.Master" AutoEventWireup="true" CodeBehind="PaymentMessage.aspx.cs" Inherits="BGBeautyProject_Website.Language.En.Customers.PaymentMessage" %>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <div id="orderdiv" style="width: 95% !important">
        <div class="row">
            <div class="col-sm-12 center-align">
                <h4 style="text-align: center;">Thank You</h4>
                <div class="text-center" style="padding-bottom: 15px; padding-left: 10px; padding-top: 10px; font-size: 14px; color: rgb(160, 0, 0);">
                        <strong>
                            <%=Request.QueryString["Msg"] %>
                        </strong>
                    <p class="text-center" >
                        please wait, You will move now.
                    </p>

                    <asp:Timer ID="Timer1" runat="server" Interval="5000" Enabled="true"></asp:Timer>

                </div>
            </div>
        </div>
    </div>

    <!--  #include file="~/Language/En/TrackPurchase.js" -->
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder_Script" runat="server">
</asp:Content>
