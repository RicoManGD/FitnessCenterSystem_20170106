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
    public partial class coAlter : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                coMessage();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string coName=TextBox1.Text.Trim();
            string coSex = DropDownList1.SelectedItem.Text.ToString();
            int coAge = Convert.ToInt32(TextBox2.Text.Trim());
            string coHeight=TextBox3.Text.Trim();
            string coWeight=TextBox4.Text.Trim();
            string coVision = DropDownList2.SelectedItem.Text.ToString();
            string coBodyFatFate=TextBox5.Text.Trim();
            string coPhone=TextBox6.Text.Trim();
            string coAdd = TextBox7.Text.Trim();
            SqlParameter sp1=new SqlParameter("@coName",coName);
            SqlParameter sp2=new SqlParameter("@coSex",coSex);
            SqlParameter sp3=new SqlParameter("@coAge",coAge);
            SqlParameter sp4=new SqlParameter("@coHeight",coHeight);
            SqlParameter sp5=new SqlParameter("@coWeight",coWeight);
            SqlParameter sp6=new SqlParameter("@coVision",coVision);
            SqlParameter sp7=new SqlParameter("@coBodyFatFate",coBodyFatFate);
            SqlParameter sp8=new SqlParameter("@coPhone",coPhone);
            SqlParameter sp9=new SqlParameter("@coAdd",coAdd);
            try
            {
                int result = SqlHelper.ExecuteSql("update [CoachMessage] set coName=@coName,coSex=@coSex,coAge=@coAge,coHeight=@coHeight,coWeight=@coWeight,coVision=@coVision,coBodyFatFate=@coBodyFatFate,coPhone=@coPhone,coAdd=@coAdd where loginId='" + Session["userId"] + "'", sp1, sp2, sp3, sp4, sp5, sp6, sp7, sp8, sp9);
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
        void coMessage()
        {
            DataSet ds = SqlHelper.Query("select * from [CoachMessage] where loginId='" + Session["userId"].ToString() + "'");
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