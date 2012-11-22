<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="SiteMap.aspx.cs" Inherits="SiteMap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="where_banner" class="content-image  rounded_corners"></div>
    <div class="content-main">
        <asp:TreeView ID="TreeView1" runat="server" DataSourceID="SiteMapDataSource1" NodeIndent="10"
            ShowExpandCollapse="False">
        </asp:TreeView>

    </div>
</asp:Content>
