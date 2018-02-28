<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="FitnessCenterSystem.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1/">
<link href="css/bootstrap.min.css" rel="stylesheet" />
    <title></title>
</head>
<style>  
    body{  
        margin-left:auto;  
        margin-right:auto; 
        margin-top:200px; 
        width:20em;  
        background: url(images/loginBG.jpg) 0 0 repeat;
        background-size:cover;
        }
    #container {
        
        background-color:#000000;
        background-color:rgba(0,0,0,0.5);
        width:300px;
        height:400px;
    }
    #form1 {
         margin-top:50px;
    }
     #denglu{
        margin-top:30px;
        color:rgba(255,255,255,0.9);
    }
    
</style>
<body class="login-layout">
    <div class="container" id="container">
        <div id="denglu"><h1>欢迎登录</h1></div>
        <form id="form1" runat="server">
            <!--下面是用户名输入框-->
            <div class="input-group">
                <span class="input-group-addon" id="basic-addon1">@</span>
                <asp:TextBox ID="txtName" CssClass="form-control" placeholder="用户名" aria-describedby="basic-addon1" runat="server"></asp:TextBox>
            </div>
            <br/>
            <!--下面是密码输入框-->
            <div class="input-group">
                <span class="input-group-addon" id="Span1">@</span>
                
                 <asp:TextBox ID="pwd" CssClass="form-control" placeholder="密码" aria-describedby="Span1" runat="server" TextMode="Password"></asp:TextBox>
            </div>
            <br/>
            <!--下面是身份选择-->
            <div>
               
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="12px" RepeatDirection="Horizontal" Width="112px" ForeColor="#ffffff">
                        <asp:ListItem Value="教练">教练</asp:ListItem>
                        <asp:ListItem Value="学员" Selected="True">学员</asp:ListItem>
                    </asp:RadioButtonList>
                
             </div>
            <!--下面是按钮,包括颜色控制-->
            
                <asp:Button CssClass="btn btn-primary"  ID="login" runat="server" Text="登录" Width="100%" OnClick="login_Click" />
                <br/>
                <br/>
                <asp:Button CssClass="btn btn-warning"  ID="register" runat="server" Text="注册" Width="100%" OnClick="register_Click" CausesValidation="False" />
            
            
        </form>
    </div>
</body>
</html>
