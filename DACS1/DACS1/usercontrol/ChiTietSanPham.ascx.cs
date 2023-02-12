using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DACS1.usercontrol
{
    public partial class ChiTietSanPham : System.Web.UI.UserControl
    {
        DataClasses1DataContext db = new DataClasses1DataContext();
        public static SANPHAM infoSP = new SANPHAM();
        public static List<SANPHAM> listSP = new List<SANPHAM>();
        protected void Page_Load(object sender, EventArgs e)
        {
            long MASP;
            if (Request.QueryString["MASP"] != "" && long.TryParse(Request.QueryString["MASP"], out MASP))
            {
                MASP = Convert.ToInt64(Request.QueryString["MASP"]);
                loadinfo(MASP);
            }
            else
            {
                Response.Redirect("Error.aspx");
            }
            loadSP();
        }
        public void loadinfo(long MASP)
        {
            try
            {
                var dt = from q in db.SANPHAMs
                         where q.MASP == MASP
                         select q;
                if (dt != null && dt.Count() > 0)
                {
                    infoSP = dt.First();
                }
            }
            catch (Exception ex)
            {
                Response.Redirect("Error.aspx");
            }
        }
        public void loadSP()
        {
            var dt = (from q in db.SANPHAMs select q).ToList();
            if(dt!= null&& dt.Count() > 0)
            {
                listSP = dt.ToList();
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