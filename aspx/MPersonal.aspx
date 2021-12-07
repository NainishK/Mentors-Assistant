<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MPersonal.aspx.cs" Inherits="aspx_MPersonal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Personal Details</title>
   <link rel="stylesheet" type="text/css" href="../files/css/styles.css" />
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark black" style="background-color: #373e49">
        <a class="navbar-brand" href="#"><strong>NR</strong></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <!--<li class="nav-item active">
                    <a class="nav-link" href="AcademicRecords.aspx">EditAcademicDetails<span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#">Link</a>
              </li> 
                <li class="nav-item">
                    <a class="nav-link" href="#">SignOut</a>
                </li>-->
            </ul>
        </div>
    </nav>
    <div class="container-fluid">
              <form id="form1" runat="server">
                    <div>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataSourceID="ExcelDemoDataSrc" ForeColor="Black" GridLines="Vertical" DataKeyNames="Email">
                            <AlternatingRowStyle BackColor="#CCCCCC" />
                            <Columns>
                                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" ReadOnly="True" />
                                <asp:BoundField DataField="Class" HeaderText="Class" SortExpression="Class" />
                                <asp:BoundField DataField="Branch" HeaderText="Branch" SortExpression="Branch" />
                                <asp:BoundField DataField="RollNo" HeaderText="RollNo" SortExpression="RollNo" />
                                <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
                                <asp:BoundField DataField="Surname" HeaderText="Surname" SortExpression="Surname" />
                                <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                                <asp:BoundField DataField="MiddleName" HeaderText="MiddleName" SortExpression="MiddleName" />
                                <asp:BoundField DataField="Father" HeaderText="Father" SortExpression="Father" />
                                <asp:BoundField DataField="Fathers_Occupation" HeaderText="Fathers_Occupation" SortExpression="Fathers_Occupation" />
                                <asp:BoundField DataField="Mother" HeaderText="Mother" SortExpression="Mother" />
                                <asp:BoundField DataField="Mothers_Occupation" HeaderText="Mothers_Occupation" SortExpression="Mothers_Occupation" />
                                <asp:BoundField DataField="DoB" HeaderText="DoB" SortExpression="DoB" />
                                <asp:BoundField DataField="Blood" HeaderText="Blood" SortExpression="Blood" />
                                <asp:BoundField DataField="RegNo" HeaderText="RegNo" SortExpression="RegNo" />
                                <asp:BoundField DataField="Aadhar" HeaderText="Aadhar" SortExpression="Aadhar" />
                                <asp:BoundField DataField="Correspondance_Address" HeaderText="Correspondance_Address" SortExpression="Correspondance_Address" />
                                <asp:BoundField DataField="Permanent_Address" HeaderText="Permanent_Address" SortExpression="Permanent_Address" />
                                <asp:BoundField DataField="Parents_Contact" HeaderText="Parents_Contact" SortExpression="Parents_Contact" />
                                <asp:BoundField DataField="Students_Contact" HeaderText="Students_Contact" SortExpression="Students_Contact" />
                                <asp:BoundField DataField="Health" HeaderText="Health" SortExpression="Health" />
                                <asp:BoundField DataField="Family_Doctor" HeaderText="Family_Doctor" SortExpression="Family_Doctor" />
                                <asp:BoundField DataField="Doctors_Contact" HeaderText="Doctors_Contact" SortExpression="Doctors_Contact" />
                            </Columns>
                            <FooterStyle BackColor="#CCCCCC" />
                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#808080" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#383838" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="ExcelDemoDataSrc" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Email, Class, p.Branch, RollNo, p.Year, Surname, FirstName, MiddleName, Father, FOccupation as Fathers_Occupation, Mother, MOccupation as Mothers_Occupation, DoB, Blood, RegNo, Aadhar, CAddress as Correspondance_Address, PAddress as Permanent_Address, PContact as Parents_Contact, SContact as Students_Contact, Health, DocName as Family_Doctor, DocContact as Doctors_Contact FROM tblPersonalDetails as p, tblAdmin2 as m where p.Year=m.Year and p.Batch=m.Batch and m.Mentor=@email order by RollNo;">
                            <SelectParameters>
                                <asp:SessionParameter Name="email" SessionField="email" />
                            </SelectParameters>
                        </asp:SqlDataSource>

                    </div><br /><br />
                    <asp:Button ID="Button1" class="btn btn-success pull-right btn-lg" runat="server" OnClick="Button1_Click1" Text="Download As Excel File" />
                    <br /><br />
                </form>
            </div>
</body>
</html>
