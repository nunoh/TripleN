﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <script type="text/javascript">

        $(document).ready(function () {
            $('#contact-success').dialog({
                autoOpen: false,
                modal: true,
                buttons: {
                    Ok: function () {
                        $(this).dialog("close");
                    }
                }
            });

            $('#contact-error').dialog({
                autoOpen: false,
                modal: true,
                buttons: {
                    Ok: function () {
                        $(this).dialog("close");
                    }
                }
            });            
        });

        function success() {            
            $(window).scrollTop($(document).height());
            $("#contact-success").dialog();
        }

        function error() {
            $(window).scrollTop($(document).height());
            $("#contact-error").dialog();            
        }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        
        <div id="contact-banner" class="content-image rounded_corners"></div>

        <div class="content-main">
        
            <div id="contact-text">
                We are always pleased to heard from our customers and website visitors. Feel free to tell us what you think about the beer and/or the website.
            </div>

            <br />
        
            <div class="contact-form">

                <br />

                <asp:Label ID="lbl_name" runat="server">Name&nbsp;</asp:Label>
                <asp:TextBox ID="txt_name" runat="server" Columns="50"></asp:TextBox><br />
                
                <br />
                
                <asp:Label ID="lbl_message" runat="server">Message&nbsp;</asp:Label>
                <asp:TextBox ID="txt_message" runat="server" Columns="40" Rows="8" TextMode="MultiLine"></asp:TextBox><br />
            
                <br />

                <asp:Label ID="uowen" runat="server">&nbsp;</asp:Label>
                <asp:Button ID="btn_submit" runat="server" Text="     Send     " OnClick="btnSubmit_Click" /><br />
            
                <asp:Label ID="lbl_res" runat="server"></asp:Label><br />

            </div>

            <div class="clear"></div>

            <div id="contact-success" class="dialog" title="Thank you!">
                <p>Thank you for your feedback. We will take it into consideration.</p>
            </div>

            <div id="contact-error" class="dialog" title="Error">
                <p>Please provide a valid Name and/or Message.</p>
            </div>
        
        </div>
    </div>
</asp:Content>
