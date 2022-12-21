using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project_5
{
    public partial class contactPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection connect = new SqlConnection("data source = DESKTOP-KG1IER4\\SQLEXPRESS; database = project5 ; integrated security=SSPI");
            connect.Open();
            string name = formGroupExampleInput.Value;
            string email = exampleFormControlInput1.Value;
            string message = exampleFormControlTextarea1.Value;

            string query = "insert into contact(Name,Email,messagge)" + " values ('" + name + "','" + email + "','" + message + "')";

            SqlCommand command = new SqlCommand(query, connect);
            command.ExecuteNonQuery();
            connect.Close();

            formGroupExampleInput.Value = "";
            exampleFormControlInput1.Value = "";
            exampleFormControlTextarea1.Value = "";
        }
    }
}