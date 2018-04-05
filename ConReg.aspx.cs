using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class ConReg : System.Web.UI.Page
{
    static string ccode;
    CaptchaCode ccg = new CaptchaCode();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {             
            ccode = ccg.GetCode();
            Lblcaptcha.Text = ccode;
            Lblcaptcha.Font.Strikeout = true;
            Lblcaptcha.Font.Size = FontUnit.Large;
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string gender = "";
        if (rdbmale.Checked == true)
            gender = "male";
        else
            gender = "female";
        if (txtcaptcha.Text == ccode)
        {
            DBManager dm = new DBManager();
            string code = "select * from Login where UserID='" + txtEmail.Text + "' ";
            DataTable dt = dm.ExecuteMySelect(code);
            if (dt.Rows.Count > 0)
            {
                Response.Write("<script>alert('Email ID already REGISTERED!');</script>");
                txtEmail.Text = "";

            }
            else
            {


                string epass;
                EnCryptionManager em = new EnCryptionManager();
                epass = em.encryptmydata(txtpass.Text);
                string mycommand = "Insert into Registration(ConType,UName,Gender,MobileNo,EmailId,Address,ProfilePic,Pass,RegDT,secquestion,secanswer) values('" + ddlcontype.SelectedValue + "','" + txtname.Text + "','" + gender + "','" + txtMoNo.Text + "','" + txtEmail.Text + "','" + txtaddress.Text + "','" + FuPicture.FileName + "','" + epass + "','" + DateTime.Now.ToString() + "','"+ddlsecurequest.SelectedValue +"','"+txtAnswer .Text+"')";

                bool b = dm.ExecuteMyINsertUpdateOrDelete(mycommand);
                if (b == true)
                {
                    mycommand = "Insert into Login values('" + txtEmail.Text + "','" + epass + "',1,0,'')";
                    b = dm.ExecuteMyINsertUpdateOrDelete(mycommand);
                    if (b == true)
                    {
                        FuPicture.SaveAs(Server.MapPath("~/UserPics/" + FuPicture.FileName));
                        string cmd = "select CustomerId from Registration where EmailId='" + txtEmail.Text + "'";
                        DataTable d = dm.ExecuteMySelect(cmd);
                        string s = d.Rows[0][0].ToString();
                        msgbox("You are registered successfully. Your Customer Id is:  " + s+ "                    Please note it successfully.");
                        txtaddress.Text = "";
                        txtAnswer.Text = "";
                        txtcaptcha.Text = "";
                        txtconpass.Text = "";
                        txtEmail.Text = "";
                        txtMoNo.Text = "";
                        txtname.Text = "";
                        txtpass.Text = "";
                        
                    }
                    else
                    {
                        Response.Write("<script>alert('Your registration failed.')</script>");
                    }
                }
            }
        }
    }
    public void msgbox(string msg)
    {
        Page.ClientScript.RegisterStartupScript(Page.GetType(), "message box", "<script language= 'javascript'>alert('" + msg + "')</script>");

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        ccode = ccg.GetCode();
        Lblcaptcha.Text = ccode;
    }
}