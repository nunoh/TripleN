using System;
using System.Web;
using System.Globalization;

public class BasePage : System.Web.UI.Page {
    
    // all our pages should extend this class, so the selected cultured is used when the pages are loaded
	   
    protected override void InitializeCulture() {
        // get the cookie called Culture  
        HttpCookie cultureCookie = Request.Cookies["Culture"];

        string cultureCode;

        // if the cookie did exist set cultureCode to the value stored in the cookie else set it to null
        if (cultureCookie != null) {
            cultureCode = cultureCookie.Value;
        }
        else {
            cultureCode = null;
        }

        // if the cultureCode string is neither empty nor null, set the web site culture to the value from the cookie
        if (!string.IsNullOrEmpty(cultureCode)) {
            this.UICulture = cultureCode;
            this.Culture = cultureCode;
            CultureInfo culture = CultureInfo.CreateSpecificCulture(cultureCode);
            System.Threading.Thread.CurrentThread.CurrentCulture = culture;
            System.Threading.Thread.CurrentThread.CurrentUICulture = culture;
        }

        base.InitializeCulture();
   }
    
}