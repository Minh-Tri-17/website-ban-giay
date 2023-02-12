<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Error.aspx.cs" Inherits="DACS1.user.Error" %>

<%@ Register Src="../usercontrol/Error.ascx" TagName="Error" TagPrefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <<meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>NT-SNEAKERS</title>
    <link rel="stylesheet" href="/css/style.css" type="text/css" />
    <link rel="stylesheet" href="/fontawesome-free-6.1.1-web/css/all.min.css">
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <uc1:Error ID="Error1" runat="server" />
        </div>
    </form>
</body>
<script src="/js/app.js" language="javascript" type="text/javascript"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</html>
