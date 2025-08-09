<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TabTest.aspx.cs" Inherits="BGBeautyProject_Website.Language.En.TestPage.TabTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
      <div class="tab-container product-tabs" id="tab-container1" style="margin-top: 20px">
          <ul class="nav nav-tabs tab-nav">
                    <li data-tab="tab1" class="active">Event Description</li>
                    <li id="phototab" visible="false" runat="server"  data-tab="tabphoto">Photos</li>
                    <li id="videotab" visible="false" runat="server" data-tab="tabvideo">Videos</li>
          </ul>
          <div class="tab-contents">
                    <a class="v_nav v_active " data-tab="tab1">Event Description</a>
                    <div id="tab1" class="tab_content clearfix">
                        <h4>Event Description</h4>
                        <div>
                           mmmmmmmmmmmmmmmmmmmmmmmmmm
                        </div>

                        
                    </div>


                    <a class="v_nav" data-tab="tab2">Additional Info</a>
                    <div id="tabphoto" runat="server" visible="false"  class="tab_content" ClientIDMode="Static">
                        <h4>Photos</h4>
                        <div class="gallary">

                            jjjjjjjjjjjjjjjj

                        </div>
                    </div>

                    <a class="v_nav" data-tab="tab3">Reviews</a>
                    <div id="tabvideo" runat="server" visible="false" class="tab_content" ClientIDMode="Static">

                        <!-- Start Comments -->
                        <div class="post-section" data-scroll-index="0">
                            <h4>Videos</h4>
                            <div class="gallary">

                                ooooooooooooooooooooooo

                            </div>

                        </div>
                    </div>



                </div>
      </div>
    </form>
</body>
</html>
