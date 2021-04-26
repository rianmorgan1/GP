using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;
using System.IO;


namespace GP.PatientArea
{
    public partial class ViewMedication : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void BtnUpload_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                string fileExtension = System.IO.Path.GetExtension(FileUpload1.FileName);

                if (fileExtension.ToLower() != ".jpg" && fileExtension.ToLower() != ".png")
                {
                    lblStatus.Text = "Please select a .jpg or .png file to upload";
                    lblStatus.ForeColor = System.Drawing.Color.Red;
                }
                else
                {
                    int fileSize = FileUpload1.PostedFile.ContentLength;
                    if (fileSize > 50000)
                    {
                        lblStatus.Text = "Maximum file size is 50mb, upload something smaller";
                        lblStatus.ForeColor = System.Drawing.Color.Red;
                    }

                    else
                    {
                        FileUpload1.SaveAs(Server.MapPath("~/Uploads/") + FileUpload1.FileName);
                        lblStatus.Text = "File Uploaded";
                        lblStatus.ForeColor = System.Drawing.Color.Green;
                        Image1.ImageUrl = "~/Uploads/" + Path.GetFileName(FileUpload1.FileName);

                    }
                }
            } 

            else
            {
                lblStatus.Text = "Please select a profile image to upload";
                lblStatus.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}