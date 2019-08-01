using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_basic
{
    public partial class SelectLang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            //cookie is created
            HttpCookie c = new HttpCookie("lang",txtlang.Text); 
            c.Expires = DateTime.Now.AddDays(7);
            Response.Cookies.Add(c); //Send cookie to client's browser
            Response.Redirect("ListTopics.aspx"); //redirect to list topics
            answer.Text = "Topics of:" + c.value;
        }
    }
}