using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project_5
{
    public partial class cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["customer_Id"];
            SqlConnection connection = new SqlConnection("data source = DESKTOP-KG1IER4\\SQLEXPRESS; database = project5 ; integrated security=SSPI");
            SqlCommand command = new SqlCommand($"select * from Orders where customer_ID={id} ", connection);
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            string table = "<div class=\"d-flex flex-row px-lg-5 mx-lg-5 mobile\" id=\"heading\">\r\n                            <div style=\"margin-left: 100px;\" class=\"px-lg-5 mr-lg-5\" id=\"produc\">PRODUCTS</div>\r\n                            <div style=\"margin-left: 90px;\" class=\"px-lg-5 ml-lg-5\" id=\"prc\">PRICE</div>\r\n                            <div style=\"margin-left: 30px;\" class=\"px-lg-5 ml-lg-1\" id=\"quantity\">QUANTITY</div>\r\n                            <div style=\"margin-left: 20px;\" class=\"px-lg-5 ml-lg-3\" id=\"total\">TOTAL</div>\r\n                        </div>";
            while (reader.Read())
            {
                table += $" <div class=\"d-flex flex-row justify-content-between align-items-center pt-lg-4 pt-2 pb-3 border-bottom mobile\">\r\n                            <div class=\"d-flex flex-row align-items-center\">\r\n                                <div>\r\n                                    <img src=\"https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60\" width=\"150\" height=\"150\" alt=\"\" id=\"image\">\r\n                                </div>\r\n                                <div class=\"d-flex flex-column pl-md-3 pl-1\" style=\"margin-left: 100px;\">\r\n                                    <div>\r\n                                        <h6>COTTON T-SHIRT</h6>\r\n                                    </div>\r\n                                    <div>Art.No:<span class=\"pl-2\">091091001</span></div>\r\n                                    <div>Color:<span class=\"pl-3\">White</span></div>\r\n                                    <div>Size:<span class=\"pl-4\"> M</span></div>\r\n                                </div>\r\n                            </div>\r\n                            <div class=\"pl-md-0 pl-1\"><b>$9.99</b></div>\r\n                                <div class=\"pl-md-0 pl-2\">\r\n                                    <span class=\"fa fa-minus-square text-secondary\"></span><span class=\"px-md-3 px-1\">2</span><span class=\"fa fa-plus-square text-secondary\"></span>\r\n                                </div>\r\n                                <div class=\"pl-md-0 pl-1\"><b>$19.98</b></div>\r\n                                <div class=\"close\">&times;</div>\r\n                            </div>\r\n\r\n                        </div>\r\n                    </div>";
            }


            Label1.Text = table;


            reader.Close();
            connection.Close();
        }
    }
}