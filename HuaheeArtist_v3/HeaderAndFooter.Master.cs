using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Web.UI.WebControls;

namespace HuaheeArtist_v3
{
    public partial class HeaderAndFooter : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String username = loginUser();
            HttpCookie myCookie = new HttpCookie("username");
            myCookie.Value = username;
            myCookie.Expires = DateTime.Now.AddMinutes(30);
            Response.Cookies.Add(myCookie);

            if (username != null)
            {
                signup.Visible = false;
                login.Visible = false;
                userIcon.Visible = true;
            }
            else
            {
                signup.Visible = true;
                login.Visible = true;
                userIcon.Visible = false;
            }
        }

        protected String loginUser()
        {
            string User_name = string.Empty;
            HttpCookie reqCookies = Request.Cookies["userInfo"];
            if (reqCookies != null)
            {
                User_name = reqCookies["UserName"].ToString();
                return User_name;
            }
            else
            {
                return User_name;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
        }

        protected void shoppingcart_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShoppingCart_V2.aspx");
        }

        protected void search_Click(object sender, EventArgs e)
        {
            string result = "~/search.aspx?result=" + TextBox1.Text;
            Response.Redirect(result);
        }

        protected void signup_Click(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}