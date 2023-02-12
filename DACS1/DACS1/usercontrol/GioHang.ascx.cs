using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DACS1.usercontrol
{
    public partial class GioHang : System.Web.UI.UserControl
    {
        DataClasses1DataContext db = new DataClasses1DataContext();
        public static List<GIOHANG> listGH = new List<GIOHANG>();
        protected void Page_Load(object sender, EventArgs e)
        {
            loadGH();
        }

        public void loadGH()
        {
            var dt = (from q in db.GIOHANGs select q).ToList();
            if (dt != null && dt.Count() > 0)
            {
                listGH = dt.ToList();
            }
        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            DATHANG infoDH = new DATHANG();
            try
            {
                if (insName.Text != "")
                {
                    infoDH.TENKH = (insName.Text).ToString();
                    infoDH.DIACHI = (insAddress.Text).ToString();
                    infoDH.SDT = (insPhone.Text).ToString();
                    infoDH.SOLUONG = int.Parse(insSL.Text);
                    infoDH.SIZE = int.Parse(insS.Text);
                    infoDH.MASPGH = int.Parse(insID.Text);
                    db.DATHANGs.InsertOnSubmit(infoDH);
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
                ScriptManager.RegisterStartupScript(this, typeof(string), "Message", "alert('Thêm mới thất bại!!')", true);
            }
        }
        public void ClearForm()
        {
            insName.Text = "";
            insPhone.Text = "";
            insAddress.Text = "";
            insID.Text = "";
            insS.Text = "";
            insSL.Text = "";
        }
        public void deleteGH()
        {
            var i = 0;
            if (i < listGH.Count())
            {
                GIOHANG infoGH = listGH[i];
                db.GIOHANGs.DeleteOnSubmit(infoGH);
                db.SubmitChanges();
                loadGH();
            }
        }
        protected void btndelete_Click(object sender, EventArgs e)
        {
            deleteGH();
        }
    }
}