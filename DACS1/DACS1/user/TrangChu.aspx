<%@ Page Title="" Language="C#" MasterPageFile="~/Public.Master" AutoEventWireup="true" CodeBehind="TrangChu.aspx.cs" Inherits="DACS1.user.TrangChu" %>
<%@ Register src="../usercontrol/TrangChu.ascx" tagname="TrangChu" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:TrangChu ID="TrangChu1" runat="server" />
</asp:Content>
