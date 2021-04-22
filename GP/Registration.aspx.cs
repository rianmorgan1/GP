using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;

namespace GP
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //
        protected void BtnRegister_Click(object sender, EventArgs e)
        {
            string password, firstName, secondName, sex, emailAddress;
            int patientId;
            DateTime dob;
            patientId = Int32.Parse(txtPatientID.Text);
            password = txtPassword.Text;
            firstName = txtFirstName.Text;
            secondName = txtSecondName.Text;
            emailAddress = txtEmailAddress.Text;
            sex = txtSex.Text;
            dob = DateTime.Parse(txtDOB.Text);
            var sqlCS = ConfigurationManager.ConnectionStrings["Database"].ConnectionString;
            try
            {
                using (var sqlConn = new SqlConnection(sqlCS))
                {
                    var sqlCmd = new SqlCommand();
                    sqlCmd.Connection = sqlConn;
                    sqlCmd.CommandText = "InsertPatient";
                    sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;
                    sqlCmd.Parameters.AddWithValue("@PATIENTID", patientId);
                    sqlCmd.Parameters.AddWithValue("@FIRSTNAME", firstName);
                    sqlCmd.Parameters.AddWithValue("@SECONDNAME", secondName);
                    sqlCmd.Parameters.AddWithValue("@EMAIL", emailAddress);
                    sqlCmd.Parameters.AddWithValue("@SEX", sex);
                    sqlCmd.Parameters.AddWithValue("@DOB", dob);
                    sqlConn.Open();
                    sqlCmd.ExecuteNonQuery();
                    sqlConn.Close();

                    Membership.CreateUser(patientId.ToString(), password);
                    Roles.AddUserToRole(patientId.ToString(), "Patient");
                    StatusLabel.Text = "Your new account has been created, you can now go back to the login page";

                }//end using
            }//end try
            catch(Exception ex)
            {
                StatusLabel.Text = ex.Message;
            }//end catch 
        }
    }
}