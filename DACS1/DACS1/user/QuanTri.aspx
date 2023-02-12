<%@ Page Title="" Language="C#" MasterPageFile="~/Public.Master" AutoEventWireup="true" CodeBehind="QuanTri.aspx.cs" Inherits="DACS1.user.QuanTri" %>
<%@ Register src="../usercontrol/QuanTri.ascx" tagname="QuanTri" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:QuanTri ID="QuanTri1" runat="server" />
</asp:Content>
