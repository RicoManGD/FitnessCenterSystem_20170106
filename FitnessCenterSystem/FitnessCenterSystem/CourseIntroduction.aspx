<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CourseIntroduction.aspx.cs" Inherits="FitnessCenterSystem.CourseIntroduction" %>

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
        .auto-style3 {
            width: 214px;
        }
        
        .auto-style4 {
            width: 214px;
            height: 22px;
        }
        
        </style>
<body>
    <ol class="breadcrumb">
        <li>课程管理</li>
        <li class="active">课程信息</li>
    </ol>
    <div class="container" id="container">
        <form id="form1" class="form-inline" runat="server">
            <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" CellSpacing="20">
                <ItemTemplate>
                    <table  style="margin-right:20px; margin-bottom:20px;border: dashed 1px #d6d6d6;">
                        <tr>
                            <td class="auto-style3">
                                <asp:Image ID="Image1" runat="server" Height="227px" ImageUrl='<%# Eval("photo") %>' Width="214px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4" style="border-bottom:dashed 1px #d6d6d6;" >
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("curName") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:right;" class="auto-style3">
                                
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("curNum","DetailCur.aspx?curid={0}") %>'>查看</asp:HyperLink>
                                
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </form>
    </div>
</body>
</html>
