<%@ Page Title="" Language="C#" MasterPageFile="~/Public.Master" AutoEventWireup="true" CodeBehind="SanPhamHang.aspx.cs" Inherits="DACS1.user.SanPhamHang" %>
<%@ Register src="../usercontrol/SanPhamHang.ascx" tagname="SanPhamHang" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:SanPhamHang ID="SanPhamHang1" runat="server" />
</asp:Content>
