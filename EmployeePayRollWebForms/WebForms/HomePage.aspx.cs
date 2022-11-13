using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Xml.Linq;

namespace EmployeePayRollWebForms.WebForms
{
    public partial class HomePage : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
           

            
        }

        protected void EmployeeTable_SelectedIndexChanged(object sender, EventArgs e)
        {


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Employee Payroll Form.aspx");
        }

        static string connectionString = ConfigurationManager.ConnectionStrings["EmployeePayRollConnectionString"].ConnectionString;
        SqlConnection connection = new SqlConnection(connectionString);
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            connection.Open();
            SqlCommand command = new SqlCommand("delete from PayformDetails where EMPID='" + id + "'", connection);
            int t = command.ExecuteNonQuery();
            if (t > 0)
            {
                Response.Write("<script>alert('Data is Deleted')</script>");
                GridView1.EditIndex = -1;
                GridView1.DataBind();
            }
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            connection.Open();
            SqlCommand command = new SqlCommand("update from PayformDetails SET NAME='" + id + "'", connection);
            int t = command.ExecuteNonQuery();
            if (t > 0)
            {
                Response.Write("<script>alert('Data is updated')</script>");
                GridView1.EditIndex = -1;
                GridView1.DataBind();
            }
        }
    }
}