<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Top.aspx.cs" Inherits="FitnessCenterSystem.Top" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link href="css/bootstrap.min.css" rel="stylesheet" />
    <title></title>
</head>
    <script type="text/javascript" >
        window.onload = function () {
            showTime();
        }
        var st;
        cb;
        BASE = "#336699";
        CC = 999999;
        function showTime() {
            d = new Date();
            week = ["日", "一", "二", "三", "四", "五", "六"];
            t = d.getFullYear() + "年" + (d.getMonth() + 1) + "月" + d.getDate() + "日 " + "星期" + week[d.getDay()] + " " + addZero(d.getHours()) + "时" + addZero(d.getMinutes()) + "分" + addZero(d.getSeconds()) + "秒"
            d1.innerHTML = t;
            st = setTimeout("showTime()", 1000);
        }

        function addZero(i) {
            if (i < 10) {
                return i = "0" + i;
            }
            else {
                return i;
            }
        }
        
</script>
<style>
    body {
        background:#438eb9;
        overflow:hidden;
    }
    #userdiv {
        background-color:rgba(0,0,0,0.3);
        width:230px;
        height:120px;
        float:right;
    }
    #top {
        
        height:120px;
    }
    #yuan {
        width:80px;
        height:80px;
        border-radius:40px;
        float:left;
        margin-top:15px;
        margin-left:5px;

    }
    #Image1 {
         width:80px;
        height:80px;
        border-radius:40px;
    }
    #usermes {
        
        width:140px;
        height:200px;
         float:right;
         color:#e9f4fa;
         
    }
    #HyperLink1 {
        text-align:center;
        margin-left:80px;
    }

    .auto-style1 {
        width: 75px;
    }
    #left {
        height:120px;
        width:100px;
        background:url(images/topl.png) 0 0 no-repeat;
        float:left;
    }
    #cName {
        float:left;
    }
        #cName h1 {

        }
    #d1 {
        float:right;
        width:250px;
        height:30px;
        margin-top:100px;
        
        text-align:right;
            
    }

</style>
<body>
    
    <div id="top">
        <form id="form1" runat="server">
            <div id="left">
                
            </div>
            <div id="cName">
                <h1 style="font-size: 50px">RICO健身培训中心</h1>
            </div>
             
            <div id="userdiv">
                
                <div id="yuan">
                    <asp:Image ID="Image1" runat="server"  Height="80px" Width="80px" />
                </div>
                <div id="usermes" style="font-family: 微软雅黑">
                    <br />
                     <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>,你好
                    
                    <br />
                    身份：<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                    <br />
                   
                    账号：
                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                    <br />
                    <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn-danger" Target="_top" NavigateUrl="~/LoginPage.aspx" ForeColor="#FEF7F5" Width="40px">注销</asp:HyperLink>
                    
                </div>
            </div>
            <div id="d1">
                
            </div>
        </form>
   </div>
</body>

</html>
