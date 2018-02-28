<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CoachHonor.aspx.cs" Inherits="FitnessCenterSystem.CoachHonor" %>

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
        
        .auto-style4 {
            height: 20px;
        }
        .auto-style7 {
            height: 5px;
            width: 241px;
        }
        .auto-style15 {
            width: 230px;
        }
        .auto-style16 {
            height: 12px;
            width: 241px;
        }
        .auto-style17 {
            height: 12px;
            width: 387px;
        }
        .auto-style18 {
            height: 5px;
        }
        .auto-style19 {
            height: 12px;
            width: 645px;
        }
        
        </style>
<body>
    <ol class="breadcrumb">
        <li>教练</li>
        <li class="active">教练介绍</li>
    </ol>
    <div class="container" id="container">
        <form id="form1" class="form-inline" runat="server">
            
            
            <asp:DataList ID="DataList1" runat="server">
                <ItemTemplate>
                    <table style="margin-bottom:10px; border:solid 1px #808080;">
                        <tr style="border-bottom:solid 1px #808080;">
                            <td class="auto-style15" rowspan="3">
                                <asp:Image ID="Image1" runat="server" Height="225px" ImageUrl='<%# Eval("photo") %>' Width="206px" />
                            </td>
                            <td class="auto-style16" style="border:solid 1px #808080;">姓名：<asp:Label ID="Label1" runat="server" Text='<%# Eval("coName") %>'></asp:Label>
                            </td>
                            <td class="auto-style17" style="border:solid 1px #808080;">性别：<asp:Label ID="Label2" runat="server" Text='<%# Eval("coSex") %>'></asp:Label>
                            </td>
                            <td class="auto-style19" style="border:solid 1px #808080;">健身时间：<asp:Label ID="Label3" runat="server" Text='<%# Eval("teachTime") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style7" style="border:solid 1px #808080;" >健身类型：<asp:Label ID="Label4" runat="server" Text='<%# Eval("type") %>'></asp:Label>
                            </td>
                            <td class="auto-style18" style="border:solid 1px #808080;" colspan="2">荣誉：<asp:Label ID="Label5" runat="server" Text='<%# Eval("honor") %>'></asp:Label>
                            </td>
                        </tr>
                        
                    </table>
                </ItemTemplate>
            </asp:DataList>
            
            
        </form>
    </div>
</body>
</html>