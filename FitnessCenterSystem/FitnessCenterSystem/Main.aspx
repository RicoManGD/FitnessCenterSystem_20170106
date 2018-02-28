<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="FitnessCenterSystem.Main" %>

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
        .auto-style5 {
            height: 99px;
        }
        .auto-style17 {
            height: 100px;
            width: 223px;
        }
        .auto-style18 {
            height: 100px;
            width: 215px;
        }
        #container {
            margin-left:auto;
            margin-right:auto;
            margin-top:40px;
        }
        #viewtable {
            border:solid 2px #d6d6d6;
        }
            #viewtable tr {
                border: dashed 1px #808080;

            }
            #viewtable td {
                border: dashed 1px #808080;

            }
       
        .auto-style19 {
            width: 252px
        }
        </style>
<body>
    <ol class="breadcrumb">
        <li>会员管理</li>
        <li class="active">会员个人信息</li>
    </ol>
    <div class="container" id="container">
    <form id="form1" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="749px">
            <ItemTemplate>
                <table id="viewtable">
                    <tr>
                        <td rowspan="3" class="auto-style19">
                            &nbsp;
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Photo") %>' Height="290px" Width="239px" />
                        </td>
                        <td class="auto-style18">姓名：<asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                        </td>
                        <td class="auto-style17">性别：<asp:Label ID="Label2" runat="server" Text='<%# Eval("Sex") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style18">年龄：<asp:Label ID="Label3" runat="server" Text='<%# Eval("Age") %>'></asp:Label>
                        </td>
                        <td class="auto-style17">身高：<asp:Label ID="Label4" runat="server" Text='<%# Eval("Heights") %>'></asp:Label>
                            cm</td>
                    </tr>
                    <tr>
                        <td class="auto-style18">视力：<asp:Label ID="Label6" runat="server" Text='<%# Eval("Vision") %>'></asp:Label>
                        </td>
                        <td class="auto-style17">体重：<asp:Label ID="Label5" runat="server" Text='<%# Eval("Weights") %>'></asp:Label>
                            kg</td>
                    </tr>
                    <tr>
                        <td class="auto-style19" rowspan="2">&nbsp;</td>
                        <td class="auto-style18">体脂率：<asp:Label ID="Label8" runat="server" Text='<%# Eval("BodyFatFate") %>'></asp:Label>
                        </td>
                        <td class="auto-style17">联系方式：<asp:Label ID="Label9" runat="server" Text='<%# Eval("Phone") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5" colspan="2">地区：<asp:Label ID="Label7" runat="server" Text='<%# Eval("Addres") %>'></asp:Label>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </form>
    </div>
</body>
</html>
