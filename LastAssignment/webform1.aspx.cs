using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace LastAssignment
{
    public partial class webform1 : System.Web.UI.Page
    {
      

        string constring = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database1.mdf;Integrated Security=True";
        SqlConnection con;
        string name;
      
        string contact;
        string Gid;
        int rent = (int)500;

        DateTime checkin;
        DateTime checkout;

        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(constring);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            if (con.State == System.Data.ConnectionState.Open)
            {
                name = TextBox2.Text;
                contact = TextBox3.Text;
                Gid = TextBox4.Text;
                checkin = Calendar1.SelectedDate;

                string operation = "insert into mytable values(@name,@contact,@gid,@checkin,@checkout);";
                SqlCommand cmd = new SqlCommand(operation, con);
              
                cmd.Parameters.AddWithValue("@name", name);
                cmd.Parameters.AddWithValue("@contact", contact);
                cmd.Parameters.AddWithValue("@gid", Gid);
                cmd.Parameters.AddWithValue("@checkin", checkin);
                cmd.Parameters.AddWithValue("checkout", "");
                cmd.ExecuteNonQuery();
                Response.Write("Success!!!");
                con.Close();


            }



        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Open();
            if (con.State == System.Data.ConnectionState.Open)
            {
                name = TextBox2.Text;
                checkout = Calendar2.SelectedDate;

                string operation = "select checkin from mytable where name='" + name + "';";
                SqlCommand cmd = new SqlCommand(operation, con);

                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    if (reader.Read())
                    {

                        checkin = (DateTime)(reader["checkin"]);
                    }
                }

                TimeSpan diff = checkout - checkin;
                int day = (int)diff.TotalDays;
                Label2.Text = day + " day";

                if (day < 5)
                {
                    Label1.Text = "5%";

                    Label3.Text = Convert.ToString(rent * day);
                }
                else if (day < 15 && day >= 5)
                {
                    Label1.Text = "10%";

                    Label3.Text = Convert.ToString(rent * day);
                }
                else
                {
                    Label1.Text = "15%";

                    Label3.Text = Convert.ToString(rent * day);
                }


            }
        }
    }
}