<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="QueryRply.aspx.cs" Inherits="WebPlacement.QueryRply" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page_top_wrap page_top_title page_top_breadcrumbs" style="background-color:#1eaace;margin-left:50px;">
					<div class="content_wrap" style="height: 88px">
					<h3 class="page_title" >
                    <span style="font-weight:500; padding-left:45%; color:#ffffff;">Reply</span>
                    <span style="font-size:28px;"></span>
                    <span style="font-size:20px;"></span> </h3>
                    </div>
				</div>
    <table class="column-1">
        <tr>
            <td valign="top">
                <table class="sc_skills">
                    <tr>
                        <td style="width: 482px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right"style="width: 482px">&nbsp;&nbsp; </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 482px">Email id :-&nbsp;&nbsp;&nbsp;&nbsp; </td>
                        <td>
                            <asp:TextBox ID="txtemail" runat="server" BackColor="Silver" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px" Width="272px" CssClass="validate[required,custom[email]]"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 482px">&nbsp;Subject:-&nbsp;&nbsp;</td>
                        <td>
                            <asp:TextBox ID="txtsubject" runat="server" BackColor="Silver" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px" Width="272px" CssClass="validate[required]"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 482px">&nbsp;&nbsp; Reply :- </td>
                        <td>
                            <asp:TextBox ID="txtrply" runat="server" BackColor="Silver" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="121px" TextMode="MultiLine" Width="354px" CssClass="validate[required]"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 482px">&nbsp;</td>
                        <td>
                            <asp:Button ID="Button3" runat="server" Height="52px" Text="Submit" Width="177px" OnClick="Button3_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 482px">&nbsp;</td>
                        <td>
                        &nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 482px">&nbsp;</td>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 482px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 482px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
