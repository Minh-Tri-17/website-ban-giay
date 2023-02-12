using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DACS1.usercontrol
{
    public partial class QuanTri : System.Web.UI.UserControl
    {
        DataClasses1DataContext db = new DataClasses1DataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            loaddata();
            loadDH();
            setdata();
        }
        private void loaddata()
        {
            var data = from sp in db.SANPHAMs
                       select sp;
            if (data != null)
            {
                gridAD.DataSource = data.ToList();
                gridAD.DataBind();
            }
        }
        private void loadDH()
        {
            var dt = (from z in db.DATHANGs
                      from x in db.GIOHANGs
                      from y in db.SANPHAMs
                      from v in db.THUONGHIEUs
                      where z.MASPGH == x.MASPGH && x.MASP == y.MASP && y.MATH == v.MATH
                      select new 
                      { 
                          z.TENKH, z.SOLUONG, z.SIZE, z.SDT,z.DIACHI,z.TRANGTHAI,
                          z.GIOHANG.SANPHAM.TENSP,
                          z.GIOHANG.SANPHAM.SALE,
                          z.GIOHANG.SANPHAM.THUONGHIEU.TENTH,
                          z.GIOHANG.SANPHAM.GIA                         
                      }).ToList();
            if(dt!=null&& dt.Count() > 0)
            {
                GridView1.DataSource = dt.ToList();
                GridView1.DataBind();
            }
        }    
        private void setdata()
        {
            var dt = (from z in db.DATHANGs
                      from x in db.GIOHANGs
                      from y in db.SANPHAMs
                      from v in db.THUONGHIEUs
                      where z.MASPGH == x.MASPGH && x.MASP == y.MASP && z.SOLUONG > z.GIOHANG.SANPHAM.SLKHO
                      select z
                      ).ToList();
            foreach(var item in dt)
            {
                item.TRANGTHAI = "hết hàng";
            }
            db.SubmitChanges();
            loadDH();
        }
        protected void gridAD_ItemCommand(object source, DataGridCommandEventArgs e)
        {
            if (((LinkButton)e.CommandSource).CommandName == "GetMASP")
            {
                long MASPSelect = Convert.ToInt64(gridAD.DataKeys[e.Item.ItemIndex]);
                var datasanpham = from sp in db.SANPHAMs
                                  where sp.MASP == MASPSelect
                                  select sp;
                if (datasanpham != null && datasanpham.Count() > 0)
                {
                    Response.Redirect("Quantri.aspx?MASP=" + MASPSelect.ToString());
                }
            }
            if (((LinkButton)e.CommandSource).CommandName == "GetMASPsDelete")
            {
                long MASPSelect = Convert.ToInt64(gridAD.DataKeys[e.Item.ItemIndex].ToString());
                var datasanpham = from sp in db.SANPHAMs
                                  where sp.MASP == MASPSelect
                                  select sp;
                if (datasanpham != null && datasanpham.Count() > 0)
                {
                    SANPHAM infoTin = datasanpham.First();
                    db.SANPHAMs.DeleteOnSubmit(infoTin);
                    db.SubmitChanges();
                    loaddata();
                }
            }
        }

        protected void gridAD_PageIndexChanged(object source, DataGridPageChangedEventArgs e)
        {
            gridAD.CurrentPageIndex = e.NewPageIndex;
            loaddata();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SANPHAM infoSP = new SANPHAM();
            try
            {
                if (inscode.Text != "")
                {
                    infoSP.MASP = int.Parse(inscode.Text);
                    infoSP.TENSP = (insname.Text).ToString();
                    infoSP.GIA = (inscost.Text).ToString();
                    infoSP.LOAISP = (instype.Text).ToString();
                    infoSP.MATH = int.Parse(instrade.Text);
                    infoSP.SALE = (inssale.Text).ToString();
                    if (inimages.HasFile || inimages.HasFile)
                    {
                        infoSP.ANH = inimages.FileName;
                        inimages.SaveAs(Server.MapPath("\\images\\images-private\\images-product\\") + infoSP.ANH);
                    }
                    db.SANPHAMs.InsertOnSubmit(infoSP);
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
            inscode.Text = "";
            inscost.Text = "";
            insname.Text = "";
            inssale.Text = "";
            instrade.Text = "";
            instype.Text = "";
        }
    }
}