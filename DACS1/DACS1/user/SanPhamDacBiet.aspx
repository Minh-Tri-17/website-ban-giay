<%@ Page Title="" Language="C#" MasterPageFile="~/Public.Master" AutoEventWireup="true" CodeBehind="SanPhamDacBiet.aspx.cs" Inherits="DACS1.user.SanPhamDacBiet" %>
<%@ Register src="../usercontrol/SanPhamDacBiet.ascx" tagname="SanPhamDacBiet" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:SanPhamDacBiet ID="SanPhamDacBiet1" runat="server" />
</asp:Content>
