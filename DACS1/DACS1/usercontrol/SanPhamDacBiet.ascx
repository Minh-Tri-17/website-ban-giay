<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SanPhamDacBiet.ascx.cs" Inherits="DACS1.usercontrol.SanPhamDacBiet" %>
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
    <h3>Sản Phẩm Nổi Bật</h3>
    <section class="products-trademark">
        <%foreach (var item in listSP)
            { %>
        <%if (item.LOAISP == "1")
            {%>
        <div class="info-products-trademark">

            <a href='<%="ChiTietSanPham.aspx?MASP=" + item.MASP%>'>
                <img src='<%="\\images\\images-private\\images-product\\" + item.ANH %>' alt=""></a>
            <h3><%=item.TENSP %></h3>
            <p><%=item.GIA %></p>
        </div>
        <%} %>
        <%} %>
    </section>
    <h3>Sản Phẩm Bán Chạy</h3>
    <section class="products-trademark">
        <%foreach (var item in listSP)
            { %>
        <%if (item.LOAISP == "2")
            {%>
        <div class="info-products-trademark">

            <a href='<%="ChiTietSanPham.aspx?MASP=" + item.MASP%>'>
                <img src='<%="\\images\\images-private\\images-product\\" + item.ANH %>' alt=""></a>
            <h3><%=item.TENSP %></h3>
            <p><%=item.GIA %></p>
        </div>
        <%} %>
        <%} %>
    </section>
    <h3>Sản Phẩm Giảm Giá</h3>
    <section class="products-trademark">
        <%foreach (var item in listSP)
            { %>
        <%if (item.LOAISP == "3")
            {%>
        <div class="info-products-trademark">
            <p class="sale-off"><%=item.SALE %></p>
            <a href='<%="ChiTietSanPham.aspx?MASP=" + item.MASP%>'>
                <img src='<%="\\images\\images-private\\images-product\\" + item.ANH %>' alt=""></a>
            <h3><%=item.TENSP %></h3>
            <p><%=item.GIA %></p>
            <asp:Button ID="Button3" runat="server" Text="Thêm vào giỏ" CssClass="buttonSP" OnClick="ButtonSP_Click" />
        </div>
        <%} %>
        <%} %>
    </section>
</article>
