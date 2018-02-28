<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="stuLeft.aspx.cs" Inherits="FitnessCenterSystem.Left" %>

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
    #container {
        margin-top:30px;
        
    }
    body {
        
        border:solid 3px #d6d6d6;
        border-right:0;
        font-size:large;
       background:#f2f2f2;
    }
   li {
       font-weight: 600;
       font-family: 微软雅黑;
   }
</style>
<body>
    <div class="container" id="container">
        <form id="form1" runat="server">
			<ul class="nav nav-pills nav-stacked" id="mynav" role="tablist">
				<li class="navbar-header" ><span class="glyphicon glyphicon-briefcase"></span>&nbsp会员管理</li>
				<li class="active"><a href="Main.aspx" target="Main" >会员个人信息</a></li>
				<li><a href="stuAlter.aspx" target="Main">修改个人信息</a></li>
				<li><a href="stuLesson.aspx" target="Main">会员选课信息</a></li>
                        
				 <li class="navbar-header"><span class="glyphicon glyphicon-pushpin"></span>&nbsp课程管理</li>
				 <li><a href="CourseIntroduction.aspx" target="Main">课程信息</a></li>
				 <li><a href="curArrange.aspx" target="Main">课程安排</a></li>
                 <li class="navbar-header"><span class="glyphicon glyphicon-tower"></span>&nbsp教练</li>
                 <li><a href="CoachHonor.aspx" target="Main">教练介绍</a></li>
                 <li><a href="MAAcoach.aspx" target="Main">预约排期</a></li>
                 <li class="navbar-header"><span class="glyphicon glyphicon-info-sign"></span>&nbsp介绍</li>
                 <li><a href="FitnessCenterPro.aspx" target="Main">馆场介绍</a></li>
                        
			</ul>
        </form>
    </div>
    <script src="Scripts/jquery-2.1.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script>
        $("#mynav a").click(function (e) {
            $(this).tab("show");
        });
    </script>
</body>
    
</html>
