using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using MyWeb;
using System.Text;

namespace FitnessCenterSystem
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void register_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegisterPage.aspx");
        }

        protected void login_Click(object sender, EventArgs e)
        {
            string LoginId = txtName.Text.Trim();
            string LoginPwd = pwd.Text.Trim();
            string name = "";
            Session["identity"] = "";
            SqlParameter sp = new SqlParameter("@loginId", LoginId);
            SqlParameter sp1 = new SqlParameter("@loginPwd", LoginPwd);
            DataSet ds = SqlHelper.Query("select count(*) from [Login] where loginId=@loginId and loginPwd=@loginPwd", sp, sp1);  
            int result = Convert.ToInt32(ds.Tables[0].Rows[0][0].ToString());
            
            if (result > 0)
            {
                try
                {
                    DataSet ds0 = SqlHelper.Query("select loginType from [Login] where loginId=@loginId and loginPwd=@loginPwd", sp, sp1);
                    string ide = ds0.Tables[0].Rows[0][0].ToString().Trim();
                    if (RadioButtonList1.SelectedItem.Value.Equals("教练") && ide == "教练")
                    {
                        Session["identity"] = "教练";
                        DataSet ds1 = SqlHelper.Query("select coName from [CoachMessage] where loginId=@loginId", sp);
                        name = ds1.Tables[0].Rows[0][0].ToString();
                        //Session["photo"] = ds1.Tables[0].Rows[0][1].ToString().Trim();
                        ds1.Dispose();
                    }
                    else if (RadioButtonList1.SelectedItem.Value.Equals("学员") && ide == "学员")
                    {
                        Session["identity"] = "学员";
                        DataSet ds2 = SqlHelper.Query("select stuName from [StudentMessage] where loginId=@loginId", sp);
                        name = ds2.Tables[0].Rows[0][0].ToString();
                        //Session["photo"] = ds2.Tables[0].Rows[0][1].ToString().Trim();
                        ds2.Dispose();
                    }
                    Session["userId"] = LoginId;
                    Session["userName"] = name;
                    ds.Dispose();
                    string iden = Session["identity"].ToString();
                    if (iden == "教练")
                    {
                        Response.Redirect("coIndex.aspx");
                    }
                    else if (iden == "学员")
                    {
                        Response.Redirect("stuIndex.aspx");
                    }
                    else
                    {
                        Response.Write("<script>alert('身份错误');</script>");
                    }
                }
                catch (Exception ex)
                {
                    
                    Response.Write("<script>alert('登录失败，找不到此用户');</script>");
                }
               
                
            }
            else
            {
                Response.Write("<script>alert('用户名或密码错误');</script>");
            }
           
        }
    }
}