<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SanPhamHang.ascx.cs" Inherits="DACS1.usercontrol.SanPham" %>
<aside class="aside-products">
    <div class="aside-products-images">
        <img src="/images/images-public/pexels-cottonbro-4088027.jpg" alt="">
    </div>
    <div class="aside-products-images">
        <img src="/images/images-public/pexels-erik-mclean-10924181.jpg" alt="">
    </div>
    <div class="aside-products-images">
        <img src="/images/images-public/pexels-felipepelaquim-10307081.jpg" alt="">
    </div>
</aside>
<article class="products">
    <h3>Sản phẩm nổi bật</h3>
    <section class="body">
        <div id="wrapper">
            <div id="carousel">
                <div id="content">
                    <%foreach (var item in listSP)
                        { %>
                    <div class="info-products-trademark">
                        <a href='<%="ChiTietSanPham.aspx?MASP=" + item.MASP%>'>
                            <img src='<%="\\images\\images-private\\images-product\\" + item.ANH %>' alt=""></a>
                        <h3><%=item.TENSP %></h3>
                        <p><%=item.GIA %></p>                        
                    </div>
                    <%} %>
                </div>
                <button id="prev">
                    <i class="fa-solid fa-angle-left"></i>
                </button>
                <button id="next">
                    <i class="fa-solid fa-angle-right"></i>
                </button>
            </div>
        </div>
    </section>
    <h3>Sản phẩm</h3>
    <section class="products-trademark">
        <%foreach (var item in listSP)
            { %>        
        <div class="info-products-trademark">
            <a href='<%="ChiTietSanPham.aspx?MASP=" + item.MASP%>'>
                <img src='<%="\\images\\images-private\\images-product\\" + item.ANH %>' alt=""></a>
            <h3><%=item.TENSP %></h3>
            <p><%=item.GIA %></p>
        </div>
        <%} %>
    </section>    
</article>
