<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="webform1.aspx.cs" Inherits="LastAssignment.webform1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 664px;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 173px;
        }
        .auto-style4 {
            width: 382px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <table class="auto-style2">
                <tr>
                    <td class="auto-style3">Customer id</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Customer Name</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Contact #</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">ID</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Check In</td>
                    <td class="auto-style4">
                        <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                    </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Height="89px" OnClick="Button1_Click" Text="confirm checkin" Width="263px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Check Out</td>
                    <td class="auto-style4">
                        <asp:Calendar ID="Calendar2" runat="server"></asp:Calendar>
                    </td>
                    <td>
                        <asp:Button ID="Button2" runat="server" Height="105px" OnClick="Button2_Click" Text="Confirm checkout" Width="267px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Discount</td>
                    <td class="auto-style4">
                        <asp:Label ID="Label1" runat="server" Text="0%"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Staying Days</td>
                    <td class="auto-style4">
                        <asp:Label ID="Label2" runat="server" Text="0"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Total Rent</td>
                    <td class="auto-style4">
                        <asp:Label ID="Label3" runat="server" Text="0"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
