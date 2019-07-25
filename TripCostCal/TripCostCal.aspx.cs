using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TripCostCal
{
    public partial class TripCostCal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void calculate_Click(object sender, EventArgs e)
        {
            int Total_km = Int32.Parse(kilo.Text);
            int km_per_lt = Int32.Parse(litre.Text);

            int fuel = Int32.Parse(list.SelectedItem.Value);
            int cost = (Total_km/km_per_lt) * fuel;

            answer.Text = "Cost of the trip is:" + cost;


        }
    }
}