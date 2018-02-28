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
    public partial class coTeach : System.Web.UI.Page
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
            GridView1.DataSource = SqlHelper.Query("select * from [CoachTeach] where loginId='" + Session["userId"].ToString() + "'");
            GridView1.DataBind();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            BindDate();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            BindDate();

        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

            string curNum = GridView1.Rows[e.RowIndex].Cells[0].Text.Trim();
            string curTime = ((DropDownList)(GridView1.Rows[e.RowIndex].FindControl("DropDownList1"))).SelectedItem.Text.Trim();
            SqlParameter sp = new SqlParameter("@curTime", curTime);
            int result = SqlHelper.ExecuteSql("update [CoachTeach] set curTime=@curTime where curNum='"+curNum+"'",sp);
            BindDate();
        }
    }
}