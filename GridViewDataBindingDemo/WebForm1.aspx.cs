using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GridViewDataBindingDemo
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName=="Delete")
            {

            }
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void lblInsert_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["name"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtName")).Text;
            SqlDataSource1.InsertParameters["qty"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtQty")).Text;
            SqlDataSource1.InsertParameters["description"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtDescription")).Text;
            SqlDataSource1.InsertParameters["dateOfPurchase"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtdateOfPurchase")).Text;
         
            SqlDataSource1.InsertParameters["isAvalaible"].DefaultValue = ((CheckBox)GridView1.FooterRow.FindControl("chkisAvalaible")).Checked.ToString();
            
            SqlDataSource1.Insert();

        }
    }
}