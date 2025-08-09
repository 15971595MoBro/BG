<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AreaWrapper.ascx.cs" Inherits="BGBeautyProject_Website.UserControl.AreaWrapper" %>


<section class="bg-theme-color bg-img" data-bg-img="/App_Themes/asset/img/photos/header-bg.jpg">
    <div class="container pt--0 pb--0">
        <asp:Repeater runat="server" ID="Repeater_WrapperArea">
            <ItemTemplate>
                <div class="row divider-style2">
                    <div class="col-lg-6">
                        <div class="divider-thumb">
                            <img src='/Files/WPM/<%# Eval("Wpm_PageUID") %>/<%# Eval("Wpm_ImageURL") %>' width="595" height="523" alt="Image-HasTech">
                        </div>
                    </div>
                    <%# Eval("Wpm_Content") %>
                    
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</section>
