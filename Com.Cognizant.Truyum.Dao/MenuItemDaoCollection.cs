using Com.Cognizant.Truyum.Model;
using Com.Cognizant.Truyum.Utility;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Com.Cognizant.Truyum.Dao
{
  
    
    public class MenuItemDaoCollection : IMenuItemDao
    {

        public List<MenuItem> menuItemList=null;
        public MenuItemDaoCollection()
        {
            if (menuItemList == null)
            {
                menuItemList = new List<MenuItem>()
        {

             new MenuItem() { Id=100, Name="Movei1" , Active=true,
             DateOfLaunch =  DateUtility.ConvertToDate("12/12/2009"), Category="Genre",
                 FreeDelivery=true, Price=1976},

             new MenuItem() { Id=2, Name="Movei1" , Active=true,
             DateOfLaunch=  DateUtility.ConvertToDate("12/12/2009"), Category="Genre",
                 FreeDelivery=true, Price=1200},
             new MenuItem() { Id=3, Name="Movei1" , Active=true,
             DateOfLaunch=  DateUtility.ConvertToDate("12/12/2009"), Category="Genre",
              FreeDelivery=true, Price=1200},
             new MenuItem() { Id=4, Name="Movei1" , Active=true,
             DateOfLaunch=  DateUtility.ConvertToDate("12/12/2009"), Category="Genre",
              FreeDelivery=true, Price=1200},
             new MenuItem() { Id=5, Name="Movie5" , Active=true,
             DateOfLaunch=  DateUtility.ConvertToDate("12/12/2009"), Category="Genre",
                 FreeDelivery=true, Price=9098}

        };
            }
        }




    // DateUtility.ConvertToDate("12/12/2009");



    public MenuItem GetMenuItem(long menuItemId)
        {
            MenuItem m = new MenuItem();
            return m;
        }

        public List<MenuItem> GetMenuItemListAdmin()
        {
            return menuItemList;
        }

        public List<MenuItem> GetMenuListCustomer()
        {
            return menuItemList;
        }

        public void ModifyMenuItem(MenuItem menuItem)
        {
            
        }
    }
   

    
}
