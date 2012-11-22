using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Globalization;
using System.Threading;

public partial class MasterPage : System.Web.UI.MasterPage {

    protected void Page_Load(object sender, EventArgs e) {
     
        // the dropdownlist should show the selected language,
        // which we can read from the Culture cookie

        if (!IsPostBack) {

            HttpCookie cultureCookie = Request.Cookies["Culture"];
        
            string cultureCode;

            if (cultureCookie != null) {
                cultureCode = cultureCookie.Value;
            }
            else {
                cultureCode = null;
            }

            if (cultureCode == "en-GB")
                en.Attributes.Add("style", "font-weight: bold");
            else if (cultureCode == "es-ES")
                es.Attributes.Add("style", "font-weight: bold");
            else if (cultureCode == "pt-PT")
                pt.Attributes.Add("style", "font-weight: bold");
        }
    }

    /*
    // when a new value in the dropdownlist is selected, write it to the Culture cookie
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e) {
        // save Current Culture in Cookie - will be used in InitializeCulture in BasePage
        Response.Cookies.Add(new HttpCookie("Culture", DropDownList1.SelectedValue));
        // reload
        Response.Redirect(Request.Url.AbsolutePath);
    }
    */

    protected void changeLanguageEN(object sender, EventArgs e) {
        
        Response.Cookies.Add(new HttpCookie("Culture", "en-GB"));
        Response.Redirect(Request.Url.AbsolutePath);
    }

    protected void changeLanguageES(object sender, EventArgs e) {
        Response.Cookies.Add(new HttpCookie("Culture", "es-ES"));
        Response.Redirect(Request.Url.AbsolutePath);
    }

    protected void changeLanguagePT(object sender, EventArgs e)
    {
        en.Attributes.Add("class", "foo");
        Response.Cookies.Add(new HttpCookie("Culture", "pt-PT"));
        Response.Redirect(Request.Url.AbsolutePath);
    }
}
