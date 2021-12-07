<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ExcelDemo3.aspx.cs" Inherits="aspx_ExcelDemo3" %>

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
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Month, avg(Percentage) as AvgAttendance FROM tblAttendance, tblPersonalDetails WHERE Sem='Sem3' AND Class='SE' GROUP BY Month, Sem;"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Month, avg(Percentage) as AvgAttendance FROM tblAttendance, tblPersonalDetails WHERE Sem='Sem4' AND Class='SE' GROUP BY Month, Sem;"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Month, avg(Percentage) as AvgAttendance FROM tblAttendance, tblPersonalDetails WHERE Sem='Sem5' AND Class='TE' GROUP BY Month, Sem;"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Month, avg(Percentage) as AvgAttendance FROM tblAttendance, tblPersonalDetails WHERE Sem='Sem6' AND Class='TE' GROUP BY Month, Sem;"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Month, avg(Percentage) as AvgAttendance FROM tblAttendance, tblPersonalDetails WHERE Sem='Sem7' AND Class='BE' GROUP BY Month, Sem;"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Month, avg(Percentage) as AvgAttendance FROM tblAttendance, tblPersonalDetails WHERE Sem='Sem8' AND Class='BE' GROUP BY Month, Sem;"></asp:SqlDataSource>
</body>
</html>

