using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace HuaheeArtist_v3
{
    public partial class ShoppingCart : System.Web.UI.Page
    {
        DataTable dt;
        Int64 totalprice;
        protected void Page_Load(object sender, EventArgs e)
        {
            String username = loginUser();
            HttpCookie myCookie = new HttpCookie("username");
            myCookie.Value = username;
            myCookie.Expires = DateTime.Now.AddMinutes(30);
            Response.Cookies.Add(myCookie);
            calculateSum();
        }

        private void calculateSum()
        {
            Int32 grandtotal = 0;
            Int32 grandtota2 = 0;
            Int32 grandtota3 = 0;
            foreach (GridViewRow row in GridView1.Rows)
            {

                grandtotal = grandtotal + Convert.ToInt32(row.Cells[3].Text); //Where Cells is the column. Just changed the index of cells
                grandtota2 = grandtota2 + Convert.ToInt32(row.Cells[4].Text); //Where Cells is the column. Just changed the index of cells
                grandtota3 = grandtota3 + (Convert.ToInt32(row.Cells[3].Text) * Convert.ToInt32(row.Cells[4].Text));
            }
            GridView1.FooterRow.Cells[2].Text = "Grand Total";
            GridView1.FooterRow.Cells[3].Text = grandtotal.ToString();
            GridView1.FooterRow.Cells[4].Text = grandtota2.ToString();
            Label2.Text = "Price(in Words) " + ConvertNumbertoWords(grandtota3);
        }
        public static string ConvertNumbertoWords(int number)
        {
            if (number == 0)
                return "ZERO";
            if (number < 0)
                return "minus " + ConvertNumbertoWords(Math.Abs(number));
            string words = "";
            if ((number / 100000) > 0)
            {
                words += ConvertNumbertoWords(number / 100000) + " Lacs ";
                number %= 100000;
            }
            if ((number / 1000) > 0)
            {
                words += ConvertNumbertoWords(number / 1000) + " Thousand ";
                number %= 1000;
            }
            if ((number / 100) > 0)
            {
                words += ConvertNumbertoWords(number / 100) + " Hundred ";
                number %= 100;
            }
            if (number > 0)
            {
                if (words != "")
                    words += "AND ";
                var unitsMap = new[] { "Zero", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Eleven", "Twelve", "Thirteen", "Fourteen", "Fifteen", "Sixteen", "Seventeen", "Eighteen", "Nineteen" };
                var tensMap = new[] { "Zero", "Ten", "Twenty", "Thirty", "Forty", "Fifty", "Sixty", "Seventy", "Eighty", "Ninety" };

                if (number < 20)
                    words += unitsMap[number];
                else
                {
                    words += tensMap[number / 10];
                    if ((number % 10) > 0)
                        words += " " + unitsMap[number % 10];
                }
            }
            return words;
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

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged2(object sender, EventArgs e)
        {

        }
    }
}