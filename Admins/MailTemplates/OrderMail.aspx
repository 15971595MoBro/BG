
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta content="JavaScript" name="vs_defaultClientScript">
    <meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
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
        .auto-style1 {
            height: 6px;
        }
    </style>
</head>
<body dir="ltr">
    <form id="form1" runat="server">
       <table id="Table1" align="center" border="0" cellpadding="0" cellspacing="0" width="800">
        <tbody>
            <tr>
                <td align="left" valign="top">
                    <img alt="" src="http://@@ServerName@@/images/logo.png" height="120">
                </td>
            </tr>
            <tr>
                <td valign="top">
                    <table id="Table13" style="width: 100%" align="center" border="0" cellpadding="4" cellspacing="0">
                        <tbody>
                            <tr>
                                <td class="titleBg" valign="top">
                                    <h1>
                                        Subject: <span class="style1">Order <a href="@@OrderID@@">here</a>  Details Sheet</span>
                                    </h1>
                                </td>
                            </tr>
                            <tr>
                                <td class="tm20 bm10" valign="top">
                                    <table border="0" cellpadding="1" cellspacing="1" width="100%">
                                        <tbody>
                                            <tr>
                                                <td align="center">
                                                    <table id="Table14" border="0" cellpadding="1" cellspacing="1" width="85%">
                                               
                                                        <tbody>
                                                            <tr>
                                                                <td id="TD1" align="right" width="25%">
                                                                    <h6>
                                                                        First Name</h6>
                                                                </td>
                                                                <td width="5%">
                                                                    <h6>
                                                                        :</h6>
                                                                </td>
                                                                <td width="55%">
                                                                    @@FirstName@@&nbsp;
                                                                </td>
                                                            </tr>
                                                       
                                                            <tr>
                                                                <td id="TDName" align="right" width="25%">
                                                                    <h6>
                                                                        Last Name</h6>
                                                                </td>
                                                                <td width="5%">
                                                                    <h6>
                                                                        :</h6>
                                                                </td>
                                                                <td width="55%">
                                                                    @@LastName@@&nbsp;
                                                                </td>
                                                            </tr>
                                                        
                                                            
                                                            <!-- DisplayMobile -->
                                                            <tr>
                                                                <td id="TDPhone" align="right" width="25%">
                                                                    <h6>
                                                                        Email</h6>
                                                                </td>
                                                                <td width="5%">
                                                                    <h6>
                                                                        :</h6>
                                                                </td>
                                                                <td width="55%">
                                                                    @@Email@@&nbsp;
                                                                </td>
                                                            </tr>
                                                     
                                                            <tr>
                                                                <td id="TDComment" align="right" width="25%">
                                                                    <h6>
                                                                        City</h6>
                                                                </td>
                                                                <td width="5%">
                                                                    <h6>
                                                                        :</h6>
                                                                </td>
                                                                <td width="55%">
                                                                    @@City@@&nbsp;
                                                                </td>
                                                            </tr>
                                                             <tr>
                                                                <td id="TD2" align="right" width="25%">
                                                                    <h6>
                                                                        Address</h6>
                                                                </td>
                                                                <td width="5%">
                                                                    <h6>
                                                                        :</h6>
                                                                </td>
                                                                <td width="55%">
                                                                    @@Address@@&nbsp;
                                                                </td>
                                                            </tr>
                                                             <tr>
                                                                <td id="TD4" align="right" width="25%" class="auto-style1">
                                                                    <h6>
                                                                        Mobile</h6>
                                                                </td>
                                                                <td width="5%" class="auto-style1">
                                                                    <h6>
                                                                        :</h6>
                                                                </td>
                                                                <td width="55%" class="auto-style1">
                                                                    @@Mobile@@&nbsp;
                                                                </td>
                                                            </tr>
                                                             <tr>
                                                                <td id="TDVatNumber" align="right" width="25%" class="auto-style1">
                                                                    <h6>
                                                                        Vat Number</h6>
                                                                </td>
                                                                <td width="5%" class="auto-style1">
                                                                    <h6>
                                                                        :</h6>
                                                                </td>
                                                                <td width="55%" class="auto-style1">
                                                                    @@VatNumber@@&nbsp;
                                                                </td>
                                                            </tr>
                                                              <tr>
                                                                <td id="TD5" align="right" width="25%">
                                                                    <h6>
                                                                        Date</h6>
                                                                </td>
                                                                <td width="5%">
                                                                    <h6>
                                                                        :</h6>
                                                                </td>
                                                                <td width="55%">
                                                                    @@Date@@&nbsp;
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td colspan="3" width="100%">
                                                                <br></td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                    <div style="width:100%;">

                                                        @@OrderDetails@@
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="tm20" valign="top">
                                                    Regards,<br>
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
                    <img alt="" src="http://localhost/images/spacer.gif" height="1" width="1">
                </td>
            </tr>
            <tr>
                <td class="footer m7" valign="top">
                    <div align="right">
                        Copyright &#169; 2023 @@ServerName@@ . All Rights Reserved. </div>
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
