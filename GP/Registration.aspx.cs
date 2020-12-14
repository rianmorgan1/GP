using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GP
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //Look at page 15 of practical 15
        protected void BtnRegister_Click(object sender, EventArgs e)
        {
            string password, fName, sName, address, sex, telephone, dob;
            int age, patientid, medicationid;
            patientid = Convert.ToInt32(txtPatientID);
            medicationid = Convert.ToInt32(txtMedicationID);
            password = txtPassword.Text;
            fName = txtFName.Text;
            sName = txtSName.Text;
            address = txtAddress.Text;
            sex = txtSex.Text;
            telephone = txtTelephone.Text;
            dob = txtDob.Text;
            age = Convert.ToInt32(txtAge.Text);
            var sqlCS = ConfigurationManager.ConnectionStrings["UniConnString"].ConnectionString;
            try
            {
                using (var sqlConn = new SqlConnection(sqlCS))
                {
                    var sqlCmd = new SqlCommand();
                    sqlCmd.Connection = sqlConn;
                    sqlCmd.CommandText = "InsertPatient";
                    sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;
                    sqlCmd.Parameters.AddWithValue("@PatientID", patientid);
                    sqlCmd.Parameters.AddWithValue("@FirstName", fName);
                    sqlCmd.Parameters.AddWithValue("@SecondName", sName);
                    sqlCmd.Parameters.AddWithValue("@Age", age);
                    sqlCmd.Parameters.AddWithValue("@Address", address);
                    sqlCmd.Parameters.AddWithValue("@Sex", sex);
                    sqlCmd.Parameters.AddWithValue("@Telephone", telephone);
                    sqlCmd.Parameters.AddWithValue("@DOB", dob);
                    sqlCmd.Parameters.AddWithValue("@MedicationID", medicationid);
                    sqlConn.Open();
                    sqlCmd.ExecuteNonQuery();
                    sqlConn.Close();
                    Membership.CreateUser(patientid, password);
                    Roles.AddUserToRole(patientid, "Patient");
                    Response.Redirect("LogIn.aspx");
                }//end using
            }//end try
            catch
            {
                StatusLabel.Text = "A run-time error has occurred";
            }//end catch 
        }
    }
}