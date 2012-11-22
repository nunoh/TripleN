<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Beers.aspx.cs" Inherits="Beers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="beers_banner" class="content-image  rounded_corners">
    </div>
    <div class="content-main">
        <p>
            Our beer is made with love. That's why we garantee best quality and a flavor that
            you will never forget.</p>
        <p>
            Meet the family! You can select bellow each of our speciality.</p>
        <div id="beers_container">

            <a href="<%= Page.ResolveUrl("~")%>beers/ClassicBeer.aspx">
                <div class="beer_option float-left rounded_corners">
                    <img src="<%= Page.ResolveUrl("~")%>img/beer_classic.png" />
                    <h2>
                        Classic</h2>
                </div>
            </a>

             <a href="<%= Page.ResolveUrl("~")%>beers/BlackBeer.aspx">
            <div class="beer_option float-left rounded_corners">
                <img src="<%= Page.ResolveUrl("~")%>img/beer_black.png" />
                <h2>
                    Black</h2>
            </div>
            </a>

            <a href="<%= Page.ResolveUrl("~")%>beers/GourmetBeer.aspx">
            <div class="beer_option float-left rounded_corners">
                <img src="<%= Page.ResolveUrl("~")%>img/beer_gourmet.png" />
                <h2>
                    Gourmet</h2>
            </div>
            </a>

            <div class="clear">

            </div>
        </div>
    </div>
</asp:Content>
