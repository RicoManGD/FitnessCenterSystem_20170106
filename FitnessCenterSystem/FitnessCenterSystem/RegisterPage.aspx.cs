using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using MyWeb;

namespace FitnessCenterSystem
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void register_Click(object sender, EventArgs e)
        {
            string LoginId = txtName.Text.Trim();
            string LoginPwd = PwdV.Text.Trim();
            try
            {
                int result = SqlHelper.ExecuteSql("insert into [Login] values('" + LoginId + "','" + LoginPwd + "','学员')");
                if (result > 0)
                {
                    int result1 = SqlHelper.ExecuteSql("insert into [StudentMessage](LoginId,stuName) values('" + LoginId + "','新用户')");
                    Session["userId"] = LoginId;
                    Session["identity"] = "学员";
                    Session["userName"] = "新用户"; /*用来判断是否新用户跳转首页后直接跳转到个人信息设置*/
                    Response.Write("<script>alert('注册成功');window.location='stuIndex.aspx';</script>");
                }
                else
                {
                    Response.Write("<script>alert('注册失败');</script>");
                }
            }
            catch (Exception ex)
            {
                
                Response.Write("<script>alert('注册失败');</script>");
            }
        }
    }
}