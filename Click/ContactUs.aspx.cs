using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        System.Net.Mail.MailMessage mailMessage = new System.Net.Mail.MailMessage(from.Text, to.Text, subject.Text, body.Text);
        mailMessage.IsBodyHtml = false;

        System.Net.NetworkCredential mailAuthentication = new
        System.Net.NetworkCredential("partyzonewebsite@gmail.com", "Party123456");




        System.Net.Mail.SmtpClient mailClient = new System.Net.Mail.SmtpClient("smtp.gmail.com", 587);

        mailClient.EnableSsl = true;
        mailClient.UseDefaultCredentials = false;
        mailClient.Credentials = mailAuthentication;
        mailClient.Send(mailMessage);
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        subject.Text = string.Empty;
        body.Text = string.Empty;
        from.Text = string.Empty;
    }
}