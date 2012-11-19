<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="index.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <%--<asp:Label ID="HeaderLabel" runat="server" Text="<% $Resources:Strings, foobar %>"></asp:Label>--%>
    <div id="slidebanner">

    <object width="960" height="350">
        <embed src="flash/slideshow.swf" type="application/x-shockwave-flash" width="960" height="350"></embed>
    </object>

    </div>
    <div id="main_news">
        <div class="news_frame">
            <a href="#"><img src="img/banner1.png" class="rounded_corners" /></a>
        </div>
        <div class="news_frame">
            <a href="#"><img src="img/banner2.png" class="rounded_corners" /></a>
        </div>
        <div class="news_frame news_frame_last">
            <a href="#"><img src="img/banner3.png" class="rounded_corners" /></a>
        </div>
    </div>
</asp:Content>
