<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="BlackBeer.aspx.cs" Inherits="Beers_BlackBeer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width:100%; clear:both; background-color: #FFF; min-height:520px;">
        <div style="float:left;"><img src="<%= Page.ResolveUrl("~")%>img/Black-Beer.jpg" style="vertical-align:top;" /></div>
        <div style="float:left; width:470px; padding:0 20px;">
            <h2>Lorem ipsum</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi et neque vitae ante congue tempor. Sed volutpat rhoncus turpis ac ornare. In quis elit velit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas in erat quam, in auctor lorem. Fusce suscipit, nisi nec facilisis imperdiet, enim massa ullamcorper dolor, non tincidunt metus nulla id justo. In eget augue odio, at varius odio.</p>
            <p>Morbi pretium ligula ac diam ultrices et condimentum leo accumsan. Nam nec risus nulla, ac cursus eros. Nullam eget augue diam, a auctor augue. Quisque eros sapien, malesuada id dictum ut, porttitor at orci. Integer dignissim libero vel lorem vehicula ornare. Nulla eget massa lectus. Nam rutrum nunc eget nisi congue eget faucibus libero pulvinar. In hac habitasse platea dictumst. Vivamus a congue elit. Nulla facilisi. Vestibulum sit amet odio tellus, ut aliquam diam. Vestibulum et est et turpis pellentesque feugiat ut quis ipsum. Maecenas rhoncus erat non quam fermentum euismod luctus nisl vestibulum. Integer libero diam, ultrices eu ultrices at, convallis id nunc. Ut sit amet luctus tellus.</p>
        </div>

    </div>
</asp:Content>
