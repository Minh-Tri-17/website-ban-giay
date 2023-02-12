<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TrangChu.ascx.cs" Inherits="DACS1.usercontrol.TrangChu" %>
<aside>
    <div class="slideshwo-container">
        <div class="myslides">
            <img src="/images/images-public/boots-1638873.jpg" alt="" />
        </div>
        <div class="myslides">
            <img src="/images/images-public/edge-3528319.jpg" alt="" />
        </div>
        <div class="myslides">
            <img src="/images/images-public/fashion-5515135.jpg" alt="" />
        </div>
        <div class="myslides">
            <img src="/images/images-public/woman-3377839.jpg" alt="" />
        </div>
    </div>
    <div style="text-align: center">
        <span class="dot"></span>
        <span class="dot"></span>
        <span class="dot"></span>
        <span class="dot"></span>
    </div>
</aside>
<article>
    <section class="info">
        <div class="info-child">
            <h3><i class="fa-solid fa-phone"></i>0933999999</h3>
            <p>A small river named Duden flows by their place and supplies.</p>
        </div>
        <div class="info-child">
            <h3><i class="fa-solid fa-location-crosshairs"></i>146 Ninh Kiều</h3>
            <p>
                146 Nguyễn Văn Cừ, Ninh Kiều, Cần thơ
            </p>
        </div>
        <div class="info-child">
            <h3><i class="fa-solid fa-clock"></i>Open Monday to Friday</h3>
            <p>8:00am - 9:00pm</p>
        </div>
    </section>
    <section class="product-prominent">
        <div class="text-product-prominent">
            <h3>Sản phẩm nổi bật</h3>
            <p>
                Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind
          texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.
            </p>
            <h3 id="link-menu1"><a href="../user/SanPhamDacBiet.aspx">VIEW MENU</a></h3>
        </div>
        <div class="images-product-prominent">
            <img src="/images/images-public/The Mystery of Adidas (1).jpeg" alt="">
            <img src="/images/images-public/The Mystery of Adidas (2).jpeg" alt="">
            <img src="/images/images-public/The Mystery of Adidas (3).jpeg" alt="">
            <img src="/images/images-public/The Mystery of Adidas.jpeg" alt="">
        </div>
    </section>
    <section class="product-selling">
        <div class="text-product-selling">
            <h3>Sản phẩm bán chạy</h3>
            <p>
                Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind
          texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.
            </p>
        </div>
        <div class="product-selling-child">
            <%for (int i = 0; i < listSP.Count(); i++)
                {%>
            <%if (listSP[i].LOAISP == "2")
                { %>
            <div class="product-selling-detail">
                <img src='<%="\\images\\images-private\\images-product\\"+listSP[i].ANH %>' alt="">
                <h3><%=listSP[i].TENSP %></h3>
                <p><%=listSP[i].GIA %></p>
            </div>
            <%} %>
            <%} %>
        </div>
        <h3 class="link-menu2"><a href="../user/SanPhamDacBiet.aspx">VIEW MENU</a></h3>
    </section>
    <section class="product-saleoff">
        <div class="text-product-saleoff">
            <h3>Sản phẩm giảm giá</h3>
            <p>
                Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind
          texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.
            </p>
        </div>
        <div class="product-saleoff-child">
            <%for (int i = 0; i < listSP.Count(); i++)
                {%>
            <%if (listSP[i].LOAISP == "3")
                { %>
            <div class="product-saleoff-detail">
                <img src='<%="\\images\\images-private\\images-product\\" + listSP[i].ANH %>' alt="">
                <h3><%=listSP[i].TENSP %></h3>
                <p><%=listSP[i].GIA %></p>
                <div class="text-number-saleoff">
                    <p><%=listSP[i].SALE %></p>
                </div>
            </div>
            <%} %>
            <%} %>
        </div>
        <h3 class="link-menu2"><a href="../user/SanPhamDacBiet.aspx">VIEW MENU</a></h3>
    </section>
</article>
