<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="index.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <%--<asp:Label ID="HeaderLabel" runat="server" Text="<% $Resources:Strings, foobar %>"></asp:Label>--%>
    <div id="slidebanner">

    <object width="960" height="350" style="z-index:-1;">
        <param name="wmode" value="transparent" />
        <embed wmode="transparent" src="flash/slideshow.swf" type="application/x-shockwave-flash" width="960" height="350"></embed>
    </object>

    </div>
    <div id="main_news">
        <div class="news_frame">
            <a href="<%= Page.ResolveUrl("~")%>news/News1.aspx"><img src="<%= Page.ResolveUrl("~")%>img/banner1.png" class="rounded_corners" /></a>
        </div>
        <div class="news_frame">
            <a href="<%= Page.ResolveUrl("~")%>news/News2.aspx"><img src="<%= Page.ResolveUrl("~")%>img/banner2.png" class="rounded_corners" /></a>
        </div>
        <div class="news_frame" id="news_frame_last">
            <a href="<%= Page.ResolveUrl("~")%>news/News3.aspx"><img src="<%= Page.ResolveUrl("~")%>img/banner3.png" class="rounded_corners" /></a>
        </div>
    </div>

    <div id="ani" style="width:980px; height:800px; overflow:hidden; position:absolute; top:0; left:180px; z-index:100;"  onclick="hideBottle()">

        <div id="ani_bottle" style="position:absolute; left:260px; top:700px;">
            <img id="ifoam" src="img/inner_foam.png" style="visibility:hidden;" alt="" />
            <img id="foam" src="img/foam.png" style="visibility:hidden;" alt="" />
            <img id="ani_bottle_img" src="img/anim_bottleTop.png" alt="" />
            <img src="img/anim_bottle.png" style="visibility:hidden;" alt="" />
        </div>

        <div id="ani_top" style="position:absolute; left:575px; top:345px;">
            <img id="top" src="img/anim_fullTop.png" style="visibility:hidden;" alt="" />
            <canvas id="ani_top_c"></canvas>
        </div>

        <div id="sayhi" style="position:absolute; left: 570px; top: 300px; color:#ff6a00; background-color:#fff; display:none; text-align:center; width:200px;">
            Welcome!<br />Have one with us!
        </div>

        <!--
        <div id="sound">
            <embed name="sound1" src="sound/bottle_open.mp3" volume="100" hidden="true" autostart="false">
        </div>
        -->
    </div>
    <script src="anim.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(animateTop());
    </script>
</asp:Content>
