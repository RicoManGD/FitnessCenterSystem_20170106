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
    public partial class Main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindList();
            }
        }
        void BindList()
        {
            string ide = Session["identity"].ToString();
            string LoginId = Session["userId"].ToString();
            if (ide == "教练")
            {
                DataList1.DataSource = SqlHelper.Query("select * from coView where LoginId='" + LoginId + "'");
            }
            else if (ide == "学员")
            {
                DataList1.DataSource = SqlHelper.Query("select * from stuView where LoginId='" + LoginId + "'");
            }
            DataList1.DataBind();
        }
        
    }
}