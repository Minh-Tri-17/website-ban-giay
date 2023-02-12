<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ChiTietSanPham.ascx.cs" Inherits="DACS1.usercontrol.ChiTietSanPham" %>
<article>
    <section class="products-detail">
        <div class="image-products-detail">
            <img src='<%="\\images\\images-private\\images-product\\"+infoSP.ANH %>'
                alt="">
        </div>
        <div class="info-products-detail">
            <h3><%=infoSP.TENSP %></h3>
            <p><%=infoSP.GIA %></p>
            <asp:Button ID="ButtonSP" runat="server" Text="Thêm vào giỏ" CssClass="buttonSP" OnClick="ButtonSP_Click" />
        </div>
    </section>
    <section class="products-relate">
        <%foreach (var item in listSP)
            { %>
        <%if (item.LOAISP == "1")
            {%>        
        <div class="info-products-trademark">
            <a href='<%="ChiTietSanPham.aspx?MASP=" + item.MASP%>'>
                <img src='<%="\\images\\images-private\\images-product\\" + item.ANH %>' alt=""></a>
            <h3><%=item.TENSP %></h3>
            <p><%=item.GIA %></p>
            <asp:Button ID="Button1" runat="server" Text="Thêm vào giỏ" CssClass="buttonSP" OnClick="ButtonSP_Click" />
        </div>
        <%} %>
        <%} %>
    </section>
</article>
