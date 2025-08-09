<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm7.aspx.cs" Inherits="BGBeautyProject_Website.Language.En.TestPage.WebForm7" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
          <link href="https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css" rel="stylesheet">  
      <script src="https://code.jquery.com/jquery-1.10.2.js"></script>  
      <script src="https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>  
      <script>  
          $(function () {
              $("#tabs-1").tabs();
          });
      </script>  
      <style>  
         #tabs-1{font-size: 14px;}  
         .ui-widget-header {  
            background:lightpink;  
            border: 1px solid #b9cd6d;  
            color: lightyellow;  
            font-weight: bold;  
         }  
      </style> 
</head>
<body>
    <form id="form1" runat="server">
        <div id="tabs-1">  
         <ul>  
            <li><a href="#tabs-2">Poem</a></li>  
            <li><a href="#tabs-3">Joke</a></li>  
            <li><a href="#tabs-4">Quote</a></li>  
         </ul>  
         <div id="tabs-2">  
            <p>Twinkle, twinkle, little star,<br/>  
How I wonder what you are.<br/>  
Up above the world so high,<br/>  
Like a diamond in the sky.<br/>  
Twinkle, twinkle, little star,<br/>  
How I wonder what you are!<br/>  
 </p>  
         </div>  
         <div id="tabs-3">  
<p>Man said to God --- Why did you make women so beautiful?<br/>  
God said to man --- So that you will love them.<br/>  
Man said to God --- But why did you make them so dumb?<br/>   
God said to man --- So that they will love you.<br/> </p>  
         </div>  
         <div id="tabs-4">  
            <p>" The whole secret of existence is to have no fear."  
Buddha</p>  
         </div>  
      </div>
    </form>
</body>
</html>
