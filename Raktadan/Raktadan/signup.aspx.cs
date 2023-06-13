using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Raktadan
{
    public partial class signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection();
            cn.ConnectionString = @"Data Source=MICHAEL-ALE-MAG;Initial Catalog=project;Integrated Security=True";
            try
            {

                cn.Open();
                string email = Txt_email.Text;
                string firstname = Txt_first_name.Text;
                string secondname = Txt_second_name.Text;
                string username = Txt_user.Text;
                string password = Txt_pwd.Text;
                string sql = "insert into tbl_signup values('" + firstname + "','" + secondname + "','" + email + "','" + username + "','" + password + "') ";
                SqlCommand cmd = new SqlCommand(sql, cn);
                cmd.ExecuteNonQuery();
                Response.Write("signup  successful");
            }
            catch (Exception f)
            {
                Response.Write(f.Message);
            }
            finally
            {
                cn.Close();
            }
            Response.Redirect("~/login.aspx");
        }
    }
}