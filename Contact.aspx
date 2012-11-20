<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:content id="Content1" contentplaceholderid="head" runat="Server">
</asp:content>
<asp:content id="Content2" contentplaceholderid="ContentPlaceHolder1" runat="Server">

<div>
    <div class="content-image">
    </div>

    <h2>
        Contact Us</h2>
    <br />
    <table>
        <!-- Name -->
        <tr>
            <td align="center">
                Name:
            </td>
            <td>
                <asp:textbox id="txtName" runat="server" columns="50"></asp:textbox>
            </td>
        </tr>
        <!-- Subject -->
        <tr>
            <td align="center">
                Subject:
            </td>
            <td>
                <asp:dropdownlist id="ddlSubject" runat="server">
                <asp:ListItem>Ask a question</asp:ListItem>
                <asp:ListItem>Report a bug</asp:ListItem>
                <asp:ListItem>Customer support ticket</asp:ListItem>
                <asp:ListItem>Other</asp:ListItem>
            </asp:dropdownlist>
            </td>
        </tr>
        <!-- Message -->
        <tr>
            <td align="center">
                Message:
            </td>
            <td>
                <asp:textbox id="txtMessage" runat="server" columns="40" rows="6" textmode="MultiLine"></asp:textbox>
            </td>
        </tr>
        <!-- Submit -->
        <tr align="center">
            <td colspan="2">
                <asp:button id="btnSubmit" runat="server" text="Submit" onclick="btnSubmit_Click" />
            </td>
        </tr>
        <!-- Results -->
        <tr align="center">
            <td colspan="2">
                <asp:label id="lblResult" runat="server"></asp:label>
            </td>
        </tr>
    </table>
</div>
</asp:content>