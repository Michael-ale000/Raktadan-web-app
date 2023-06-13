using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Raktadan
{
    public partial class donor : System.Web.UI.Page
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
                string firstname = txt_first_name.Value.ToString();
                string lastname = txt_second_name.Value.ToString();
                string age = txt_age.Value.ToString();
                string address = txt_address.Value.ToString();
                string phone_number = txt_phone_number.Value.ToString();
                string fname = Text1.Value;
                string sql="insert into practice values('" +fname+ "')";
                string sql2 = "insert into tbl_donor_form values('" + firstname + "','" + lastname + "','" + age + "','" + address + "','" + phone_number + "') ";
                SqlCommand cmd = new SqlCommand(sql, cn);
                SqlCommand cmd2 = new SqlCommand(sql2, cn);
                cmd.ExecuteNonQuery();
                cmd2.ExecuteReader();
            }
            catch (Exception f)
            {
                Response.Write(f.Message);
            }
            finally
            {
                cn.Close();
                Response.Redirect("~/login.aspx");
            }
        }
    }
}