using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Raktadan
{
    public partial class Admin : System.Web.UI.Page
    {
        public DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection();
            cn.ConnectionString = @"Data Source=MICHAEL-ALE-MAG;Initial Catalog=project;Integrated Security=True";
            try
            {
                cn.Open();
                string sql = "select * from tbl_blood_stock";
                SqlDataAdapter da = new SqlDataAdapter(sql, cn);
                da.Fill(dt);
            }
            catch (Exception f)
            {
                Response.Write(f.Message);
            }
            finally { 
                cn.Close(); 
            }
        }
    }
}