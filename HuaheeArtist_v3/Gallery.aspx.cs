using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment
{
    public partial class Gallery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "ViewDetails")
            {
                Response.Redirect("ViewDetails.aspx?id= " + e.CommandArgument.ToString());
              
            }
        }

        protected void btnItemDetail_Click(object sender, EventArgs e)
        {
            
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }
        protected string Limit(object desc, int maxLength)
        {
            var description = (string)desc;
            if (string.IsNullOrEmpty(description)) { return description; }
            return description.Length <= maxLength ?
                description : description.Substring(0, maxLength) + "...";
        }
    }
}