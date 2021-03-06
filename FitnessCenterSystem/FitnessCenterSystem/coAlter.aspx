﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="coAlter.aspx.cs" Inherits="FitnessCenterSystem.coAlter" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link href="css/bootstrap.min.css" rel="stylesheet" />
    <title></title>
</head>
    <style>
        html,body{  
            margin:0;  
            padding:0;  
            height:100%;  
            overflow:hidden;  
        }
        body {
            width:auto;
            height:auto;
            border:solid 3px #d6d6d6;
           
            height:100%;
        }
        #container {
            margin-left:auto;
            margin-right:auto;
            margin-top:40px;
        }
        .auto-style2 {
            width: 93px;
            height: 53px;
        }
        .auto-style4 {
            width: 349px;
            height: 53px;
        }
        .auto-style9 {
            width: 375px;
            height: 53px;
        }

        .auto-style11 {
            width: 83px;
            height: 47px;
        }
        .auto-style12 {
            height: 47px;
        }
        .auto-style14 {
            width: 83px;
            height: 52px;
        }
        .auto-style15 {
            width: 375px;
            height: 52px;
        }
        .auto-style16 {
            width: 93px;
            height: 52px;
        }
        .auto-style17 {
            width: 349px;
            height: 52px;
        }
        .auto-style18 {
            width: 83px;
            height: 53px;
        }
        .auto-style19 {
            height: 53px;
        }

    </style>
<body>
    <ol class="breadcrumb">
        <li>教练管理</li>
        <li class="active">修改个人信息</li>
    </ol>
    <div class="container" id="container">
    <form id="form1" class="form-inline"  runat="server">
    
        <h1>修改个人信息</h1>

        <table border="0" style="padding: 1px; margin: 1px; font-size: large; font-weight: 600; height: 309px; ">
            <tr>
                <td class="auto-style14">姓名</td>
                <td class="auto-style15">
                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style16">性别</td>
                <td class="auto-style17">
                    <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server" Width="106px">
                        <asp:ListItem>男</asp:ListItem>
                        <asp:ListItem>女</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">年龄</td>
                <td class="auto-style15">
                    <div class="form-group">
                        <div class="input-group">
                            <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" value="20" Width="62px" ></asp:TextBox>
                            <div class="input-group-addon">岁</div>
                        </div>
                    </div>
                </td>
                <td class="auto-style16">身高</td>
                <td class="auto-style17">
                    <div class="form-group">
                        <div class="input-group">
                            <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server"></asp:TextBox>
                            <div class="input-group-addon">cm</div>
                        </div>
                    </div>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">视力</td>
                <td class="auto-style15">
                    <asp:DropDownList CssClass="form-control" ID="DropDownList2" runat="server" Width="122px">
                        <asp:ListItem>正常</asp:ListItem>
                        <asp:ListItem>轻微近视</asp:ListItem>
                        <asp:ListItem>中高度近视</asp:ListItem>
                        <asp:ListItem>轻微远视</asp:ListItem>
                        <asp:ListItem>中高度远视</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style16">体重</td>
                <td class="auto-style17">
                    <div class="form-group">
                        <div class="input-group">
                            <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server"></asp:TextBox>
                            <div class="input-group-addon">kg</div>
                        </div>
                    </div>
                </td>
            </tr>
            <tr>
                <td class="auto-style18">体脂率</td>
                <td class="auto-style9">
                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style2">联系方式</td>
                <td class="auto-style4">
                    <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style18">地区</td>
                <td colspan="3" class="auto-style19">
                    <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" Width="335px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11"></td>
                <td colspan="3" style="text-align:right;" class="auto-style12">
                    <asp:Button CssClass="btn btn-info" ID="Button1" runat="server" Height="42px" Text="修改" Width="168px" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>

    
    </form>
    </div>
</body>
</html>