<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="GioHang.ascx.cs" Inherits="DACS1.usercontrol.GioHang" %>
<article class="cast">
    <section>
        <h3>Sản phầm trong giỏ hàng</h3>
       <%foreach (var item in listGH)
           { %>
        <%if (listGH.Count() < 0)
            { %>
        <p>Giỏ hàng trống</p>
        <%} %>
         <div class="product-add-cast">
            <img src='<%= "\\images\\images-private\\images-product\\"+item.SANPHAM.ANH %>' alt="">
            <p><%=item.SANPHAM.TENSP %></p>
            <p><%=item.SANPHAM.GIA %></p>
            <p><%=item.MASPGH %></p>
             <asp:Button ID="btndelete" runat="server" Text="X" CssClass="delete" OnClick="btndelete_Click" />
        </div>  
        <%} %>
    </section>
    <section class="order">
        <h3>Đặt hàng</h3>       
        <asp:TextBox ID="insName" runat="server" placeholder="Name" CssClass="input"></asp:TextBox>
        <asp:TextBox ID="insAddress" runat="server" placeholder="Address" CssClass="input"></asp:TextBox>
        <asp:TextBox ID="insPhone" runat="server" placeholder="Phone" CssClass="input"></asp:TextBox>        
        <asp:TextBox ID="insID" runat="server" placeholder="ID" CssClass="input"></asp:TextBox>
        <asp:TextBox ID="insS" runat="server" placeholder="Size" CssClass="input"></asp:TextBox>        
        <asp:TextBox ID="insSL" runat="server" placeholder="Amount" CssClass="input"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Đặt hàng" CssClass="button" OnClick="Button1_Click1" />       
    </section>
</article>
