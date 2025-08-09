
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta content="JavaScript" name="vs_defaultClientScript"/>
    <meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema"/>
    <style type="text/css">
        BODY {
            font-family: tahoma;
            font-size: 13px;
            color: #666666;
            margin: 0px 10px 0px 10px;
            padding: 0px 0px 0px 0px;
            line-height: 16px;
        }

        A:link {
            font-family: tahoma;
            font-size: 13px;
            color: #00658d;
            text-decoration: underline;
        }

        A:visited {
            font-family: tahoma;
            font-size: 13px;
            color: #82b4c7;
            text-decoration: underline;
        }

        A:hover {
            color: #00658d;
            text-decoration: none;
        }

        H1 {
            font-family: verdana;
            font-size: 19px;
            color: #054963;
            font-weight: normal;
            text-transform: none;
            padding: 10px 0px 10px 0px;
            margin: 0px 0px 0px 0px;
            float: none;
            background-color: transparent;
        }

        H3 {
            font-family: verdana;
            font-size: 15px;
            color: #054963;
            font-weight: normal;
            text-transform: none;
            padding: 0px 0px 3px 0px;
            margin: 0px 0px 0px 0px;
            float: none;
            background-image: none;
            background-repeat: no-repeat;
            background-color: transparent;
        }

        .titleBg {
            background-image: url(http://@@ServerName@@/images/hor_sep.gif);
            background-repeat: repeat-x;
            background-position: bottom;
        }

        .footer {
            font-family: tahoma;
            font-size: 12px;
            color: #535353;
        }

            .footer A:link {
                font-family: tahoma;
                font-size: 12px;
                color: #535353;
                text-decoration: none;
            }

            .footer A:visited {
                font-family: tahoma;
                font-size: 12px;
                color: #535353;
                text-decoration: none;
            }

            .footer A:hover {
                color: #535353;
                text-decoration: underline;
            }

        .horSeparetor {
            background-image: url(http://@@ServerName@@/images/hor_sep.gif);
            background-repeat: repeat-x;
        }

        .tm20 {
            padding-top: 20px;
        }

        .bm10 {
            padding-bottom: 10px;
        }

        .lm20 {
            padding-left: 20px;
        }

        .m7 {
            padding: 7px;
        }

        .style1 {
            color: #999999;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table id="Table1" align="center" border="0" cellpadding="0" cellspacing="0" width="800">
            <tbody>
                <tr>
                    <td align="left" valign="top">
                        <img src="http://@@ServerName@@/images/logo.png" alt="" height="120">
                    </td>
                </tr>
                <tr>
                    <td valign="top">
                        <table id="Table13" style="width: 100%" align="center" border="0" cellpadding="4" cellspacing="0">
                            <tbody>
                                <tr>
                                    <td class="titleBg" valign="top">
                                        <h1>Subject: <span class="style1">Order Confirmation<br>
                                        </span></h1>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="tm20 bm10" valign="top">
                                        <table border="0" cellpadding="1" cellspacing="1" width="100%">
                                            <tbody>
                                                <tr>
                                                    <td>
                                                        <p>
                                                            Dear @@Name@@,
                                                        </p>
                                                        <p>
                                                            Thanks for your Buying from "@@ServerName@@" your order <a href="@@OrderID@@">here</a>  placed, we will contact you.
                                                        </p>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="tm20" valign="top">@@OrderDetails@@
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="tm20" valign="top">Regards,<br/>
                                                        @@ProjectName@@ Team
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td class="horSeparetor" valign="top">
                        <img src="http://localhost/images/spacer.gif" alt="" height="1px" width="1px">
                    </td>
                </tr>
                <tr>
                    <td class="footer m7" valign="top">
                        <div align="right">
                            Copyright © 2023 @@ServerName@@ . All Rights Reserved.
                        </div>
                    </td>
                </tr>
                <tr>
                    <td class="footer m7" valign="top">
                        <div align="right">
                            <a href="@@ServerName@@">@@ServerName@@</a>
                        </div>
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
</body>
</html>
