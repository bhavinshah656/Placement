<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="PlacedStudent.aspx.cs" Inherits="WebPlacement.PlacedStudent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page_top_wrap page_top_title page_top_breadcrumbs" style="background-color:#1eaace;margin-left:50px;">
					<div class="content_wrap" style="height: 88px">
					<h3 class="page_title" >
                    <span style="font-weight:500;color:#ffffff;padding-left:35%;">Placed Student</span>
                    <span style="font-size:28px;"></span>
                    <span style="font-size:20px;"></span> </h3>
                    </div>
				</div>
            <table style="height: 37px; width: 1485px;padding-left:20%">
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
                        <asp:DropDownList ID="DropDownList1" runat="server" Width="121px"></asp:DropDownList>&nbsp;<asp:Button ID="Button1" runat="server" Text="Result" OnClick="Button1_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="studentid" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
                             <AlternatingRowStyle BackColor="White" />
                             <Columns>
                                 <asp:BoundField DataField="studentid" HeaderText="Student Id" InsertVisible="False" ReadOnly="True" SortExpression="studentid" />
                                 <asp:BoundField DataField="studname" HeaderText="Student Name" SortExpression="studname" />
                                 <asp:BoundField DataField="phoneno" HeaderText="Phone No" SortExpression="phoneno" />
                                 <asp:BoundField DataField="emailid" HeaderText="Email Id" SortExpression="emailid" />
                                 <asp:BoundField DataField="course" HeaderText="Course" SortExpression="course" />
                                 <asp:BoundField DataField="sscmarks" HeaderText="SSC Marks" SortExpression="sscmarks" />
                                 <asp:BoundField DataField="hscmarks" HeaderText="HSC Marks" SortExpression="hscmarks" />
                                 <asp:BoundField DataField="graduation" HeaderText="Graduation Marks" SortExpression="graduation" />
                                 <asp:BoundField DataField="postgraduation" HeaderText="Post Graduation Marks" SortExpression="postgraduation" />
                             </Columns>
                             
                             <FooterStyle BackColor="#CCCC99" />
                             <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                             <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                             <RowStyle BackColor="#F7F7DE" />
                             <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                             <SortedAscendingCellStyle BackColor="#FBFBF2" />
                             <SortedAscendingHeaderStyle BackColor="#848384" />
                             <SortedDescendingCellStyle BackColor="#EAEAD3" />
                             <SortedDescendingHeaderStyle BackColor="#575357" />
                             
                        </asp:GridView>
                         <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Download " />
                    </td>
                </tr>
                

            </table>
</asp:Content>
