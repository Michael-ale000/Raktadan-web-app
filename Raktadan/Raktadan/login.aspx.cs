using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Raktadan
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Signup_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/signup.aspx");
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection();
            cn.ConnectionString = @"Data Source=MICHAEL-ALE-MAG;Initial Catalog=project;Integrated Security=True";
            string uname = username.Text;
            string pwd = password.Text;
            cn.Open();
            string sql = "select * from tbl_signup where username='" + uname + "' and pwd ='" + pwd + "'";
            SqlCommand cmd = new SqlCommand(sql, cn);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Response.Redirect("~/home.aspx");
            }
            else
            {
                Response.Write("invalid login attempt");
            }
            cn.Close();
        }
    }
}