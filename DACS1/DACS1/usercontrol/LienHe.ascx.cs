using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DACS1.usercontrol
{
    public partial class LienHe : System.Web.UI.UserControl
    {
        DataClasses1DataContext db = new DataClasses1DataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            LIENHE infoLH = new LIENHE();
            try
            {
                if (phone.Text != "" || name.Text != "" || message.Text != "" || mail.Text != "")
                {
                    infoLH.SDT = phone.Text;
                    infoLH.TENKH = name.Text;
                    infoLH.GHICHU = message.Text;
                    infoLH.EMAIL = mail.Text;
                    db.LIENHEs.InsertOnSubmit(infoLH);
                    db.SubmitChanges();
                    ScriptManager.RegisterStartupScript(this, typeof(string), "Message", "alert('Thêm mới thành công!!!')", true);
                    ClearForm();
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, typeof(string), "Message", "alert('Thêm mới thất bại!!!')", true);
                }
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, typeof(string), "Message", "alert('Thêm mới thất bại!!!')", true);
            }
        }
        public void ClearForm()
        {
            name.Text = "";
            phone.Text = "";
            message.Text = "";
            mail.Text = "";
        }
    }
}