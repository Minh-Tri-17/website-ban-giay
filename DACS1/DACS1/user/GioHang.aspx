<%@ Page Title="" Language="C#" MasterPageFile="~/Public.Master" AutoEventWireup="true" CodeBehind="GioHang.aspx.cs" Inherits="DACS1.user.GioHang" %>
<%@ Register src="../usercontrol/GioHang.ascx" tagname="GioHang" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:GioHang ID="GioHang1" runat="server" />
</asp:Content>
