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
    public partial class MAAcoach : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindCo();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string coName = DropDownList1.SelectedItem.Text.Trim();
            string stime = TextBox1.Text.Trim();
            string period = RadioButtonList1.SelectedItem.Text.Trim();
            string stuName = Session["userName"].ToString();
            string loginId = Session["userId"].ToString();
            SqlParameter sp1 = new SqlParameter("@loginId", loginId);
            SqlParameter sp2 = new SqlParameter("@stuName", stuName);
            SqlParameter sp3 = new SqlParameter("@coName", coName);
            SqlParameter sp4 = new SqlParameter("@stime", stime);
            SqlParameter sp5 = new SqlParameter("@period", period);

            try
            {
                int result = SqlHelper.ExecuteSql("insert into [StudentOrder] values(@loginId,@stuName,@coName,@stime,@period)", sp1, sp2, sp3, sp4, sp5);
                if (result > 0)
                {
                    Response.Write("<script>alert('预约成功');</script>");
                }
                else
                {
                    Response.Write("<script>alert('预约失败');</script>");
                }
            }
            catch (Exception ex)
            {
                
                Response.Write("<script>alert('预约失败');</script>");
            }
        }
        void BindCo()
        {
            DataSet ds = SqlHelper.Query("select * from [CoachMessage]");
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                DropDownList1.Items.Add(ds.Tables[0].Rows[i][1].ToString().Trim());
            }
        }


}