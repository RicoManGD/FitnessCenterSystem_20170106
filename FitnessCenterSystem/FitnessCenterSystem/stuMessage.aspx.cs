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
    public partial class stuMessage : System.Web.UI.Page
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
            GridView1.DataSource = SqlHelper.Query("select * from [StudentMessage]");
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string stuName = TextBox1.Text.Trim();
            GridView1.DataSource = SqlHelper.Query("select * from [StudentMessage] where stuName like '"+stuName+"%'");
            GridView1.DataBind();
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            BindDate();
        }
    }
}