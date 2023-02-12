<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="QuanTri.ascx.cs" Inherits="DACS1.usercontrol.QuanTri" %>
<section class="insert-data">
    <h3>Thêm dữ liệu</h3>
    <asp:Label ID="Label2" runat="server" Text="Mã sản phẩm" Font-Size="25px" ForeColor="#999999"></asp:Label>
    <div class="insert">
        <asp:TextBox ID="inscode" runat="server" Height="25px" Width="450px"></asp:TextBox>
    </div>
    <asp:Label ID="Label3" runat="server" Text="Tên sản phẩm" Font-Size="25px" ForeColor="#999999"></asp:Label>
    <div class="insert">
        <asp:TextBox ID="insname" runat="server" Height="25px" Width="450px"></asp:TextBox>
    </div>
    <asp:Label ID="Label4" runat="server" Text="Giá sản phẩm" Font-Size="25px" ForeColor="#999999"></asp:Label>
    <div class="insert">
        <asp:TextBox ID="inscost" runat="server" Height="24px" Width="450px"></asp:TextBox>
    </div>
    <asp:Label ID="Label5" runat="server" Text="Ảnh sản phẩm" Font-Size="25px" ForeColor="#999999"></asp:Label>
    <div class="insert">
        <asp:FileUpload ID="inimages" runat="server" Font-Size="23px" />
    </div>
    <asp:Label ID="Label6" runat="server" Text="Loại sản phẩm" Font-Size="25px" ForeColor="#999999"></asp:Label>
    <div class="insert">
        <asp:TextBox ID="instype" runat="server" Height="25px" Width="450px"></asp:TextBox>
    </div>
    <asp:Label ID="Label7" runat="server" Text="Giảm giá sản phẩm" Font-Size="25px" ForeColor="#999999"></asp:Label>
    <div class="insert">
        <asp:TextBox ID="inssale" runat="server" Height="25px" Width="450px"></asp:TextBox>
    </div>
    <asp:Label ID="Label1" runat="server" Text="Thương hiệu sản phẩm" Font-Size="25px" ForeColor="#999999"></asp:Label>
    <div class="insert">
        <asp:TextBox ID="instrade" runat="server" Height="25px" Width="450px"></asp:TextBox>
    </div>
    <asp:Button ID="Button1" runat="server" Text="Thêm" Height="32px" OnClick="Button1_Click" Width="125px" Font-Size="25px" />
</section>
<section class="delete-data">
    <h3>Xóa dữ liệu</h3>
    <asp:DataGrid ID="gridAD" runat="server" AllowPaging="true" PageSize="10" PagerStyle-Mode="NumericPages"
        AutoGenerateColumns="false" DataKeyField="MASP" OnItemCommand="gridAD_ItemCommand" OnPageIndexChanged="gridAD_PageIndexChanged">
        <Columns>
            <asp:TemplateColumn HeaderText="Hình Ảnh" HeaderStyle-Font-Bold="true" ItemStyle-Width="200px" HeaderStyle-ForeColor="Red" HeaderStyle-Font-Size="30px">
                <ItemTemplate>
                    <img alt='<%# Eval("TENSP").ToString() %>' height="90" width="200" src='<%# "\\images\\images-private\\images-product\\"+ Eval("ANH").ToString() %>' />
                </ItemTemplate>
            </asp:TemplateColumn>
        </Columns>
        <Columns>
            <asp:TemplateColumn HeaderText="Tên Sản Phẩm" HeaderStyle-Font-Bold="true" ItemStyle-Width="420px" HeaderStyle-ForeColor="Red" HeaderStyle-Font-Size="30px">
                <ItemTemplate>
                    <asp:LinkButton Font-Underline="false" ID="lnkTitle" runat="server" CommandName="GetMASP" Text='<%# Eval("TENSP").ToString() %>'></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateColumn>
        </Columns>
        <Columns>
            <asp:TemplateColumn HeaderText="Xóa" HeaderStyle-Font-Bold="true" ItemStyle-Width="70px" HeaderStyle-ForeColor="Red" HeaderStyle-Font-Size="30px">
                <ItemTemplate>
                    <asp:LinkButton Font-Underline="false" ID="lnkXoa" runat="server" OnClientClick="return confirm('Bạn có muốn xóa tin tức này?');" CommandName="GetMASPsDelete" Text="Xóa"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateColumn>
        </Columns>
    </asp:DataGrid>
</section>
<section class="table-order">
    <h3>Thông tin đặt hàng</h3>
    <asp:GridView ID="GridView1" runat="server" CssClass="detailOrder" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" CellSpacing="4" ForeColor="Black" GridLines="Vertical" Width="574px">
        <AlternatingRowStyle BackColor="White" />
        <FooterStyle BackColor="#CCCC99" CssClass="detailOrder" />
        <HeaderStyle BackColor="#6B696B" CssClass="detailOrder" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />
    </asp:GridView>
</section>