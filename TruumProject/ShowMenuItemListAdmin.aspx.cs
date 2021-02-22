using Com.Cognizant.Truyum.Dao;
using Com.Cognizant.Truyum.Utility;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TruumProject
{
    public partial class ShowMenuItemListAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            MenuItemDaoCollection menuItemDao = new MenuItemDaoCollection();
            GridView1.DataSource=menuItemDao.GetMenuItemListAdmin();
            GridView1.DataBind();





        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridView1.DeleteRow(e.RowIndex);
            GridView1.DataBind();
            Response.Write("Deleted");

        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }

        protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridView1.DeleteRow(e.RowIndex);
            GridView1.DataBind();

        }
    }
}