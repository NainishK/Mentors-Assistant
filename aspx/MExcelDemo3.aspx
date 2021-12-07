<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MExcelDemo3.aspx.cs" Inherits="aspx_ExcelDemo3" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Attendance Reports</title>
    <link rel="stylesheet" type="text/css" href="../files/css/styles.css" />
</head>
<body>
    <form id="form1" runat="server">
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
            <div class="col-3"></div>
            <div class="col-6 text-center display-2">Attendance Report</div>
            <div class="col-3"></div>
        </div><br />
        <br />
         <div class="row">
            <div class="col-4"></div>
            <div class="col-4 text-center display-4 myheading">First Year(FE)</div>
            <div class="col-4"></div>
        </div>
        
        <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource3" Width="800px" Height="500px">
            <Series>
                <asp:Series Name="Month" XValueMember="Month" YValueMembers="AvgAttendance">
                </asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1">
                </asp:ChartArea>
            </ChartAreas>
            <Titles>
                <asp:Title Font="Microsoft Sans Serif, 16.2pt" Name="Title1" Text="SEM-I">
                </asp:Title>
            </Titles>
        </asp:Chart>

        <asp:Chart ID="Chart2" runat="server" Height="500px" Width="800px" DataSourceID="SqlDataSource4">
            <Series>
                <asp:Series Name="Month" XValueMember="Month" YValueMembers="AvgAttendance" Color="255, 128, 0">
                </asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1">
                </asp:ChartArea>
            </ChartAreas>
            <Titles>
                <asp:Title Font="Microsoft Sans Serif, 16.2pt" Name="Title1" Text="SEM-II">
                </asp:Title>
            </Titles>
        </asp:Chart>
        <br /><br />


        <div class="row">
            <div class="col-4"></div>
            <div class="col-4 text-center display-4 myheading">Second Year(SE)</div>
            <div class="col-4"></div>
        </div>
        
        <asp:Chart ID="Chart3" runat="server" DataSourceID="SqlDataSource3" Width="800px" Height="500px">
            <Series>
                <asp:Series Name="Month" XValueMember="Month" YValueMembers="AvgAttendance">
                </asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1">
                </asp:ChartArea>
            </ChartAreas>
            <Titles>
                <asp:Title Font="Microsoft Sans Serif, 16.2pt" Name="Title1" Text="SEM-III">
                </asp:Title>
            </Titles>
        </asp:Chart>

        <asp:Chart ID="Chart4" runat="server" Height="500px" Width="800px" DataSourceID="SqlDataSource4">
            <Series>
                <asp:Series Name="Month" XValueMember="Month" YValueMembers="AvgAttendance" Color="255, 128, 0">
                </asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1">
                </asp:ChartArea>
            </ChartAreas>
            <Titles>
                <asp:Title Font="Microsoft Sans Serif, 16.2pt" Name="Title1" Text="SEM-IV">
                </asp:Title>
            </Titles>
        </asp:Chart>
        <br /><br />

        <div class="row">
            <div class="col-4"></div>
            <div class="col-4 text-center display-4 myheading">Third Year(TE)</div>
            <div class="col-4"></div>
        </div>
        
        <asp:Chart ID="Chart5" runat="server" DataSourceID="SqlDataSource5" Width="800px" Height="500px">
            <Series>
                <asp:Series Name="Month" XValueMember="Month" YValueMembers="AvgAttendance">
                </asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1">
                </asp:ChartArea>
            </ChartAreas>
            <Titles>
                <asp:Title Font="Microsoft Sans Serif, 16.2pt" Name="Title1" Text="SEM-V">
                </asp:Title>
            </Titles>
        </asp:Chart>

        <asp:Chart ID="Chart6" runat="server" Height="500px" Width="800px" DataSourceID="SqlDataSource6">
            <Series>
                <asp:Series Name="Month" XValueMember="Month" YValueMembers="AvgAttendance" Color="255, 128, 0">
                </asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1">
                </asp:ChartArea>
            </ChartAreas>
            <Titles>
                <asp:Title Font="Microsoft Sans Serif, 16.2pt" Name="Title1" Text="SEM-VI">
                </asp:Title>
            </Titles>
        </asp:Chart>
        <br /><br />

        <div class="row">
            <div class="col-4"></div>
            <div class="col-4 text-center display-4 myheading">Final Year(BE)</div>
            <div class="col-4"></div>
        </div>
        
        <asp:Chart ID="Chart7" runat="server" DataSourceID="SqlDataSource7" Width="800px" Height="500px">
            <Series>
                <asp:Series Name="Month" XValueMember="Month" YValueMembers="AvgAttendance">
                </asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1">
                </asp:ChartArea>
            </ChartAreas>
            <Titles>
                <asp:Title Font="Microsoft Sans Serif, 16.2pt" Name="Title1" Text="SEM-VII">
                </asp:Title>
            </Titles>
        </asp:Chart>

        <asp:Chart ID="Chart8" runat="server" Height="500px" Width="800px" DataSourceID="SqlDataSource8">
            <Series>
                <asp:Series Name="Month" XValueMember="Month" YValueMembers="AvgAttendance" Color="255, 128, 0">
                </asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1">
                </asp:ChartArea>
            </ChartAreas>
            <Titles>
                <asp:Title Font="Microsoft Sans Serif, 16.2pt" Name="Title1" Text="SEM-VIII">
                </asp:Title>
            </Titles>
        </asp:Chart>
        <br />
    </div>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="select s.Month, avg(s.Percentage) as AvgAttendance from tblAttendance as s, tblPersonalDetails as p, tblAdmin2 as a where a.Mentor=@email and p.Batch=(select Batch from tblAdmin2 where Mentor=@email) and p.Year=(select Year from tblAdmin2 where Mentor=@email) and p.Email=s.Email and Sem='Sem3' group by Month, Sem;">
        <SelectParameters>
            <asp:SessionParameter Name="email" SessionField="email" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="select s.Month, avg(s.Percentage) as AvgAttendance from tblAttendance as s, tblPersonalDetails as p, tblAdmin2 as a where a.Mentor=@email and p.Batch=(select Batch from tblAdmin2 where Mentor=@email) and p.Year=(select Year from tblAdmin2 where Mentor=@email) and p.Email=s.Email and Sem='Sem4' group by Month, Sem;">
        <SelectParameters>
            <asp:SessionParameter Name="email" SessionField="email" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="select s.Month, avg(s.Percentage) as AvgAttendance from tblAttendance as s, tblPersonalDetails as p, tblAdmin2 as a where a.Mentor=@email and p.Batch=(select Batch from tblAdmin2 where Mentor=@email) and p.Year=(select Year from tblAdmin2 where Mentor=@email) and p.Email=s.Email and Sem='Sem5' group by Month, Sem;">
        <SelectParameters>
            <asp:SessionParameter Name="email" SessionField="email" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="select s.Month, avg(s.Percentage) as AvgAttendance from tblAttendance as s, tblPersonalDetails as p, tblAdmin2 as a where a.Mentor=@email and p.Batch=(select Batch from tblAdmin2 where Mentor=@email) and p.Year=(select Year from tblAdmin2 where Mentor=@email) and p.Email=s.Email and Sem='Sem6' group by Month, Sem;">
        <SelectParameters>
            <asp:SessionParameter Name="email" SessionField="email" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="select s.Month, avg(s.Percentage) as AvgAttendance from tblAttendance as s, tblPersonalDetails as p, tblAdmin2 as a where a.Mentor=@email and p.Batch=(select Batch from tblAdmin2 where Mentor=@email) and p.Year=(select Year from tblAdmin2 where Mentor=@email) and p.Email=s.Email and Sem='Sem7' group by Month, Sem;">
        <SelectParameters>
            <asp:SessionParameter Name="email" SessionField="email" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="select s.Month, avg(s.Percentage) as AvgAttendance from tblAttendance as s, tblPersonalDetails as p, tblAdmin2 as a where a.Mentor=@email and p.Batch=(select Batch from tblAdmin2 where Mentor=@email) and p.Year=(select Year from tblAdmin2 where Mentor=@email) and p.Email=s.Email and Sem='Sem8' group by Month, Sem;">
        <SelectParameters>
            <asp:SessionParameter Name="email" SessionField="email" />
        </SelectParameters>
    </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="select s.Month, avg(s.Percentage) as AvgAttendance from tblAttendance as s, tblPersonalDetails as p, tblAdmin2 as a where a.Mentor=@email and p.Batch=(select Batch from tblAdmin2 where Mentor=@email) and p.Year=(select Year from tblAdmin2 where Mentor=@email) and p.Email=s.Email and Sem='Sem1' group by Month, Sem;">
            <SelectParameters>
                <asp:SessionParameter Name="email" SessionField="email" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource10" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="select s.Month, avg(s.Percentage) as AvgAttendance from tblAttendance as s, tblPersonalDetails as p, tblAdmin2 as a where a.Mentor=@email and p.Batch=(select Batch from tblAdmin2 where Mentor=@email) and p.Year=(select Year from tblAdmin2 where Mentor=@email) and p.Email=s.Email and Sem='Sem2' group by Month, Sem;">
            <SelectParameters>
                <asp:SessionParameter Name="email" SessionField="email" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>

