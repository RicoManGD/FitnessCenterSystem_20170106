<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterPage.aspx.cs" Inherits="FitnessCenterSystem.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1" />
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
        height:350px;
    }
    #form1 {
         margin-top:50px;
    }
    #zhuce{
        margin-top:30px;
        color:rgba(255,255,255,0.9);

    }
    
</style>
<body class="login-layout">
    <div class="container" id="container">
        <div id="zhuce"><h1>学员注册</h1></div>
        <form id="form1" runat="server">
            <!--下面是用户名输入框-->
            <div class="input-group">
                <asp:TextBox ID="txtName" CssClass="form-control" placeholder="用户名" aria-describedby="basic-addon1" runat="server"></asp:TextBox>
                <span class="input-group-addon" id="basic-addon1">*</span>
            </div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="不能为空" Display="Dynamic" ControlToValidate="txtName" Font-Bold="False" Font-Names="微软雅黑" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="不能少于6位" ControlToValidate="txtName" Display="Dynamic" Font-Names="微软雅黑" ForeColor="Red" ValidationExpression=".{6,}"></asp:RegularExpressionValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="必须至少有一个数字和字母" ControlToValidate="txtName" Display="Dynamic" Font-Names="微软雅黑" ForeColor="Red" ValidationExpression="^(?=.*[a-zA-Z]+)(?=.*[0-9]+)[a-zA-Z0-9]+$"></asp:RegularExpressionValidator>
            <br/>
            <!--下面是密码输入框-->
            <div class="input-group">
                 <asp:TextBox ID="pwd" CssClass="form-control" placeholder="密码" aria-describedby="basic-addon1" runat="server" TextMode="Password"></asp:TextBox>
                <span class="input-group-addon" id="Span1">*</span>
            </div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="不能为空" Display="Dynamic" ControlToValidate="pwd" Font-Bold="False" Font-Names="微软雅黑" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="不能少于6位" ControlToValidate="pwd" Display="Dynamic" Font-Names="微软雅黑" ForeColor="Red" ValidationExpression=".{6,}"></asp:RegularExpressionValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="只能数字或字母" ControlToValidate="pwd" Display="Dynamic" Font-Names="微软雅黑" ForeColor="Red" ValidationExpression="[a-zA-Z0-9]+"></asp:RegularExpressionValidator>
            <br/>
            <div class="input-group">
                 <asp:TextBox ID="PwdV" CssClass="form-control" placeholder="确认密码" aria-describedby="basic-addon1" runat="server" TextMode="Password"></asp:TextBox>
                <span class="input-group-addon" id="Span2">*</span>
            </div>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="密码必须一致" ControlToCompare="pwd" ControlToValidate="PwdV" Display="Dynamic" Font-Names="微软雅黑" ForeColor="Red"></asp:CompareValidator>
            <br/>
            
           <%-- <!--下面是性别选择-->
            <div class="radio-inline">
                <label>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="12px" RepeatDirection="Horizontal" Width="112px" ForeColor="#ffffff">
                        <asp:ListItem Value="男" Selected="True">男</asp:ListItem>
                        <asp:ListItem Value="女">女</asp:ListItem>
                    </asp:RadioButtonList>
                </label>
             </div>--%>
            
             <!--下面是提交-->
            <asp:Button CssClass="btn btn-success"  ID="register" runat="server" Text="提交" Width="100%" OnClick="register_Click" />
        </form>
    </div>
</body>
</html>
