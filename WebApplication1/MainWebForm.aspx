<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainWebForm.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 454px;
        }
        .auto-style2 {
            font-size: xx-large;
            height: 89px;
        }
        .auto-style3 {
            color: #FF0000;
        }
        .auto-style4 {
            font-weight: bold;
        }
        .auto-style5 {
            text-align: center;
        }
        .auto-style6 {
            color: #0066FF;
        }
        .auto-style7 {
            color: #009933;
            height: 42px;
        }
        .auto-style8 {
            color: #000000;
            height: 42px;
            font-size: xx-large;
        }
        .auto-style9 {
            width: 140px;
        }
        .auto-style10 {
            color: #000000;
            height: 42px;
            width: 140px;
        }
        .auto-style11 {
            color: #000000;
            height: 42px;
        }
    </style>
</head>
<body style="height: 565px">
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="4"><strong>List of available courses in Info 3rd year:<br />
                    </strong></td>
            </tr>
            <tr>
                <td><strong>Subjects</strong></td>
                <td class="auto-style9"><strong>
                    <asp:ListBox ID="ListBoxSubjects" runat="server" CssClass="auto-style4">
                        <asp:ListItem>--Code--</asp:ListItem>
                        <asp:ListItem Value="I3331">I3331</asp:ListItem>
                        <asp:ListItem Value="I3332">I3332</asp:ListItem>
                        <asp:ListItem Value="I3333">I3333</asp:ListItem>
                        <asp:ListItem Value="I3334">I3334</asp:ListItem>
                        <asp:ListItem Value="I3335">I3335</asp:ListItem>
                        <asp:ListItem Value="I3336">I3336</asp:ListItem>
                        <asp:ListItem Value="I3337">I3337</asp:ListItem>
                    </asp:ListBox>
                    </strong></td>
                <td class="auto-style5"><strong>Nb. of Credits</strong></td>
                <td>
                    <asp:TextBox ID="TextBoxCredits" runat="server" TextMode="Number" ForeColor="#0066FF"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
                <td><strong>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBoxCredits" CssClass="auto-style3" Display="Dynamic" ErrorMessage="Credits Nb. should be between 3 &amp; 5" MaximumValue="5" MinimumValue="3" Type="Integer"></asp:RangeValidator>
                    </strong></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style9"><strong>
                    <asp:Button ID="ButtonAdd" runat="server" CssClass="auto-style4" OnClick="ButtonAdd_Click" Text="Add" Width="62px" />
                    </strong></td>
                <td class="auto-style5"><strong>Total Nb. of Credits</strong></td>
                <td><strong>
                    <asp:Label ID="LabelTotalCredits" runat="server" CssClass="auto-style6" Text="0"></asp:Label>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style7" colspan="4"><strong>
                    <br />
                    P.S: Note that only 4 subjects are to be chosen from the list above, while the maximum allowed number of Credits is 15</strong></td>
            </tr>
            <tr>
                <td class="auto-style8" colspan="4"><strong>
                    <br />
                    Summary:</strong></td>
            </tr>
            <tr>
                <td class="auto-style11"><strong>Courses</strong></td>
                <td class="auto-style10"><strong>
                    <asp:ListBox ID="ListBoxCourses" runat="server" CssClass="auto-style4">
                        <asp:ListItem>--Code--</asp:ListItem>
                    </asp:ListBox>
                    </strong></td>
                <td class="auto-style11"><strong>
                    <asp:Button ID="ButtonDelete" runat="server" CssClass="auto-style4" OnClick="ButtonDelete_Click" Text="Delete" Width="110px" />
                    </strong></td>
                <td class="auto-style11"><strong>
                    <asp:Button ID="ButtonDeleteAll" runat="server" CssClass="auto-style4" Text="Delete All" Width="110px" OnClick="ButtonDeleteAll_Click" />
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style11"><strong>
                    <asp:Button ID="ButtonMoveUp" runat="server" CssClass="auto-style4" Text="Move Up" Width="110px" OnClick="ButtonMoveUp_Click" />
                    </strong></td>
                <td class="auto-style11"><strong>
                    <asp:Button ID="ButtonMoveDown" runat="server" CssClass="auto-style4" Text="Move Down" Width="110px" OnClick="ButtonMoveDown_Click" />
                    </strong></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
