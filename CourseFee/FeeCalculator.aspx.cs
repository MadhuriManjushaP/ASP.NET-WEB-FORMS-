using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CourseFee
{
    public partial class FeeCalculator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Calculate_Fee_Click(object sender, EventArgs e)
        {
            int course_fee = Int32.Parse(Courselist.SelectedItem.Value);
            int total_fee;
           
            if (Online.Checked)
                 total_fee = course_fee + 5000;
            else if (Classroom.Checked && (Bus.Checked && hostel.Checked))
                 total_fee = course_fee + 20000 + 50000;
            else if (Classroom.Checked && Bus.Checked)
                total_fee = course_fee + 20000;
            else if (Classroom.Checked && hostel.Checked)
                total_fee = course_fee + 50000;
            else
                 
                total_fee = course_fee;

            answer.Text = "Total Fee is:" + total_fee;
        }

        protected void Online_CheckedChanged(object sender, EventArgs e)
        {
            hostel.Checked = false;
            hostel.Enabled = false;
            Bus.Checked = false;
            Bus.Enabled = false;
        }

        protected void Classroom_CheckedChanged(object sender, EventArgs e)
        {
            Bus.Enabled = true;
            Bus.Checked = false;
            hostel.Checked = false;
            hostel.Enabled = true;
        }
    }
}