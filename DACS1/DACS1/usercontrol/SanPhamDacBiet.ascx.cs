using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DACS1.usercontrol
{
    public partial class SanPhamDacBiet : System.Web.UI.UserControl
    {
        DataClasses1DataContext db = new DataClasses1DataContext();
        public static List<SANPHAM> listSP = new List<SANPHAM>();
        public static List<THUONGHIEU> listTH = new List<THUONGHIEU>();
        protected void Page_Load(object sender, EventArgs e)
        {
            loadSP();
            loadTH();
        }
        public void loadSP()
        {
            var dt = (from q in db.SANPHAMs select q).ToList();
            if (dt != null && dt.Count() > 0)
            {
                listSP = dt.ToList();
            }
        }
        public void loadTH()
        {
            var dt = (from q in db.THUONGHIEUs select q).ToList();
            if (dt != null && dt.Count() > 0)
            {
                listTH = dt.ToList();
            }
        }
        public void insertSP(int idinputSP)
        {
            GIOHANG infoGH = new GIOHANG();
            try
            {
                infoGH.MASP = idinputSP;
                db.GIOHANGs.InsertOnSubmit(infoGH);
                db.SubmitChanges();
                ScriptManager.RegisterStartupScript(this, typeof(string), "Message", "alert('Thêm mới thành công!!!')", true);
            }
            catch (Exception ex)
            {
                Response.Redirect("Error.aspx");
            }
        }

        protected void ButtonSP_Click(object sender, EventArgs e)
        {
            int inputSP;
            if (Request.QueryString["MASP"] != "" && int.TryParse(Request.QueryString["MASP"], out inputSP))
            {
                insertSP(inputSP);
            }
            else
            {
                Response.Redirect("Error.aspx");

            }
        }
    }
}