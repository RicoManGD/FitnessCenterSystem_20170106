<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="costuLesson.aspx.cs" Inherits="FitnessCenterSystem.costuLesson" %>

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
        <li>学员管理</li>
        <li class="active">学员选课</li>
    </ol>
    <div class="container" id="container">
        <form id="form1" class="form-inline" runat="server">
          按姓名查询：
            <div class="form-group">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary btn-sm" Text="查询" OnClick="Button1_Click" />
            </div>
            按课程名查询：
            <div class="form-group">
                <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server" Width="176px">
                    <asp:ListItem>全部</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="form-group">
                <asp:Button ID="Button2" runat="server" CssClass="btn btn-primary btn-sm" Text="查询" OnClick="Button2_Click" />
            </div>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Height="134px" Width="1100px" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="loginId" HeaderText="账号" />
                    <asp:BoundField DataField="stuName" HeaderText="姓名" />
                    <asp:BoundField DataField="curNum" HeaderText="课程号" />
                    <asp:BoundField DataField="curName" HeaderText="课程名" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
          
        </form>
    </div>
</body>
</html>
