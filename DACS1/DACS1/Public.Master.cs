using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DACS1
{
    public partial class Public : System.Web.UI.MasterPage
    {
        DataClasses1DataContext db = new DataClasses1DataContext();
        public static List<THUONGHIEU> listTH = new List<THUONGHIEU>();
        public static List<SANPHAM> listSP = new List<SANPHAM>();
        public static List<QUANTRI> listQT = new List<QUANTRI>();
        protected void Page_Load(object sender, EventArgs e)
        {
            loadTH();            
        }
        public void loadTH()
        {
            var dt = (from q in db.THUONGHIEUs select q).ToList();
            if (dt != null && dt.Count > 0)
            {
                listTH = dt.ToList();
            }
        }
        public void loadSP()
        {
            var data = (from q in db.SANPHAMs
                        where q.TENSP.Contains(boxseach.Text)
                        select q);
            if (data != null)
            {
                listSP = data.ToList();
            }
            if (boxseach.Text == "")
            {
                listSP.Clear();
            }
        }        
        protected void btnseach_Click(object sender, EventArgs e)
        {
            loadSP();
        }
        public void account()
        {
            var dt = (from q in db.QUANTRIs select q).ToList();
            listQT = dt.ToList();
            foreach(var item in listQT)
            {
                if(item.USERNAME == username.Text || item.PASSWORD == password.Text)
                {
                    Response.Redirect("QuanTri.aspx");
                }               
            }           
        }
        protected void btnDN_Click(object sender, EventArgs e)
        {
            account();
        }
    }
}