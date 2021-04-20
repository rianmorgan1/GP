using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;

namespace GP.PatientArea
{
    public partial class Track : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnInitiateTrack_Click(object sender, EventArgs e)
        {
            int patientId;
            string height, weight;
            DateTime date;
            patientId = Int32.Parse(txtPatientID.Text);
            height = txtHeight.Text;
            weight = txtWeight.Text;
            date = DateTime.Parse(txtDate.Text);
            var sqlCS = ConfigurationManager.ConnectionStrings["Database"].ConnectionString;
            try
            {
                using (var sqlConn = new SqlConnection(sqlCS))
                {
                    var sqlCmd = new SqlCommand();
                    sqlCmd.Connection = sqlConn;
                    sqlCmd.CommandText = "InsertTrackingDetails";
                    sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;
                    sqlCmd.Parameters.AddWithValue("@WEIGHT", weight);
                    sqlCmd.Parameters.AddWithValue("@HEIGHT", height);
                    sqlCmd.Parameters.AddWithValue("@DATE", date);
                    sqlCmd.Parameters.AddWithValue("@PATIENTID", patientId);
                    sqlConn.Open();
                    sqlCmd.ExecuteNonQuery();
                    sqlConn.Close();
                }

            }
            catch (Exception ex)
            {
                StatusLabel.Text = ex.Message;
            }//end catch 
        }
    }
}