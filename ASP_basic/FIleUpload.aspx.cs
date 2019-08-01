using System;
using System.IO;
namespace ASP_basic
{
    public partial class FIleUpload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string filename;
            if (FileUpload1.HasFile)
            {//convert virtual path to physical path
                filename = Request.MapPath("'C:/Users/Dell/Documents/dotnet/ASP_basic/dump/" + FileUpload1.FileName);
                FileUpload1.SaveAs(filename);  
                Label1.Text = "File Uploaded Successfully  : " 
                    + filename + "<br>Length : " + FileUpload1.PostedFile.ContentLength +
                    "<br>Type : " + FileUpload1.PostedFile.ContentType;
            }
            else
                Label1.Text = "Please select a file to upload!";
        }
            }
    }
