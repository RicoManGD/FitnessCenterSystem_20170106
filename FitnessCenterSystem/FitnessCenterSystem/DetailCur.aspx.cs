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
    public partial class DetailCur : System.Web.UI.Page
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
            string curNum = Request.QueryString["curid"].ToString();
            DetailsView1.DataSource = SqlHelper.Query("select * from [CourseIntroduction] where curNum='"+curNum+"'");
            DetailsView1.DataBind();

        }
    }

}