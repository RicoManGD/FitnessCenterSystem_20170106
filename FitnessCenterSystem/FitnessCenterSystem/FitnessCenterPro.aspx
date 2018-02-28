<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FitnessCenterPro.aspx.cs" Inherits="FitnessCenterSystem.FitnessCenterPro" %>

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
            height: 252px;
        }
        .auto-style4 {
            width: 81px;
        }
        .auto-style5 {
            width: 83px;
        }
        .auto-style6 {
        }
        .auto-style7 {
            width: 221px;
        }
        .auto-style8 {
            width: 97px;
        }
        </style>
<body>
    <ol class="breadcrumb">
        <li>介绍</li>
        <li class="active">馆场介绍</li>
    </ol>
    <div class="container" id="container">
        <h1 style="text-align:center;">馆场介绍</h1>
        <form id="form1" class="form-inline" runat="server">
            <asp:DataList ID="DataList1" runat="server">
                <ItemTemplate>
                    <table class="auto-style1" border="1">
                        <tr>
                            <td class="auto-style5">馆名：</td>
                            <td class="auto-style6">
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                            </td>
                            <td class="auto-style4">建馆时间：</td>
                            <td class="auto-style7">
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("old") %>'></asp:Label>
                            </td>
                            <td class="auto-style8">占地面积：</td>
                            <td>
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("square") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">器材：</td>
                            <td class="auto-style6">
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("kit") %>'></asp:Label>
                            </td>
                            <td class="auto-style4">场地灯光：</td>
                            <td class="auto-style7">
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("light") %>'></asp:Label>
                            </td>
                            <td class="auto-style8">师资：</td>
                            <td>
                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("teacher") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">荣誉：</td>
                            <td class="auto-style6" colspan="5">
                                <asp:Label ID="Label7" runat="server" Text='<%# Eval("honor") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">地址：</td>
                            <td class="auto-style6" colspan="5">
                                <asp:Label ID="Label8" runat="server" Text='<%# Eval("addressV") %>'></asp:Label>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
    
        </form>
    </div>
</body>
</html>