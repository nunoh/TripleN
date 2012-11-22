using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;

public partial class Contact : BasePage {

    private String toEmailAddress = "nuno.hespanhol@gmail.com";
    private String senderEmailAddress = "BeerTripleN@gmail.com";
    private String smtpServer = "smtp.gmail.com";
    private String senderPassword = "horsensftw";
    private int smtpPort = 587;

    protected void Page_Load(object sender, EventArgs e) {

    }

    protected void btnSubmit_Click(object sender, EventArgs e) {
        try  {
            MailMessage msg = new MailMessage();

            // destination email address
            msg.To.Add(toEmailAddress);

            // who's going to appear as the sender
            MailAddress address = new MailAddress(senderEmailAddress);
            msg.From = address;
            
            // message body
            msg.Subject = "Feedback from " + txt_name.Text;
            msg.Body = txt_message.Text;

            // smtp client configuration
            SmtpClient client = new SmtpClient(smtpServer, smtpPort);
            client.EnableSsl = true;
            
            NetworkCredential credentials = new NetworkCredential(senderEmailAddress, senderPassword);
            client.Credentials = credentials;

            // sending the email
            client.Send(msg);

            // display some feedback to the user to let them know it was sent
            //lbl_res.Text = "Your message was sent!";

            // clearing the form
            txt_name.Text = "";
            txt_message.Text = "";
        }
        catch {
            //lbl_res.Text = "Your message failed to send, please try again.";
        }

        ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "tmp", "<script type='text/javascript'>sent();</script>", false);
    }
}