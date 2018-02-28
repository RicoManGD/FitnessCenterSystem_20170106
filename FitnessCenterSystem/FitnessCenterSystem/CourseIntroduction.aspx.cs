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
    public partial class CourseIntroduction : System.Web.UI.Page
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
            DataList1.DataSource = SqlHelper.Query("select * from [CourseIntroduction]");
            DataList1.DataBind();
        }
        
    }
}