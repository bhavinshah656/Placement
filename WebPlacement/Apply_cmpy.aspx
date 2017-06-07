<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="Apply_cmpy.aspx.cs" Inherits="WebPlacement.Apply_cmpy" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
          <div class="page_top_wrap page_top_title page_top_breadcrumbs" style="background-color:#1eaace;margin-left:50px;">
					<div class="content_wrap" style="height: 88px">
					<h3 class="page_title" >
                    <span style="font-weight:500;color:#ffffff;padding-left:35%;"> Company Application</span>
                    <span style="font-size:28px;"></span>
                    <span style="font-size:20px;"></span> 
                     
                        </h3>
                    </div>
				</div>
    <div style="margin-left:50px;padding-left:25%">
        <br />
        <asp:DataList ID="DataList1" runat="server" DataKeyField="companyid" DataSourceID="SqlDataSource1" RepeatColumns="2" RepeatDirection="Horizontal" OnSelectedIndexChanged="DataList1_SelectedIndexChanged1">
            <ItemTemplate>
                <table class="column-1">
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Company Name:"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="companynameLabel" runat="server" Text='<%# Eval("companyname") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Website:"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="companysiteLabel" runat="server" Text='<%# Eval("companysite") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Phone No:"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="cmpnoLabel" runat="server" Text='<%# Eval("cmpno") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Email Id:"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="cmpemailLabel" runat="server" Text='<%# Eval("cmpemail") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label6" runat="server" Font-Bold="True" Text="Registartion DeadLine:"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="regdeadlineLabel" runat="server" Text='<%# Eval("regdeadline") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label7" runat="server" Font-Bold="True" Text="Drive Date:"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="drivedateLabel" runat="server" Text='<%# Eval("drivedate") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label8" runat="server" Font-Bold="True" Text="Drive Time:"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="drivetimeLabel" runat="server" Text='<%# Eval("drivetime") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label9" runat="server" Font-Bold="True" Text="Venue:"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="venueLabel" runat="server" Text='<%# Eval("venue") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label10" runat="server" Font-Bold="True" Text="PorcessFlow:"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="processflowLabel" runat="server" Text='<%# Eval("processflow") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label11" runat="server" Font-Bold="True" Text="Techinical Skill"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="techincalskillLabel" runat="server" Text='<%# Eval("techincalskill") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Label ID="companyidLabel" runat="server" Text='<%# Eval("companyid") %>' Visible="False" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:LinkButton ID="LinkButton8" runat="server" Font-Bold="True" OnClick="LinkButton8_Click">Apply</asp:LinkButton>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                &nbsp;<br />&nbsp;<br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:placementConnectionString %>" SelectCommand="SELECT companyname, companysite, cmpno, cmpemail, regdeadline, drivedate, drivetime, venue, processflow, techincalskill, companyid FROM company AS c WHERE (companyid NOT IN (SELECT companyid FROM applied_stud))"></asp:SqlDataSource>
    </div>
</asp:Content>
