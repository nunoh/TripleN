<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="AboutUs.aspx.cs" Inherits="AboutUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
        <div id="about_banner" class="content-image  rounded_corners">
        </div>
        <div class="content-main">
            <div id="about_text_section" class="float-left rounded">
                <p>
                    Heineken's proud heritage includes generations of family involvement and celebrated
                    beers. Gerard Adriaan Heineken purchased the De Hooiberg brewery and founded Heineken
                    in 1863. He made the business an immediate success by adhering to the highest quality
                    standards, treating his employees well, and actually offering a money-back guarantee
                    to his customers. Heineken's success was great with demand spanning across Europe
                    with year after year of growth backed by additional breweries. Heineken was first
                    exported to America in 1880 but was halted by prohibition in 1920. Following its
                    repeal in 1933, Leo van Munching brought the great brew back to the United States
                    and made Heineken one of the most loved imported beers on our shores.
                </p>
                <p>
                    Today, we proudly continue Gerard Adriaan Heineken's passion for quality and commitment
                    to being a responsible brewer. We are proud of our beer, our employees, and our
                    company.
                </p>
                <p>
                    Use the links to browse through 13 decades of the history of Heineken in the United
                    States.
                </p>
            </div>
            <div id="about_image_section" class="float-right">
                <img src="img/company1.jpg" />
                <img src="img/company2.jpg" />
            </div>
            <div class="clear">
            </div>
        </div>

</asp:Content>