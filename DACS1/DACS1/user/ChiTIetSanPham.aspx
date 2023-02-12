<%@ Page Title="" Language="C#" MasterPageFile="~/Public.Master" AutoEventWireup="true" CodeBehind="ChiTIetSanPham.aspx.cs" Inherits="DACS1.user.ChiTIetSanPham" %>
<%@ Register src="../usercontrol/ChiTietSanPham.ascx" tagname="ChiTietSanPham" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:ChiTietSanPham ID="ChiTietSanPham1" runat="server" />
</asp:Content>
