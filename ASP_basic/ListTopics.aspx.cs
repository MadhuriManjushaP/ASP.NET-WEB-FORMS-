using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_basic
{
    public partial class ListTopics : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //find if cookie is present or not
            HttpCookie c = Request.Cookies["lang"];
            if (c == null)
                Response.Redirect("SelectLang.aspx");
            answer.Text = "Topics of:" + c.Value;
        }
    }
}