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
    public partial class curArrange : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindDate();
            }
        }
        void BindDate()
        {
            GridView1.DataSource = SqlHelper.Query("select * from [CoachTeach]");
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int curTime = Convert.ToInt16(DropDownList1.SelectedItem.Value);
            switch (curTime)
            {
                case 0:
                    BindDate();
                    break;
                case 1:
                    GridView1.DataSource = SqlHelper.Query("select * from [CoachTeach] where curTime='周一'");
                    GridView1.DataBind();
                    break;
                case 2:
                    GridView1.DataSource = SqlHelper.Query("select * from [CoachTeach] where curTime='周二'");
                    GridView1.DataBind();
                    break;
                case 3:
                    GridView1.DataSource = SqlHelper.Query("select * from [CoachTeach] where curTime='周三'");
                    GridView1.DataBind();
                    break;
                case 4:
                    GridView1.DataSource = SqlHelper.Query("select * from [CoachTeach] where curTime='周四'");
                    GridView1.DataBind();
                    break;
                case 5:
                    GridView1.DataSource = SqlHelper.Query("select * from [CoachTeach] where curTime='周五'");
                    GridView1.DataBind();
                    break;
                default:
                    break;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string curName = TextBox1.Text.Trim();
            GridView1.DataSource = SqlHelper.Query("select * from [CoachTeach] where curName like '%" + curName + "%'");
            GridView1.DataBind();
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            BindDate();
        }
    }
}