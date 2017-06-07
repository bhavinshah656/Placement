<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="stud_profile.aspx.cs" Inherits="WebPlacement.stud_profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page_top_wrap page_top_title page_top_breadcrumbs" style="background-color:#1eaace;margin-left:50px;">
					<div class="content_wrap" style="height: 88px">
					<h3 class="page_title" >
                    <span style="font-weight:500;color:#ffffff;padding-left:35%;"> Profile</span>
                    <span style="font-size:28px;"></span>
                    <span style="font-size:20px;"></span> 
                     
                        </h3>
                    </div>
				</div>
    <div style="padding-left:22%;">
        <br />
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="studentid" DataSourceID="SqlDataSource1">
            <EditItemTemplate>
                <table class="column-1">
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Label ID="studentidLabel1" runat="server" Text='<%# Eval("studentid") %>' Visible="False" />
                        </td>
                        <td style="width: 150px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="Student Name:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="studnameTextBox" runat="server" Text='<%# Bind("studname") %>' />
                        </td>
                        <td style="width: 150px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="height: 35px">
                            <asp:Label ID="Label3" runat="server" Text="Phone No:"></asp:Label>
                        </td>
                        <td style="height: 35px">
                            <asp:TextBox ID="phonenoTextBox" runat="server" Text='<%# Bind("phoneno") %>' />
                        </td>
                        <td style="height: 35px; width: 150px"></td>
                        <td style="height: 35px">&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text="Email ID:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="emailidTextBox" runat="server" Text='<%# Bind("emailid") %>' />
                        </td>
                        <td style="width: 150px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label5" runat="server" Text="Birth Date:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="dobTextBox" runat="server" Text='<%# Bind("dob") %>' />
                        </td>
                        <td style="width: 150px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label6" runat="server" Text="Gender:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="genderTextBox" runat="server" Text='<%# Bind("gender") %>' />
                        </td>
                        <td style="width: 150px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label8" runat="server" Text="Age:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="ageTextBox" runat="server" Text='<%# Bind("age") %>' />
                        </td>
                        <td style="width: 150px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label7" runat="server" Text="Address:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="addressTextBox" runat="server" Text='<%# Bind("address") %>' />
                        </td>
                        <td style="width: 150px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label9" runat="server" Text="Course:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="courseTextBox" runat="server" Text='<%# Bind("course") %>' />
                        </td>
                        <td style="width: 150px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:TextBox ID="passwordTextBox" runat="server" Text='<%# Bind("password") %>' Visible="False" />
                        </td>
                        <td style="width: 150px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label10" runat="server" Text="SSC Marks:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="sscmarksTextBox" runat="server" Text='<%# Bind("sscmarks") %>' />
                        </td>
                        <td style="width: 150px">
                            <asp:Label ID="Label11" runat="server" Text="YEAR:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="sscyearTextBox" runat="server" Text='<%# Bind("sscyear") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label12" runat="server" Text="HSC Marks:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="hscmarksTextBox" runat="server" Text='<%# Bind("hscmarks") %>' />
                        </td>
                        <td style="width: 150px">
                            <asp:Label ID="Label13" runat="server" Text="YEAR:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="hscyearTextBox" runat="server" Text='<%# Bind("hscyear") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label14" runat="server" Text="Graduation Marks:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="graduationTextBox" runat="server" Text='<%# Bind("graduation") %>' />
                        </td>
                        <td style="width: 150px">
                            <asp:Label ID="Label18" runat="server" Text="YEAR:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="graduationyrTextBox" runat="server" Text='<%# Bind("graduationyr") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td style="width: 150px">
                            <asp:Label ID="Label16" runat="server" Text="Graduation Course:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="garduationcourseTextBox" runat="server" Text='<%# Bind("garduationcourse") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label17" runat="server" Text="Post Graduation Marks:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="postgraduationTextBox" runat="server" Text='<%# Bind("postgraduation") %>' />
                        </td>
                        <td style="width: 150px">
                            <asp:Label ID="Label15" runat="server" Text="YEAR:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="postgraduationyrTextBox" runat="server" Text='<%# Bind("postgraduationyr") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label19" runat="server" Text="Live Back Lock:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="livebacklockTextBox" runat="server" Text='<%# Bind("livebacklock") %>' />
                        </td>
                        <td style="width: 150px">
                            <asp:Label ID="Label20" runat="server" Text="Dead Back Lock:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="deadbacklockTextBox" runat="server" Text='<%# Bind("deadbacklock") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </td>
                        <td>&nbsp;</td>
                        <td style="width: 150px">&nbsp;</td>
                        <td>
                            <asp:TextBox ID="loginflagTextBox" runat="server" Text='<%# Bind("loginflag") %>' Visible="False" />
                        </td>
                    </tr>
                </table>
                <br />
                <br />
                &nbsp;<br />&nbsp;
            </EditItemTemplate>
            <InsertItemTemplate>
                studname:
                <asp:TextBox ID="studnameTextBox" runat="server" Text='<%# Bind("studname") %>' />
                <br />
                phoneno:
                <asp:TextBox ID="phonenoTextBox" runat="server" Text='<%# Bind("phoneno") %>' />
                <br />
                emailid:
                <asp:TextBox ID="emailidTextBox" runat="server" Text='<%# Bind("emailid") %>' />
                <br />
                dob:
                <asp:TextBox ID="dobTextBox" runat="server" Text='<%# Bind("dob") %>' />
                <br />
                gender:
                <asp:TextBox ID="genderTextBox" runat="server" Text='<%# Bind("gender") %>' />
                <br />
                address:
                <asp:TextBox ID="addressTextBox" runat="server" Text='<%# Bind("address") %>' />
                <br />
                age:
                <asp:TextBox ID="ageTextBox" runat="server" Text='<%# Bind("age") %>' />
                <br />
                course:
                <asp:TextBox ID="courseTextBox" runat="server" Text='<%# Bind("course") %>' />
                <br />
                password:
                <asp:TextBox ID="passwordTextBox" runat="server" Text='<%# Bind("password") %>' />
                <br />
                sscmarks:
                <asp:TextBox ID="sscmarksTextBox" runat="server" Text='<%# Bind("sscmarks") %>' />
                <br />
                sscyear:
                <asp:TextBox ID="sscyearTextBox" runat="server" Text='<%# Bind("sscyear") %>' />
                <br />
                hscmarks:
                <asp:TextBox ID="hscmarksTextBox" runat="server" Text='<%# Bind("hscmarks") %>' />
                <br />
                hscyear:
                <asp:TextBox ID="hscyearTextBox" runat="server" Text='<%# Bind("hscyear") %>' />
                <br />
                graduation:
                <asp:TextBox ID="graduationTextBox" runat="server" Text='<%# Bind("graduation") %>' />
                <br />
                graduationyr:
                <asp:TextBox ID="graduationyrTextBox" runat="server" Text='<%# Bind("graduationyr") %>' />
                <br />
                garduationcourse:
                <asp:TextBox ID="garduationcourseTextBox" runat="server" Text='<%# Bind("garduationcourse") %>' />
                <br />
                postgraduation:
                <asp:TextBox ID="postgraduationTextBox" runat="server" Text='<%# Bind("postgraduation") %>' />
                <br />
                postgraduationyr:
                <asp:TextBox ID="postgraduationyrTextBox" runat="server" Text='<%# Bind("postgraduationyr") %>' />
                <br />
                livebacklock:
                <asp:TextBox ID="livebacklockTextBox" runat="server" Text='<%# Bind("livebacklock") %>' />
                <br />
                deadbacklock:
                <asp:TextBox ID="deadbacklockTextBox" runat="server" Text='<%# Bind("deadbacklock") %>' />
                <br />
                loginflag:
                <asp:TextBox ID="loginflagTextBox" runat="server" Text='<%# Bind("loginflag") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                <table class="column-1" style="width: 134%">
                    <tr>
                        <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label21" runat="server" Font-Bold="True" Text="Pesrsonal Info"></asp:Label>
                        </td>
                        <td style="width: 177px">
                            <asp:Label ID="studentidLabel" runat="server" Text='<%# Eval("studentid") %>' Visible="False" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 274px">
                            <asp:Label ID="Label2" runat="server" Text="Student Name:" Font-Bold="True"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="studnameLabel" runat="server" Text='<%# Bind("studname") %>' />
                        </td>
                        <td style="width: 177px">
                            <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Email ID:"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="emailidLabel" runat="server" Text='<%# Bind("emailid") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 35px; width: 274px;">
                            <asp:Label ID="Label3" runat="server" Text="Phone No:" Font-Bold="True"></asp:Label>
                        </td>
                        <td style="height: 35px">
                            <asp:Label ID="phonenoLabel" runat="server" Text='<%# Bind("phoneno") %>' />
                        </td>
                        <td style="height: 35px; width: 177px;">
                            <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Birth Date:"></asp:Label>
                        </td>
                        <td style="height: 35px">
                            <asp:Label ID="dobLabel" runat="server" Text='<%# Bind("dob") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 274px">
                            <asp:Label ID="Label6" runat="server" Font-Bold="True" Text="Gender:"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="genderLabel" runat="server" Text='<%# Bind("gender") %>' />
                        </td>
                        <td style="width: 177px">
                            <asp:Label ID="Label8" runat="server" Font-Bold="True" Text="Age:"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="ageLabel" runat="server" Text='<%# Bind("age") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 274px">
                            <asp:Label ID="Label7" runat="server" Font-Bold="True" Text="Address:"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="addressLabel" runat="server" Text='<%# Bind("address") %>' />
                        </td>
                        <td style="width: 177px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 274px">
                            <asp:Label ID="Label9" runat="server" Font-Bold="True" Text="Course:"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="courseLabel" runat="server" Text='<%# Bind("course") %>' />
                        </td>
                        <td style="width: 177px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label22" runat="server" Font-Bold="True" Text="Academic Info"></asp:Label>
                        </td>
                        <td style="width: 177px">
                            <asp:Label ID="passwordLabel" runat="server" Text='<%# Bind("password") %>' Visible="False" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 274px">
                            <asp:Label ID="Label10" runat="server" Font-Bold="True" Text="SSC Marks:"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="sscmarksLabel" runat="server" Text='<%# Bind("sscmarks") %>' />
                        </td>
                        <td style="width: 177px">
                            <asp:Label ID="Label11" runat="server" Font-Bold="True" Text="Year:"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="sscyearLabel" runat="server" Text='<%# Bind("sscyear") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 274px">
                            <asp:Label ID="Label12" runat="server" Font-Bold="True" Text="HSC Marks:"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="hscmarksLabel" runat="server" Text='<%# Bind("hscmarks") %>' />
                        </td>
                        <td style="width: 177px">
                            <asp:Label ID="Label13" runat="server" Font-Bold="True" Text="Year:"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="hscyearLabel" runat="server" Text='<%# Bind("hscyear") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 274px">
                            <asp:Label ID="Label14" runat="server" Font-Bold="True" Text="Graduation Marks:"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="graduationLabel" runat="server" Text='<%# Bind("graduation") %>' />
                        </td>
                        <td style="width: 177px">
                            <asp:Label ID="Label18" runat="server" Font-Bold="True" Text="Year:"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="graduationyrLabel" runat="server" Text='<%# Bind("graduationyr") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 274px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td style="width: 177px">
                            <asp:Label ID="Label16" runat="server" Font-Bold="True" Text="Graduation Course:"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="garduationcourseLabel" runat="server" Text='<%# Bind("garduationcourse") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 274px">
                            <asp:Label ID="Label17" runat="server" Font-Bold="True" Text="Post Graduation Marks:"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="postgraduationLabel" runat="server" Text='<%# Bind("postgraduation") %>' />
                        </td>
                        <td style="width: 177px">
                            <asp:Label ID="Label15" runat="server" Font-Bold="True" Text="Year:"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="postgraduationyrLabel" runat="server" Text='<%# Bind("postgraduationyr") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 274px">
                            <asp:Label ID="Label19" runat="server" Font-Bold="True" Text="Live Back Lock:"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="livebacklockLabel" runat="server" Text='<%# Bind("livebacklock") %>' />
                        </td>
                        <td style="width: 177px">
                            <asp:Label ID="Label20" runat="server" Font-Bold="True" Text="Dead Back Lock:"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="deadbacklockLabel" runat="server" Text='<%# Bind("deadbacklock") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 274px">
                            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Update Profile" />
                        </td>
                        <td>&nbsp;</td>
                        <td style="width: 177px">
                            &nbsp;</td>
                        <td>
                            <asp:Label ID="loginflagLabel" runat="server" Text='<%# Bind("loginflag") %>' Visible="False" />
                        </td>
                    </tr>
                </table>
                &nbsp;&nbsp;
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:placementConnectionString %>" DeleteCommand="DELETE FROM [student] WHERE [studentid] = @original_studentid AND (([studname] = @original_studname) OR ([studname] IS NULL AND @original_studname IS NULL)) AND (([phoneno] = @original_phoneno) OR ([phoneno] IS NULL AND @original_phoneno IS NULL)) AND (([emailid] = @original_emailid) OR ([emailid] IS NULL AND @original_emailid IS NULL)) AND (([dob] = @original_dob) OR ([dob] IS NULL AND @original_dob IS NULL)) AND (([gender] = @original_gender) OR ([gender] IS NULL AND @original_gender IS NULL)) AND (([address] = @original_address) OR ([address] IS NULL AND @original_address IS NULL)) AND (([age] = @original_age) OR ([age] IS NULL AND @original_age IS NULL)) AND (([course] = @original_course) OR ([course] IS NULL AND @original_course IS NULL)) AND (([password] = @original_password) OR ([password] IS NULL AND @original_password IS NULL)) AND (([sscmarks] = @original_sscmarks) OR ([sscmarks] IS NULL AND @original_sscmarks IS NULL)) AND (([sscyear] = @original_sscyear) OR ([sscyear] IS NULL AND @original_sscyear IS NULL)) AND (([hscmarks] = @original_hscmarks) OR ([hscmarks] IS NULL AND @original_hscmarks IS NULL)) AND (([hscyear] = @original_hscyear) OR ([hscyear] IS NULL AND @original_hscyear IS NULL)) AND (([graduation] = @original_graduation) OR ([graduation] IS NULL AND @original_graduation IS NULL)) AND (([graduationyr] = @original_graduationyr) OR ([graduationyr] IS NULL AND @original_graduationyr IS NULL)) AND (([garduationcourse] = @original_garduationcourse) OR ([garduationcourse] IS NULL AND @original_garduationcourse IS NULL)) AND (([postgraduation] = @original_postgraduation) OR ([postgraduation] IS NULL AND @original_postgraduation IS NULL)) AND (([postgraduationyr] = @original_postgraduationyr) OR ([postgraduationyr] IS NULL AND @original_postgraduationyr IS NULL)) AND (([livebacklock] = @original_livebacklock) OR ([livebacklock] IS NULL AND @original_livebacklock IS NULL)) AND (([deadbacklock] = @original_deadbacklock) OR ([deadbacklock] IS NULL AND @original_deadbacklock IS NULL)) AND (([loginflag] = @original_loginflag) OR ([loginflag] IS NULL AND @original_loginflag IS NULL))" InsertCommand="INSERT INTO [student] ([studname], [phoneno], [emailid], [dob], [gender], [address], [age], [course], [password], [sscmarks], [sscyear], [hscmarks], [hscyear], [graduation], [graduationyr], [garduationcourse], [postgraduation], [postgraduationyr], [livebacklock], [deadbacklock], [loginflag]) VALUES (@studname, @phoneno, @emailid, @dob, @gender, @address, @age, @course, @password, @sscmarks, @sscyear, @hscmarks, @hscyear, @graduation, @graduationyr, @garduationcourse, @postgraduation, @postgraduationyr, @livebacklock, @deadbacklock, @loginflag)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [student] WHERE ([emailid] = @emailid)" UpdateCommand="UPDATE [student] SET [studname] = @studname, [phoneno] = @phoneno, [emailid] = @emailid, [dob] = @dob, [gender] = @gender, [address] = @address, [age] = @age, [course] = @course, [password] = @password, [sscmarks] = @sscmarks, [sscyear] = @sscyear, [hscmarks] = @hscmarks, [hscyear] = @hscyear, [graduation] = @graduation, [graduationyr] = @graduationyr, [garduationcourse] = @garduationcourse, [postgraduation] = @postgraduation, [postgraduationyr] = @postgraduationyr, [livebacklock] = @livebacklock, [deadbacklock] = @deadbacklock, [loginflag] = @loginflag WHERE [studentid] = @original_studentid AND (([studname] = @original_studname) OR ([studname] IS NULL AND @original_studname IS NULL)) AND (([phoneno] = @original_phoneno) OR ([phoneno] IS NULL AND @original_phoneno IS NULL)) AND (([emailid] = @original_emailid) OR ([emailid] IS NULL AND @original_emailid IS NULL)) AND (([dob] = @original_dob) OR ([dob] IS NULL AND @original_dob IS NULL)) AND (([gender] = @original_gender) OR ([gender] IS NULL AND @original_gender IS NULL)) AND (([address] = @original_address) OR ([address] IS NULL AND @original_address IS NULL)) AND (([age] = @original_age) OR ([age] IS NULL AND @original_age IS NULL)) AND (([course] = @original_course) OR ([course] IS NULL AND @original_course IS NULL)) AND (([password] = @original_password) OR ([password] IS NULL AND @original_password IS NULL)) AND (([sscmarks] = @original_sscmarks) OR ([sscmarks] IS NULL AND @original_sscmarks IS NULL)) AND (([sscyear] = @original_sscyear) OR ([sscyear] IS NULL AND @original_sscyear IS NULL)) AND (([hscmarks] = @original_hscmarks) OR ([hscmarks] IS NULL AND @original_hscmarks IS NULL)) AND (([hscyear] = @original_hscyear) OR ([hscyear] IS NULL AND @original_hscyear IS NULL)) AND (([graduation] = @original_graduation) OR ([graduation] IS NULL AND @original_graduation IS NULL)) AND (([graduationyr] = @original_graduationyr) OR ([graduationyr] IS NULL AND @original_graduationyr IS NULL)) AND (([garduationcourse] = @original_garduationcourse) OR ([garduationcourse] IS NULL AND @original_garduationcourse IS NULL)) AND (([postgraduation] = @original_postgraduation) OR ([postgraduation] IS NULL AND @original_postgraduation IS NULL)) AND (([postgraduationyr] = @original_postgraduationyr) OR ([postgraduationyr] IS NULL AND @original_postgraduationyr IS NULL)) AND (([livebacklock] = @original_livebacklock) OR ([livebacklock] IS NULL AND @original_livebacklock IS NULL)) AND (([deadbacklock] = @original_deadbacklock) OR ([deadbacklock] IS NULL AND @original_deadbacklock IS NULL)) AND (([loginflag] = @original_loginflag) OR ([loginflag] IS NULL AND @original_loginflag IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_studentid" Type="Int32" />
                <asp:Parameter Name="original_studname" Type="String" />
                <asp:Parameter Name="original_phoneno" Type="String" />
                <asp:Parameter Name="original_emailid" Type="String" />
                <asp:Parameter Name="original_dob" Type="String" />
                <asp:Parameter Name="original_gender" Type="String" />
                <asp:Parameter Name="original_address" Type="String" />
                <asp:Parameter Name="original_age" Type="String" />
                <asp:Parameter Name="original_course" Type="String" />
                <asp:Parameter Name="original_password" Type="String" />
                <asp:Parameter Name="original_sscmarks" Type="Double" />
                <asp:Parameter Name="original_sscyear" Type="Int32" />
                <asp:Parameter Name="original_hscmarks" Type="Double" />
                <asp:Parameter Name="original_hscyear" Type="Int32" />
                <asp:Parameter Name="original_graduation" Type="Double" />
                <asp:Parameter Name="original_graduationyr" Type="Int32" />
                <asp:Parameter Name="original_garduationcourse" Type="String" />
                <asp:Parameter Name="original_postgraduation" Type="Double" />
                <asp:Parameter Name="original_postgraduationyr" Type="Int32" />
                <asp:Parameter Name="original_livebacklock" Type="Int32" />
                <asp:Parameter Name="original_deadbacklock" Type="Int32" />
                <asp:Parameter Name="original_loginflag" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="studname" Type="String" />
                <asp:Parameter Name="phoneno" Type="String" />
                <asp:Parameter Name="emailid" Type="String" />
                <asp:Parameter Name="dob" Type="String" />
                <asp:Parameter Name="gender" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="age" Type="String" />
                <asp:Parameter Name="course" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="sscmarks" Type="Double" />
                <asp:Parameter Name="sscyear" Type="Int32" />
                <asp:Parameter Name="hscmarks" Type="Double" />
                <asp:Parameter Name="hscyear" Type="Int32" />
                <asp:Parameter Name="graduation" Type="Double" />
                <asp:Parameter Name="graduationyr" Type="Int32" />
                <asp:Parameter Name="garduationcourse" Type="String" />
                <asp:Parameter Name="postgraduation" Type="Double" />
                <asp:Parameter Name="postgraduationyr" Type="Int32" />
                <asp:Parameter Name="livebacklock" Type="Int32" />
                <asp:Parameter Name="deadbacklock" Type="Int32" />
                <asp:Parameter Name="loginflag" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="emailid" SessionField="emailid" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="studname" Type="String" />
                <asp:Parameter Name="phoneno" Type="String" />
                <asp:Parameter Name="emailid" Type="String" />
                <asp:Parameter Name="dob" Type="String" />
                <asp:Parameter Name="gender" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="age" Type="String" />
                <asp:Parameter Name="course" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="sscmarks" Type="Double" />
                <asp:Parameter Name="sscyear" Type="Int32" />
                <asp:Parameter Name="hscmarks" Type="Double" />
                <asp:Parameter Name="hscyear" Type="Int32" />
                <asp:Parameter Name="graduation" Type="Double" />
                <asp:Parameter Name="graduationyr" Type="Int32" />
                <asp:Parameter Name="garduationcourse" Type="String" />
                <asp:Parameter Name="postgraduation" Type="Double" />
                <asp:Parameter Name="postgraduationyr" Type="Int32" />
                <asp:Parameter Name="livebacklock" Type="Int32" />
                <asp:Parameter Name="deadbacklock" Type="Int32" />
                <asp:Parameter Name="loginflag" Type="String" />
                <asp:Parameter Name="original_studentid" Type="Int32" />
                <asp:Parameter Name="original_studname" Type="String" />
                <asp:Parameter Name="original_phoneno" Type="String" />
                <asp:Parameter Name="original_emailid" Type="String" />
                <asp:Parameter Name="original_dob" Type="String" />
                <asp:Parameter Name="original_gender" Type="String" />
                <asp:Parameter Name="original_address" Type="String" />
                <asp:Parameter Name="original_age" Type="String" />
                <asp:Parameter Name="original_course" Type="String" />
                <asp:Parameter Name="original_password" Type="String" />
                <asp:Parameter Name="original_sscmarks" Type="Double" />
                <asp:Parameter Name="original_sscyear" Type="Int32" />
                <asp:Parameter Name="original_hscmarks" Type="Double" />
                <asp:Parameter Name="original_hscyear" Type="Int32" />
                <asp:Parameter Name="original_graduation" Type="Double" />
                <asp:Parameter Name="original_graduationyr" Type="Int32" />
                <asp:Parameter Name="original_garduationcourse" Type="String" />
                <asp:Parameter Name="original_postgraduation" Type="Double" />
                <asp:Parameter Name="original_postgraduationyr" Type="Int32" />
                <asp:Parameter Name="original_livebacklock" Type="Int32" />
                <asp:Parameter Name="original_deadbacklock" Type="Int32" />
                <asp:Parameter Name="original_loginflag" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />

    </div>
</asp:Content>
