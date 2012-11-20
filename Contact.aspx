<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <div class="content-image">
        </div>
        <div class="content-main">
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
                        <asp:TextBox ID="txtName" runat="server" Columns="50"></asp:TextBox>
                    </td>
                </tr>
                <!-- Subject -->
                <tr>
                    <td align="center">
                        Subject:
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlSubject" runat="server">
                            <asp:ListItem>Ask a question</asp:ListItem>
                            <asp:ListItem>Report a bug</asp:ListItem>
                            <asp:ListItem>Customer support ticket</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <!-- Message -->
                <tr>
                    <td align="center">
                        Message:
                    </td>
                    <td>
                        <asp:TextBox ID="txtMessage" runat="server" Columns="40" Rows="6" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <!-- Submit -->
                <tr align="center">
                    <td colspan="2">
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                    </td>
                </tr>
                <!-- Results -->
                <tr align="center">
                    <td colspan="2">
                        <asp:Label ID="lblResult" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
