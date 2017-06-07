<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Queriesdisplay.aspx.cs" Inherits="WebPlacement.Queriesdisplay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page_top_wrap page_top_title page_top_breadcrumbs" style="background-color:#1eaace;margin-left:50px;">
					<div class="content_wrap" style="height: 88px">
					<h3 class="page_title" >
                    <span style="font-weight:500;color:#ffffff;padding-left:35%;"> Queries Posted</span>
                    <span style="font-size:28px;"></span>
                    <span style="font-size:20px;"></span> </h3>
                    </div>
				</div>
  
  <table >
      <tr>
          <td style="padding-left:35%; right: auto;">
       
        &nbsp;&nbsp;
       
        <asp:DataList ID="DataList1" runat="server" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" RepeatColumns="3">
            <AlternatingItemStyle BackColor="White" />
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <ItemTemplate>
                Name:
                <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                <br />
                Email:
                <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
<br />
                Contact:
                <asp:Label ID="contactLabel" runat="server" Text='<%# Eval("contact") %>' />
                <br />
                Enquiry Title:
                <asp:Label ID="enquirytitleLabel" runat="server" Text='<%# Eval("enquirytitle") %>' />
                <br />
                Description:
                <asp:Label ID="enq_descLabel" runat="server" Text='<%# Eval("enq_desc") %>' />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton11" runat="server" OnClick="LinkButton11_Click">Reply</asp:LinkButton>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        </asp:DataList>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:placementConnectionString %>" SelectCommand="SELECT [name], [email], [contact], [enquirytitle], [enq_desc] FROM [enquiry]"></asp:SqlDataSource>
              </td>
</tr>
    </table>
</asp:Content>
