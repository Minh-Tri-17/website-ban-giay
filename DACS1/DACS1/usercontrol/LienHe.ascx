<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LienHe.ascx.cs" Inherits="DACS1.usercontrol.LienHe" %>
<article class="contact">
    <div class="my-info">
        <h3>Thông tin liên hệ</h3>
        <p><i class="fa-solid fa-location-crosshairs"></i>146 Nguyễn Văn Cừ, Ninh Kiều, Cần thơ</p>
        <p><i class="fa-solid fa-phone"></i>0933999999</p>
        <p><i class="fa-solid fa-envelope"></i>ntsneakers@gamil.com</p>
    </div>
    <div class="your-info">
        <div class="your-main">
            <asp:TextBox ID="name" runat="server" placeholder="Your name"></asp:TextBox>
            <asp:TextBox ID="phone" runat="server"  placeholder="Your phone"></asp:TextBox>
        </div>
            <asp:TextBox ID="message" runat="server" placeholder="Message"></asp:TextBox>
        <asp:TextBox ID="mail" runat="server" placeholder="Your mail"></asp:TextBox>
        <asp:Button  ID="Send" runat="server" Text="Sen message" CssClass="Send" OnClick="Button2_Click"/>
    </div>
</article>
