<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MAAcoach.aspx.cs" Inherits="FitnessCenterSystem.MAAcoach" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link href="css/bootstrap.min.css" rel="stylesheet" />
    <script src="date/WdatePicker.js"></script>
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
            height: 140px;
        }
        .auto-style3 {
            width: 183px;
            height: 166px;
        }
        .auto-style4 {
            width: 117px;
            height: 166px;
        }
        
        .auto-style5 {
            width: 216px;
            height: 166px;
        }
        .auto-style6 {
            width: 185px;
            height: 166px;
        }
        
        .auto-style7 {
            width: 84px;
            height: 166px;
        }
        .auto-style8 {
            height: 166px;
        }
        
        </style>
<body>
    <ol class="breadcrumb">
        <li>教练</li>
        <li class="active">预约排期</li>
    </ol>
    <div class="container" id="container">
        <form id="form1" class="form-inline" runat="server">
          
            
            <table class="auto-style1">
                <tr>
                    <td class="auto-style7">教练名：</td>
                    <td class="auto-style3">
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="33px" Width="132px">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style4">预约日期：</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox1" Class="Wdate" onfocus="WdatePicker({lang:'zh-cn'})" runat="server" Width="174px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                    </td>
                    <td class="auto-style6">
                        <asp:RadioButtonList ID="RadioButtonList1" CssClass="form-control" runat="server" RepeatDirection="Horizontal" Width="166px" Height="70px">
                            <asp:ListItem>全天</asp:ListItem>
                            <asp:ListItem>上午</asp:ListItem>
                            <asp:ListItem>下午</asp:ListItem>
                            <asp:ListItem>夜晚</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td class="auto-style8">
                        <asp:Button ID="Button1" runat="server" CssClass="btn btn-warning" Height="39px" Text="预约" Width="105px" OnClick="Button1_Click" />
                    </td>
                </tr>
                </table>
          
            
        </form>
    </div>
</body>
</html>