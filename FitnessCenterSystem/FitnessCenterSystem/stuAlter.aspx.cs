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
    public partial class stuAlter : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                stuMessage();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string stuName=TextBox1.Text.Trim();
            string stuSex = DropDownList1.SelectedItem.Text.ToString();
            int stuAge = Convert.ToInt32(TextBox2.Text.Trim());
            string stuHeight=TextBox3.Text.Trim();
            string stuWeight=TextBox4.Text.Trim();
            string stuVision = DropDownList2.SelectedItem.Text.ToString();
            string stuBodyFatFate=TextBox5.Text.Trim();
            string stuPhone=TextBox6.Text.Trim();
            string stuAdd = TextBox7.Text.Trim();
            SqlParameter sp1=new SqlParameter("@stuName",stuName);
            SqlParameter sp2=new SqlParameter("@stuSex",stuSex);
            SqlParameter sp3=new SqlParameter("@stuAge",stuAge);
            SqlParameter sp4=new SqlParameter("@stuHeight",stuHeight);
            SqlParameter sp5=new SqlParameter("@stuWeight",stuWeight);
            SqlParameter sp6=new SqlParameter("@stuVision",stuVision);
            SqlParameter sp7=new SqlParameter("@stuBodyFatFate",stuBodyFatFate);
            SqlParameter sp8=new SqlParameter("@stuPhone",stuPhone);
            SqlParameter sp9=new SqlParameter("@stuAdd",stuAdd);
            try
            {
                int result = SqlHelper.ExecuteSql("update [StudentMessage] set stuName=@stuName,stuSex=@stuSex,stuAge=@stuAge,stuHeight=@stuHeight,stuWeight=@stuWeight,stuVision=@stuVision,stuBodyFatFate=@stuBodyFatFate,stuPhone=@stuPhone,stuAdd=@stuAdd where loginId='" + Session["userId"] + "'", sp1, sp2, sp3, sp4, sp5, sp6, sp7, sp8, sp9);
                if (result > 0)
                {
                    Response.Write("<script>alert('修改成功');</script>");
                }
                else
                {
                    Response.Write("<script>alert('修改失败');</script>");
                }
            }
            catch (Exception ex)
            {
                
                Response.Write("<script>alert('修改失败');</script>");
            }

        }
        void stuMessage()
        {
            DataSet ds = SqlHelper.Query("select * from [StudentMessage] where loginId='" + Session["userId"].ToString() + "'");
            TextBox1.Text = ds.Tables[0].Rows[0][1].ToString().Trim();
            TextBox2.Text = ds.Tables[0].Rows[0][2].ToString().Trim();
            TextBox3.Text = ds.Tables[0].Rows[0][6].ToString().Trim();
            TextBox4.Text = ds.Tables[0].Rows[0][7].ToString().Trim();
            TextBox5.Text = ds.Tables[0].Rows[0][9].ToString().Trim();
            TextBox6.Text = ds.Tables[0].Rows[0][10].ToString().Trim();
            TextBox7.Text = ds.Tables[0].Rows[0][4].ToString().Trim();

            
        }
    }
}