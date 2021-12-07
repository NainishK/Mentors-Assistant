<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MExcelDemo2.aspx.cs" Inherits="aspx_ExcelDemo2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Attendance</title>
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
                <!-- <li class="nav-item active">
                    <a class="nav-link" href="AcademicRecords.aspx">EditAcademicDetails<span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#">Link</a>
              </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">SignOut</a>
                </li> -->
            </ul>
        </div>
    </nav>
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-4"></div>
            <div class="col-sm-4" style="background: linear-gradient(to right, #b51a0c, #61045f);">
                <div class="row">
                    <div class=" text-center display-4">Attendance Report</div>
                </div>
                <br />
                <form id="form1" runat="server">
                    <div>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataSourceID="ExcelDemoDataSrc" ForeColor="Black" GridLines="Vertical">
                            <AlternatingRowStyle BackColor="#CCCCCC" />
                            <Columns>
                                <asp:BoundField DataField="Surname" HeaderText="Surname" SortExpression="Surname" />
                                <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                                <asp:BoundField DataField="MiddleName" HeaderText="MiddleName" SortExpression="MiddleName" />
                                <asp:BoundField DataField="Sem" HeaderText="Sem" SortExpression="Sem" />
                                <asp:BoundField DataField="Month" HeaderText="Month" SortExpression="Month" />
                                <asp:BoundField DataField="Percentage" HeaderText="Percentage" SortExpression="Percentage" />
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
                        <asp:SqlDataSource ID="ExcelDemoDataSrc" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="select p.Surname, p.FirstName, p.MiddleName, s.Sem, s.Month, s.Percentage from tblAttendance as s, tblPersonalDetails as p, tblAdmin2 as a where a.Mentor=@email and p.Batch=(select Batch from tblAdmin2 where Mentor=@email) and p.Year=(select Year from tblAdmin2 where Mentor=@email) and p.Email=s.Email order by p.Surname, s.Sem;">
                            <SelectParameters>
                                <asp:SessionParameter Name="email" SessionField="email" />
                            </SelectParameters>
                        </asp:SqlDataSource>

                    </div>
                    <br />
                    <br />
                    <asp:Button ID="Button1" class="btn btn-success pull-right btn-lg" runat="server" OnClick="Button1_Click1" Text="Download As Excel File" />
                    <asp:Button ID="Button2" class="btn btn-info pull-right btn-lg" runat="server" Text="View Report" OnClick="Button2_Click" /><br />
                    <br />
                </form>
            </div>
        </div>
    </div>
</body>
</html>
