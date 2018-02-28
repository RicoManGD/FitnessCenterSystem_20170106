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
    public partial class myMAA : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindData();

            }
        }
        void BindData()
        {
            GridView1.DataSource = SqlHelper.Query("select loginId,stuName,coName,CONVERT(char(11),ODtime,120)as ODDtime,timePeriod from [StudentOrder] where coName='" + Session["userName"].ToString() + "'");
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string ODtime = TextBox1.Text.Trim();
            GridView1.DataSource = SqlHelper.Query("select loginId,stuName,coName,CONVERT(char(11),ODtime,120)as ODDtime,timePeriod from [StudentOrder] where coName='" + Session["userName"].ToString() + "' and ODtime='" + ODtime+"'");
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string timePeriod = DropDownList1.SelectedItem.Text.Trim();
            GridView1.DataSource = SqlHelper.Query("select loginId,stuName,coName,CONVERT(char(11),ODtime,120)as ODDtime,timePeriod from [StudentOrder] where coName='" + Session["userName"].ToString() + "' and timePeriod='" + timePeriod + "'");
            GridView1.DataBind();
        }
    }
}