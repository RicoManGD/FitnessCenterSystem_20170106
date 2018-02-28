<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DetailCur.aspx.cs" Inherits="FitnessCenterSystem.DetailCur" %>

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

        </style>
<body>
    <ol class="breadcrumb">
        <li>课程管理</li>
        <li>课程信息</li>
        <li class="active">课程详情信息</li>
    </ol>
    <div class="container" id="container">
        <form id="form1" class="form-inline" runat="server">
            
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" ForeColor="#333333" GridLines="None" Height="342px" Width="922px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                <EditRowStyle BackColor="#999999" />
                <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" Width="100px" HorizontalAlign="Center" />
                <Fields>
                    <asp:BoundField DataField="curNum" HeaderText="课程号">
                    </asp:BoundField>
                    <asp:BoundField DataField="curName" HeaderText="课程名" />
                    <asp:BoundField DataField="hour" HeaderText="课程时间" />
                    <asp:BoundField DataField="type" HeaderText="运动类型" />
                    <asp:BoundField DataField="functions" HeaderText="运动效果" />
                    <asp:BoundField DataField="introduce" HeaderText="介绍" />
                </Fields>
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            </asp:DetailsView>
            
        </form>
    </div>
</body>
</html>
