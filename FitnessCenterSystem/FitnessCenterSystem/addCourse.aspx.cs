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
    public partial class addCourse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            
            string photo = "/images/" + FileUpload1.FileName;
            string curNum = TextBox1.Text.Trim();
            string curName = TextBox2.Text.Trim();
            string curtype = TextBox6.Text.Trim();
            string functions = TextBox5.Text.Trim();
            string introduce = TextBox4.Text.Trim();
            string curhour = DropDownList1.SelectedItem.Text.Trim();
            SqlParameter sp1 = new SqlParameter("@curNum", curNum);
            SqlParameter sp2 = new SqlParameter("@photo", photo);
            SqlParameter sp3 = new SqlParameter("@curName", curName);
            SqlParameter sp4 = new SqlParameter("@curtype", curtype);
            SqlParameter sp5 = new SqlParameter("@functions", functions);
            SqlParameter sp6 = new SqlParameter("@introduce", introduce);
            SqlParameter sp7 = new SqlParameter("@curhour", curhour);
            
            if (FileUpload1.HasFile)
            {
                try
                {
                    int result = SqlHelper.ExecuteSql("insert into [CourseIntroduction] values(@curNum,@curName,@curhour,@curtype,@functions,@introduce,@photo)", sp1, sp2, sp3, sp4, sp5, sp6, sp7);
                    string filename = FileUpload1.FileName;
                    FileUpload1.SaveAs(Server.MapPath("~/images/") + filename);
                    
                    if (result > 0)
                    {
                        Response.Write("<script>alert('添加成功');</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('添加失败');</script>");
                    }
                }
                catch (Exception ex)
                {

                    Response.Write("<script>alert('添加失败');</script>");
                }
            }
        }
    }
}