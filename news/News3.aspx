<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="News3.aspx.cs" Inherits="News3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content-main news-container">
        <h1>Très Chic</h1>
        <span>posted Tuesday, November 19th, 2012 at 8:21 pm</span>

        <div class="float-left rounded text_section">
        <p>
            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris blandit mollis nisi,
            et adipiscing nunc aliquet at. Nunc pellentesque ante at augue viverra posuere.
            Nullam non metus a purus condimentum lacinia. Nullam eu tellus at tortor mollis
            egestas. Praesent facilisis, velit in vulputate volutpat, velit mi lobortis lacus,
            ac dignissim enim lectus vitae felis. Nam in enim turpis, sit amet ultrices odio.
            Maecenas a eros metus. Morbi tincidunt ullamcorper dignissim. Nunc id rutrum est.
            Cras at magna a nulla tristique accumsan. Fusce tincidunt mollis posuere. Maecenas
            eu metus justo, non porta nunc.
        </p>
        <p>
            Etiam nec enim tortor. Mauris at nulla elit. Duis malesuada eros faucibus ante molestie
            fermentum id eu purus. Vivamus a orci sit amet enim aliquet egestas. Praesent turpis
            tortor, sodales sed adipiscing in, condimentum sed nulla. Nam euismod elementum
            leo id eleifend. Nunc tempus nisi eget velit pellentesque quis fermentum urna sodales.
            Cras nisl purus, adipiscing vel bibendum quis, varius molestie turpis. Donec vitae
            massa nibh, a congue ante. Duis eros augue, interdum ac blandit vitae, euismod ac
            massa.
        </p>
        <p>
            Donec mollis tincidunt hendrerit. Aliquam suscipit ultrices nisi, ac consequat leo
            facilisis id. Etiam hendrerit imperdiet tellus, ac bibendum est tincidunt quis.
            Cras ac iaculis elit. In quis est dolor, sit amet vestibulum ligula. Etiam a eros
            sit amet dolor viverra consectetur. Aenean pretium commodo cursus. Curabitur laoreet
            blandit nisl nec scelerisque.
        </p>

        <a href="<%= Page.ResolveUrl("~")%>news/default.aspx">[Back to News]</a>
        </div>

                <div class="float-right image_section">
        <img src="<%= Page.ResolveUrl("~")%>img/treschic.png" />
        </div>

                    <div class="clear">
            </div>

    </div>
</asp:Content>

