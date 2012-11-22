<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        
        <div id="contact-banner" class="content-image rounded_corners"></div>

        <div class="content-main">
            
            <div class="contact-form">
            
                <asp:Label ID="lbl_name" runat="server">Name:</asp:Label>
                <asp:TextBox ID="txt_name" runat="server" Columns="50"></asp:TextBox><br />
            
                <asp:Label ID="lbl_message" runat="server">Message:</asp:Label>
                <asp:TextBox ID="txt_message" runat="server" Columns="40" Rows="6" TextMode="MultiLine"></asp:TextBox><br />
            
                <asp:Button ID="btn_submit" runat="server" Text="Submit" OnClick="btnSubmit_Click" /><br />
            
                <asp:Label ID="lbl_res" runat="server"></asp:Label><br />

            </div>
        
        </div>
    </div>
</asp:Content>
