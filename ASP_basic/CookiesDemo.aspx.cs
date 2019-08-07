using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cookiesdemo
{
    public partial class CookiesDemo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            HttpCookie c = new HttpCookie(Cname.Text, Cvalue.Text);
            if (chkDurable.Checked)
                c.Expires = DateTime.Now.AddHours(1); //adds 1 hour to expiry if checked
            Response.Cookies.Add(c);
            Response.Write("Cookie Added");
        }
        //lists all cookies created in browser
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            foreach (String name in Request.Cookies)
                Response.Write(name + ":" + Request.Cookies[name].Value + "<br/>");
        }
    }
}