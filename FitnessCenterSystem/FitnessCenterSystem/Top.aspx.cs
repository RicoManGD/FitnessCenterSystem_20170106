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
    
    public partial class Top : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                Label1.Text = Session["userName"].ToString();
                Label2.Text = Session["identity"].ToString();
                Label3.Text = Session["userId"].ToString();
                BindData();
            }
            
        }
        void BindData()
        {
            string ide = Session["identity"].ToString();
            if (ide.Equals("教练"))
            {
                DataSet ds=SqlHelper.Query("select coPhoto from [CoachMessage] where loginId='"+Session["userId"]+"'");
                string photo=ds.Tables[0].Rows[0][0].ToString().Trim();
                Image1.ImageUrl = photo;
            }
            else if (ide.Equals("学员"))
            {
                DataSet ds = SqlHelper.Query("select stuPhoto from [StudentMessage] where loginId='" + Session["userId"] + "'");
                string photo = ds.Tables[0].Rows[0][0].ToString().Trim();
                Image1.ImageUrl = photo;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["userName"] = null;
            Session["identity"] = null;
            Session["userId"] = null;
            Response.Redirect("LoginPage.aspx");
            
        }

    }
}