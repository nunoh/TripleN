using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Globalization;
using System.Threading;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
             
        //The dropdownlist should show the selected language,
        //which we can read from the Culture cookie
        if (!IsPostBack)
        {
           HttpCookie cultureCookie = Request.Cookies["Culture"];
        
            string cultureCode;

            if (cultureCookie != null)
            {
                cultureCode = cultureCookie.Value;
            }
            else
            {
                cultureCode = null;
            }
            
            if (!string.IsNullOrEmpty(cultureCode))
            {
               DropDownList1.SelectedValue = cultureCode;
           }
           
        }
    }

    //when a new value in the dropdownlist is selected, write it to the Culture cookie
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        //Save Current Culture in Cookie- will be used in InitializeCulture in BasePage
       Response.Cookies.Add(new HttpCookie("Culture", DropDownList1.SelectedValue));
       //Reload
        Response.Redirect(Request.Url.AbsolutePath);
        
    }
}
