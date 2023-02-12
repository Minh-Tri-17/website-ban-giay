using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DACS1.usercontrol
{
    public partial class TrangChu : System.Web.UI.UserControl
    {
        DataClasses1DataContext db = new DataClasses1DataContext();
        public static List<SANPHAM> listSP = new List<SANPHAM>();
        protected void Page_Load(object sender, EventArgs e)
        {
            loadSP();
        }
        public void loadSP()
        {
            var dt = (from q in db.SANPHAMs select q).ToList();
            if(dt!=null && dt.Count() > 0)
            {
                listSP = dt.ToList();
            }
        }
    }
}