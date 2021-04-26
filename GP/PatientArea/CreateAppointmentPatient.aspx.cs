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
    public partial class CreateAppointmentPatient : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnBook_Click(object sender, EventArgs e)
        {
            int patientId, doctorId;
            DateTime date, time;

            doctorId = Int32.Parse(txtDoctorID.Text);
            patientId = Int32.Parse(txtID.Text);
            date = DateTime.Parse(txtDate.Text);
            time = DateTime.Parse(txtTime.Text);
            var sqlCS = ConfigurationManager.ConnectionStrings["Database"].ConnectionString;
            try
            {
                using (var sqlConn = new SqlConnection(sqlCS))
                {
                    var sqlCmd = new SqlCommand();
                    sqlCmd.Connection = sqlConn;
                    sqlCmd.CommandText = "InsertAppointment";
                    sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;
                    sqlCmd.Parameters.AddWithValue("@PATIENTID", patientId);
                    sqlCmd.Parameters.AddWithValue("@DOCTORID", doctorId);
                    sqlCmd.Parameters.AddWithValue("@DATE", date);
                    sqlCmd.Parameters.AddWithValue("@TIME", time);
                    sqlConn.Open();
                    sqlCmd.ExecuteNonQuery();
                    sqlConn.Close();
                    lblStatus.Text = "Your new appointment has now been booked.";
                    txtDate.Text = "";
                    txtDoctorID.Text = "";
                    txtID.Text = "";
                    txtTime.Text = "";
                }
            }
            catch (Exception ex)
            {
                lblStatus.Text = ex.Message;
            }//end catch helped developer solving code issues
        }
    }
}