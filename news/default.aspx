<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="default.aspx.cs" Inherits="News" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="news_banner" class="content-image  rounded_corners">
    </div>
    <div class="content-main">
        <div class="news-list">
            <a href="<%= Page.ResolveUrl("~")%>news/News1.aspx"><h2>
                Nominated #1 twice!</h2></a>
            <span>posted Tuesday, November 19th, 2012 at 8:21 pm</span>
            <p>
                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris blandit mollis nisi,
                et adipiscing nunc aliquet at. Nunc pellentesque ante at augue viverra posuere.
                Nullam non metus a purus condimentum lacinia. Nullam eu tellus at tortor mollis
                egestas. Praesent facilisis, velit in vulputate volutpat, velit mi lobortis lacus,
                ac dignissim enim lectus vitae felis. Nam in enim turpis, sit amet ultrices odio.
                Maecenas a eros metus. <a href="<%= Page.ResolveUrl("~")%>news/News1.aspx">[Continue Reading]</a></p>
        </div>

                <div class="news-list">
            <a href="<%= Page.ResolveUrl("~")%>news/News2.aspx"><h2>
                Closer to You</h2></a>
            <span>posted Tuesday, November 19th, 2012 at 8:21 pm</span>
            <p>
                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris blandit mollis nisi,
                et adipiscing nunc aliquet at. Nunc pellentesque ante at augue viverra posuere.
                Nullam non metus a purus condimentum lacinia. Nullam eu tellus at tortor mollis
                egestas. Praesent facilisis, velit in vulputate volutpat, velit mi lobortis lacus,
                ac dignissim enim lectus vitae felis. Nam in enim turpis, sit amet ultrices odio.
                Maecenas a eros metus. <a href="<%= Page.ResolveUrl("~")%>news/News2.aspx">[Continue Reading]</a></p>
        </div>  


        <div class="news-list">
            <a href="<%= Page.ResolveUrl("~")%>news/News3.aspx"><h2>
                Très Chic</h2></a>
            <span>posted Tuesday, November 19th, 2012 at 8:21 pm</span>
            <p>
                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris blandit mollis nisi,
                et adipiscing nunc aliquet at. Nunc pellentesque ante at augue viverra posuere.
                Nullam non metus a purus condimentum lacinia. Nullam eu tellus at tortor mollis
                egestas. Praesent facilisis, velit in vulputate volutpat, velit mi lobortis lacus,
                ac dignissim enim lectus vitae felis. Nam in enim turpis, sit amet ultrices odio.
                Maecenas a eros metus. <a href="<%= Page.ResolveUrl("~")%>news/News3.aspx">[Continue Reading]</a></p>
        </div>  


    </div>
</asp:Content>
