using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RateConverter
{
    public partial class RateConverter : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void convert_Click(object sender, EventArgs e)
        {
            int rupee = Int32.Parse(inr.Text);
            double USD = 0.014 * rupee;
            answer.Text = rupee + "Indian Rupees equals:" + USD+"US Dollars";
        }
    }
}