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
    public partial class stuLesson : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindstuLesson();
            }
        }
        void BindstuLesson()
        {
            GridView1.DataSource = SqlHelper.Query("select curNum,curName,curTime,coName from [StudentLesson] where loginId='"+Session["userId"].ToString()+"'");
            GridView1.DataBind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string curNum = GridView1.Rows[e.RowIndex].Cells[0].Text.ToString();
            int result = SqlHelper.ExecuteSql("delete from [StudentLesson] where curNum='" + curNum + "' and loginId='" + Session["userId"].ToString() + "'");
            if (result > 0)
            {
                Response.Write("<script>alert('退出成功');</script>");
            }
            else 
            {
                Response.Write("<script>alert('失败成功');</script>");
            }
            BindstuLesson();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int curTime = Convert.ToInt16(DropDownList1.SelectedItem.Value);
            switch (curTime)
            {
                case 0:
                    BindstuLesson();
                    break;
                case 1:
                        GridView1.DataSource = SqlHelper.Query("select curNum,curName,curTime,coName from [StudentLesson] where loginId='"+Session["userId"].ToString()+"' and curTime='周一'");
                        GridView1.DataBind();
                        break;
                case 2:
                        GridView1.DataSource = SqlHelper.Query("select curNum,curName,curTime,coName from [StudentLesson] where loginId='" + Session["userId"].ToString() + "' and curTime='周二'");
                        GridView1.DataBind();
                        break;
                case 3:
                        GridView1.DataSource = SqlHelper.Query("select curNum,curName,curTime,coName from [StudentLesson] where loginId='" + Session["userId"].ToString() + "' and curTime='周三'");
                        GridView1.DataBind();
                        break;
                case 4:
                        GridView1.DataSource = SqlHelper.Query("select curNum,curName,curTime,coName from [StudentLesson] where loginId='" + Session["userId"].ToString() + "' and curTime='周四'");
                        GridView1.DataBind();
                        break;
                case 5:
                        GridView1.DataSource = SqlHelper.Query("select curNum,curName,curTime,coName from [StudentLesson] where loginId='" + Session["userId"].ToString() + "' and curTime='周五'");
                        GridView1.DataBind();
                        break;
                default:
                    break;
            }
            
        }
    }
}