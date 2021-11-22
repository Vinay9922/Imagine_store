<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_recipt.aspx.cs" Inherits="Apple_Store_System.dynamic_report.frm_recipt" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Imag!ne Apple Store</title>
    <!-- Favicons -->
  <link href="../BizPage/assets/img/logos/rainbow.svg.png" rel="icon">
  <link href="../BizPage/assets/img/apple-touch-icon.png" rel="apple-touch-icon">
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" 
            AutoDataBind="true" />
    
    </div>
    </form>
</body>
</html>
