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
    public partial class costuLesson : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataSet ds = SqlHelper.Query("select distinct curName from [StudentLesson] ");
                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    DropDownList1.Items.Add(ds.Tables[0].Rows[i][0].ToString().Trim());
                }
                BindDate();
            }
        }
        void BindDate()
        {
            GridView1.DataSource = SqlHelper.Query("select * from [StudentLesson]");
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string stuName = TextBox1.Text.Trim();
            GridView1.DataSource = SqlHelper.Query("select * from [StudentLesson] where stuName like '" + stuName + "%'");
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedItem.Text.Trim().Equals("全部"))
            {
                BindDate();
            }
            else
            {
                string curName = DropDownList1.SelectedItem.Text.Trim();
                GridView1.DataSource = SqlHelper.Query("select * from [StudentLesson] where curName='" + curName + "'");
                GridView1.DataBind();
            }
           
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            BindDate();
        }
    }
}