<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Queries.aspx.cs" Inherits="WebPlacement.Queries" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <link href="css/ValidationEngine.css" rel="stylesheet" />
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript" src="http://cdn.ucb.org.br/Scripts/formValidator/js/languages/jquery.validationEngine-en.js"
        charset="utf-8"></script>
    <script type="text/javascript" src="http://cdn.ucb.org.br/Scripts/formValidator/js/jquery.validationEngine.js"
        charset="utf-8"></script>
    <script type="text/javascript">
        $(function () {
            $("#form1").validationEngine('attach', { promptPosition: "Right" });
        });
    </script>
    <script type="text/javascript">
        function DateFormat(field, rules, i, options) {
            var regex = /^(0?[1-9]|[12][0-9]|3[01])[\/\-](0?[1-9]|1[012])[\/\-]\d{4}$/;
            if (!regex.test(field.val())) {
                return "Please enter date in dd/MM/yyyy format."
            }
        }
    </script>
    <div class="page_top_wrap page_top_title page_top_breadcrumbs" style="background-color:#1eaace;margin-left:50px;">
					<div class="content_wrap" style="height: 88px">
					<h3 class="page_title" >
                    <span style="font-weight:500; padding-left:45%; color:#ffffff;"> Query</span>
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
                        <td align="right"style="width: 482px">Name :-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                        <td>
                            <asp:TextBox ID="txtname" runat="server" BackColor="Silver" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px" Width="272px" CssClass="validate[required]"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 482px">Email id :-&nbsp;&nbsp;&nbsp;&nbsp; </td>
                        <td>
                            <asp:TextBox ID="txtemail" runat="server" BackColor="Silver" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px" Width="272px" CssClass="validate[required,custom[email]]"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 482px">Contact No :-&nbsp;&nbsp;&nbsp;&nbsp; </td>
                        <td>
                            <asp:TextBox ID="txtcontact" runat="server" BackColor="Silver" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px" Width="272px" CssClass="validate[required,custom[integer],maxSize[10],minSize[10]]" ></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 482px">&nbsp;Query title:-&nbsp;&nbsp;&nbsp;&nbsp; </td>
                        <td>
                            <asp:TextBox ID="txttitle" runat="server" BackColor="Silver" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="35px" Width="272px" CssClass="validate[required]"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 482px">&nbsp;&nbsp; Query :-</td>
                        <td>
                            <asp:TextBox ID="txtquery" runat="server" BackColor="Silver" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="121px" TextMode="MultiLine" Width="354px" CssClass="validate[required]"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 482px">&nbsp;</td>
                        <td>
                            <asp:Button ID="Button3" runat="server" Height="52px" Text="Submit" Width="177px" OnClick="Button3_Click" />
                        &nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 482px">&nbsp;</td>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblmsg" runat="server" Text="Label" Visible="False"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
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
