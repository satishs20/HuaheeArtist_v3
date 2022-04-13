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
    public partial class search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string mainconn = ConfigurationManager.ConnectionStrings["Myconnection"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            sqlconn.Open();
            SqlCommand sqlcomm = new SqlCommand();
            string sqlquery = "SELECT * FROM [dbo].[product] WHERE Name like '%'+@Name+'%'";
            sqlcomm.CommandText = sqlquery;
            sqlcomm.Connection = sqlconn;
            sqlcomm.Parameters.AddWithValue("Name", Request.QueryString["result"]);
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(sqlcomm);
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

            String username = loginUser();
            HttpCookie myCookie = new HttpCookie("username");
            myCookie.Value = username;
            myCookie.Expires = DateTime.Now.AddMinutes(30);
            Response.Cookies.Add(myCookie);
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

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            Session["addproduct"] = "true";
            if (e.CommandName == "AddToCart")
            {
                DropDownList list = (DropDownList)(e.Item.FindControl("DropDownList1"));
                Response.Redirect("ShoppingCart.aspx?id=" + e.CommandArgument.ToString() + "&quantity=" + list.SelectedItem.ToString());
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            foreach (DataListItem item in DataList1.Items)
            {
                Label l1 = item.FindControl("Name") as Label;
                Label l2 = item.FindControl("Price") as Label;
                Label l3 = item.FindControl("Size") as Label;
                Label l4 = item.FindControl("Date") as Label;
                Label l5 = item.FindControl("Category") as Label;
                Label l6 = item.FindControl("Description") as Label;
                string s1 = l1.Text;
                string s2 = l2.Text;
                string s3 = l3.Text;
                string s4 = l4.Text;
                string s5 = l5.Text;
                string s6 = l6.Text;
                string sp = "aaaaa";
                int i7 = 8;


                string mainconn = ConfigurationManager.ConnectionStrings["Myconnection"].ConnectionString;
                SqlConnection con = new SqlConnection(mainconn);
                con.Open();
                string sql = "INSERT INTO cart" +
                            "(Cuser,Pname,Size,Price,Description,Category,Date,CoverPhoto,Image1,Image2,Image3,Image4,Quantity)" +
                            "VALUES (@username,@s1,@s3,@s2,@s6,@s5,@s4,@sp,@sp,@sp,@sp,@sp,@i7)";

                SqlCommand cmd = new SqlCommand(sql, con);
                String username = loginUser();
                cmd.Parameters.AddWithValue("@username", username);
                cmd.Parameters.AddWithValue("@s1", s1);
                cmd.Parameters.AddWithValue("@s2", s2);
                cmd.Parameters.AddWithValue("@s3", s3);
                cmd.Parameters.AddWithValue("@s4", s4);
                cmd.Parameters.AddWithValue("@s5", s5);
                cmd.Parameters.AddWithValue("@s6", s6);
                cmd.Parameters.AddWithValue("@sp", sp);
                cmd.Parameters.AddWithValue("@i7", i7);


                cmd.ExecuteNonQuery();
                con.Close();

                Response.Redirect("ShoppingCart.aspx");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            foreach (DataListItem item in DataList1.Items)
            {
                Label l1 = item.FindControl("Name") as Label;
                Label l2 = item.FindControl("Price") as Label;
                Label l3 = item.FindControl("Size") as Label;
                Label l4 = item.FindControl("Date") as Label;
                Label l5 = item.FindControl("Category") as Label;
                Label l6 = item.FindControl("Description") as Label;
                string s1 = l1.Text;
                string s2 = l2.Text;
                string s3 = l3.Text;
                string s4 = l4.Text;
                string s5 = l5.Text;
                string s6 = l6.Text;
                string sp = "aaaaa";
                int i7 = 8;


                string mainconn = ConfigurationManager.ConnectionStrings["Myconnection"].ConnectionString;
                SqlConnection con = new SqlConnection(mainconn);
                con.Open();
                string sql = "INSERT INTO wish" +
                            "(Wuser,Pname,Size,Price,Description,Category,Date,CoverPhoto,Image1,Image2,Image3,Image4,Quantity)" +
                            "VALUES (@username,@s1,@s3,@s2,@s6,@s5,@s4,@sp,@sp,@sp,@sp,@sp,@i7)";

                SqlCommand cmd = new SqlCommand(sql, con);
                String username = loginUser();
                cmd.Parameters.AddWithValue("@username", username);
                cmd.Parameters.AddWithValue("@s1", s1);
                cmd.Parameters.AddWithValue("@s2", s2);
                cmd.Parameters.AddWithValue("@s3", s3);
                cmd.Parameters.AddWithValue("@s4", s4);
                cmd.Parameters.AddWithValue("@s5", s5);
                cmd.Parameters.AddWithValue("@s6", s6);
                cmd.Parameters.AddWithValue("@sp", sp);
                cmd.Parameters.AddWithValue("@i7", i7);


                cmd.ExecuteNonQuery();
                con.Close();

                Response.Redirect("wish.aspx");

            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}