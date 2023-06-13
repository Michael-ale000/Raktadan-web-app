using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Raktadan
{
    public partial class donaranother : System.Web.UI.Page
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
                string lastname = txt_last_name.Value.ToString();
                string age = txt_age.Value.ToString();
                string address = txt_address.Value.ToString();
                string phone_number = txt_phone_number.Value.ToString();
                string gender_option = gender.Items[gender.SelectedIndex].Value.ToString();
                string bloodtype_option = blood_type.Items[blood_type.SelectedIndex].Value;
                string diseases_history = past_diseases.Value;
                string donated_blood= blood_donating.Items[blood_donating.SelectedIndex].Value;
                string blood_donation_center= Donation_center.Items[Donation_center.SelectedIndex].Value;
                string sql = "insert into donor_form values('" + firstname + "','" + lastname + "','" + age + "','" + address + "','" + phone_number + "','" + gender_option + "','" + bloodtype_option + "','" + diseases_history + "','" + donated_blood + "','" + blood_donation_center + "') ";
                SqlCommand cmd = new SqlCommand(sql, cn);
                cmd.ExecuteNonQuery();
                int blood_stock = Convert.ToInt32(10);
                string sql1 = "UPDATE tbl_blood_stock SET Quantity += '" + blood_stock + "' WHERE Blood = '" + donated_blood + "' ";
                SqlCommand cmd1 = new SqlCommand(sql1, cn);
                cmd1.ExecuteNonQuery();
            }
            catch (Exception f)
            {
                Response.Write(f.Message);
            }
            finally
            {
                cn.Close();
                Response.Redirect("~/home.aspx");
            }
        }
    }
}