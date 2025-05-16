using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using eTaxWeb.util;

namespace eTaxWeb.eTax
{
    public partial class Create : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            loadReceipt();
        }

        protected void loadReceipt()
        {
            // Replace with your actual connection string
            string connectionString = DatabaseHelper.NameConnection();
            DataTable dtReceipts = new DataTable();

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT Top 10 ReceiptID, ReceiptDate, CustomerID, AllTotal FROM Receipt Where CustomerID = '11TT1111'", conn))
                {
                    conn.Open();
                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        da.Fill(dtReceipts);
                    }
                }
            }

            gvReceipts.DataSource = dtReceipts;
            gvReceipts.DataBind();
        }
    }
}