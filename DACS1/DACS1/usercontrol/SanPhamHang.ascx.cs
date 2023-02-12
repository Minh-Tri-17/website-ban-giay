using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DACS1.usercontrol
{
    public partial class SanPham : System.Web.UI.UserControl
    {
        DataClasses1DataContext db = new DataClasses1DataContext();
        public static List<SANPHAM> listSP = new List<SANPHAM>();
        protected void Page_Load(object sender, EventArgs e)
        {                     
            long inputid;
            if (Request.QueryString["MATH"] != "" && long.TryParse(Request.QueryString["MATH"], out inputid))
            {
                loadSP(inputid);
            }
            else
            {
                Response.Redirect("Error.aspx");

            }
        }
        
        public void loadSP(long idinputSP)
        {
            
            try
            {
                var dt1 = (from q in db.SANPHAMs
                           where q.MATH == idinputSP
                           select q).ToList();
                if (dt1 != null && dt1.Count() > 0)
                {
                    listSP = dt1.ToList();
                }
            }
            catch (Exception ex)
            {
                Response.Redirect("Error.aspx");
            }
        }
    }
}