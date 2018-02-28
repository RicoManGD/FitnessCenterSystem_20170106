<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addCourse.aspx.cs" Inherits="FitnessCenterSystem.addCourse" %>

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
            margin-left: auto;
            margin-right: auto;
            margin-top: 40px;
        }
        
        .auto-style1 {
            width: 100%;
            height: 160px;
        }
        
        .auto-style3 {
            width: 423px;
        }
        .auto-style5 {
            width: 207px
        }
        .auto-style6 {
            width: 167px
        }
        
        </style>
<body>
    <ol class="breadcrumb">
        <li>课程管理</li>
        <li class="active">添加课程</li>
    </ol>
    <div class="container" id="container">
        <form id="form1" class="form-inline" runat="server">
            
            
            <table class="auto-style1">
                <tr>
                    <td class="auto-style5">课程号：
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style6">课程名：</td>
                    <td>
                        <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">课程时间：</td>
                    <td class="auto-style3">
                        <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server" Width="171px">
                            <asp:ListItem>30min</asp:ListItem>
                            <asp:ListItem>40min</asp:ListItem>
                            <asp:ListItem>1h</asp:ListItem>
                            <asp:ListItem>2h</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style6">类型：</td>
                    <td>
                        <asp:TextBox ID="TextBox6" CssClass="form-control" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">课程效果：</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server" Width="355px"></asp:TextBox>
                    </td>
                    <td class="auto-style6">介绍：</td>
                    <td>
                        <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" Width="633px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">图片上传：</td>
                    <td class="auto-style3">
                        <asp:FileUpload ID="FileUpload1" CssClass="form-control" runat="server" Width="225px" />
                    </td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            
            
            <br />
            <br />
            <asp:Button ID="Button1" CssClass="btn btn-success" runat="server" Text="提交" Height="62px" Width="187px" OnClick="Button1_Click1" />
            
            
        </form>
    </div>
</body>
</html>