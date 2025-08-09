<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>BGBeauty</title>
    <style type="text/css">
        BODY
        {
            font-family: tahoma;
            font-size: 13px;
            color: #666666;
            margin: 0px 10px 0px 10px;
            padding: 0px 0px 0px 0px;
            line-height: 16px;
        }
        A:link
        {
            font-family: tahoma;
            font-size: 13px;
            color: #00658d;
            text-decoration: underline;
        }
        A:visited
        {
            font-family: tahoma;
            font-size: 13px;
            color: #82b4c7;
            text-decoration: underline;
        }
        A:hover
        {
            color: #00658d;
            text-decoration: none;
        }
        H1
        {
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
        H3
        {
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
        .titleBg
        {
            background-image: url(http://@@ServerName@@/images/hor_sep.gif);
            background-repeat: repeat-x;
            background-position: bottom;
        }
        .footer
        {
            font-family: tahoma;
            font-size: 12px;
            color: #535353;
        }
        .footer A:link
        {
            font-family: tahoma;
            font-size: 12px;
            color: #535353;
            text-decoration: none;
        }
        .footer A:visited
        {
            font-family: tahoma;
            font-size: 12px;
            color: #535353;
            text-decoration: none;
        }
        .footer A:hover
        {
            color: #535353;
            text-decoration: underline;
        }
        .horSeparetor
        {
            background-image: url(http://@@ServerName@@/images/hor_sep.gif);
            background-repeat: repeat-x;
        }
        .tm20
        {
            padding-top: 20px;
        }
        .bm10
        {
            padding-bottom: 10px;
        }
        .lm20
        {
            padding-left: 20px;
        }
        .m7
        {
            padding: 7px;
        }
        .style1
        {
            color: #999999;
        }
    </style>
</head>
<body dir="ltr">
    <form method="post" id="Form1">
    <!-- EditSection -->
    <table id="Table1" cellspacing="0" cellpadding="0" width="800" align="center" border="0">
        <tbody>
            <tr>
                <td valign="top" align="left">
                    <img height="183" alt="" src="http://@@ServerName@@/images/logo.png" width="402" />
                </td>
            </tr>
            <tr>
                <td valign="top">
                    <table width="100%" cellspacing="0" cellpadding="4" align="center" border="0">
                        <tr>
                            <td class="titleBg" valign="top">
                                <h1>
                                    Subject: <span class="style1">Payment Succeed</span>
                                </h1>
                            </td>
                        </tr>
                        <tr>
                            <td class="tm20 bm10" valign="top">
                                <table cellspacing="1" cellpadding="1" width="100%" border="0">
                                    <tr>
                                        <td>
                                            <p>
                                                Dear @@Name@@,</p>
                                            <p>
                                                Thank you for placing an order with us, our team is ready to process your order
                                                immediately. Your Order number is: @@TransNumber@@</p>
                                            <p>
                                                You are paid @@Amount@@
                                            </p>
                                            <p>
                                                @@Date@@
                                            </p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="tm20" valign="top">
                                            Regards,<br />
                                            BGBeauty Team
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="horSeparetor" valign="top">
                    <img height="1" alt="" src="http://@@ServerName@@/images/spacer.gif" width="1">
                </td>
            </tr>
            <tr>
                <td class="footer m7" valign="top">
                    <div align="right">
                        Copyright &#169; @@Year@@ BGBeauty. All Rights Reserved.
                    </div>
                </td>
            </tr>
        </tbody>
    </table>
    <!-- EditSection End -->
    </form>
</body>
</html>
