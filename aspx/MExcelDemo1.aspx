<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MExcelDemo1.aspx.cs" Inherits="aspx_ExcelDemo1" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Sessional Reports</title>
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
        <div class="row">
            <div class="col-3"></div>
            <div class="col-6 text-center display-2">Sessional Report</div>
            <div class="col-3"></div>
        </div>
        <br />
        <div class="row">
            <div class="col-4"></div>
            <div class="col-4 text-center display-4 myheading">First Year(FE)</div>
            <div class="col-4"></div>
        </div>
        <form id="form2" runat="server">
            <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource6" Height="500px" Width="800px">
                <Series>
                    <asp:Series Legend="Average Marks" Name="Test1" XValueMember="Subject" YValueMembers="Test1Avg">
                    </asp:Series>
                    <asp:Series ChartArea="ChartArea1" Legend="Average Marks" Name="Test2" XValueMember="Subject" YValueMembers="Test2Avg">
                    </asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1">
                    </asp:ChartArea>
                </ChartAreas>
                <Legends>
                    <asp:Legend Name="Average Marks" Title="Average Marks">
                    </asp:Legend>
                </Legends>
                <Titles>
                    <asp:Title Font="Microsoft Sans Serif, 16.2pt" Name="Title1" Text="SEM-I">
                    </asp:Title>
                </Titles>
            </asp:Chart>
            <asp:Chart ID="Chart2" runat="server" DataSourceID="SqlDataSource7" Height="500px" Width="800px">
                <Series>
                    <asp:Series Legend="Average Marks" Name="Test1" XValueMember="Subject" YValueMembers="Test1Avg">
                    </asp:Series>
                    <asp:Series ChartArea="ChartArea1" Legend="Average Marks" Name="Test2" XValueMember="Subject" YValueMembers="Test2Avg">
                    </asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1">
                    </asp:ChartArea>
                </ChartAreas>
                <Legends>
                    <asp:Legend Name="Average Marks" Title="Average Marks">
                    </asp:Legend>
                </Legends>
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
            <asp:Chart ID="Chart3" runat="server" DataSourceID="ExcelDemo1DataSrc" Height="500px" Width="800px">
                <Series>
                    <asp:Series Legend="Average Marks" Name="Test1" XValueMember="Subject" YValueMembers="Test1Avg">
                    </asp:Series>
                    <asp:Series ChartArea="ChartArea1" Legend="Average Marks" Name="Test2" XValueMember="Subject" YValueMembers="Test2Avg">
                    </asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1">
                    </asp:ChartArea>
                </ChartAreas>
                <Legends>
                    <asp:Legend Name="Average Marks" Title="Average Marks">
                    </asp:Legend>
                </Legends>
                <Titles>
                    <asp:Title Font="Microsoft Sans Serif, 16.2pt" Name="Title1" Text="SEM-III">
                    </asp:Title>
                </Titles>
            </asp:Chart>
            <asp:Chart ID="Chart4" runat="server" DataSourceID="SqlDataSource1" Height="500px" Width="800px">
                <Series>
                    <asp:Series Legend="Average Marks" Name="Test1" XValueMember="Subject" YValueMembers="Test1Avg">
                    </asp:Series>
                    <asp:Series ChartArea="ChartArea1" Legend="Average Marks" Name="Test2" XValueMember="Subject" YValueMembers="Test2Avg">
                    </asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1">
                    </asp:ChartArea>
                </ChartAreas>
                <Legends>
                    <asp:Legend Name="Average Marks" Title="Average Marks">
                    </asp:Legend>
                </Legends>
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
            <div>

                <asp:Chart ID="Chart5" runat="server" DataSourceID="SqlDataSource2" Height="500px" Width="800px">
                    <Series>
                        <asp:Series Legend="Average Marks" Name="Test1" XValueMember="Subject" YValueMembers="Test1Avg">
                        </asp:Series>
                        <asp:Series ChartArea="ChartArea1" Legend="Average Marks" Name="Test2" XValueMember="Subject" YValueMembers="Test2Avg">
                        </asp:Series>
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1">
                        </asp:ChartArea>
                    </ChartAreas>
                    <Legends>
                        <asp:Legend Name="Average Marks" Title="Average Marks">
                        </asp:Legend>
                    </Legends>
                    <Titles>
                        <asp:Title Font="Microsoft Sans Serif, 16.2pt" Name="Title1" Text="SEM-V">
                        </asp:Title>
                    </Titles>
                </asp:Chart>
                <asp:Chart ID="Chart6" runat="server" DataSourceID="SqlDataSource3" Height="500px" Width="800px">
                    <Series>
                        <asp:Series Legend="Average Marks" Name="Test1" XValueMember="Subject" YValueMembers="Test1Avg">
                        </asp:Series>
                        <asp:Series ChartArea="ChartArea1" Legend="Average Marks" Name="Test2" XValueMember="Subject" YValueMembers="Test2Avg">
                        </asp:Series>
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1">
                        </asp:ChartArea>
                    </ChartAreas>
                    <Legends>
                        <asp:Legend Name="Average Marks" Title="Average Marks">
                        </asp:Legend>
                    </Legends>
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
                <asp:Chart ID="Chart7" runat="server" DataSourceID="SqlDataSource4" Height="500px" Width="800px">
                    <Series>
                        <asp:Series Legend="Average Marks" Name="Test1" XValueMember="Subject" YValueMembers="Test1Avg">
                        </asp:Series>
                        <asp:Series ChartArea="ChartArea1" Legend="Average Marks" Name="Test2" XValueMember="Subject" YValueMembers="Test2Avg">
                        </asp:Series>
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1">
                        </asp:ChartArea>
                    </ChartAreas>
                    <Legends>
                        <asp:Legend Name="Average Marks" Title="Average Marks">
                        </asp:Legend>
                    </Legends>
                    <Titles>
                        <asp:Title Font="Microsoft Sans Serif, 16.2pt" Name="Title1" Text="SEM-VII">
                        </asp:Title>
                    </Titles>
                </asp:Chart>
                <asp:Chart ID="Chart8" runat="server" DataSourceID="SqlDataSource5" Height="500px" Width="800px">
                    <Series>
                        <asp:Series Legend="Average Marks" Name="Test1" XValueMember="Subject" YValueMembers="Test1Avg">
                        </asp:Series>
                        <asp:Series ChartArea="ChartArea1" Legend="Average Marks" Name="Test2" XValueMember="Subject" YValueMembers="Test2Avg">
                        </asp:Series>
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1">
                        </asp:ChartArea>
                    </ChartAreas>
                    <Legends>
                        <asp:Legend Name="Average Marks" Title="Average Marks">
                        </asp:Legend>
                    </Legends>
                    <Titles>
                        <asp:Title Font="Microsoft Sans Serif, 16.2pt" Name="Title1" Text="SEM-VIII">
                        </asp:Title>
                    </Titles>
                </asp:Chart>

                <asp:SqlDataSource ID="ExcelDemo1DataSrc" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="select s.Subject, avg(s.Test1) as Test1Avg, avg(s.Test2) as Test2Avg from tblSessional as s, tblPersonalDetails as p, tblAdmin2 as a where a.Mentor=@email and p.Batch=(select Batch from tblAdmin2 where Mentor=@email) and p.Year=(select Year from tblAdmin2 where Mentor=@email) and p.Email=s.Email and s.Sem='Sem3' group by Subject;">
                    <SelectParameters>
                        <asp:SessionParameter Name="email" SessionField="email" />
                    </SelectParameters>
                </asp:SqlDataSource>

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="select s.Subject, avg(s.Test1) as Test1Avg, avg(s.Test2) as Test2Avg from tblSessional as s, tblPersonalDetails as p, tblAdmin2 as a where a.Mentor=@email and p.Batch=(select Batch from tblAdmin2 where Mentor=@email) and p.Year=(select Year from tblAdmin2 where Mentor=@email) and p.Email=s.Email and s.Sem='Sem4' group by Subject;">
                    <SelectParameters>
                        <asp:SessionParameter Name="email" SessionField="email" />
                    </SelectParameters>
                </asp:SqlDataSource>

            </div>
        </form>


    </div>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="select s.Subject, avg(s.Test1) as Test1Avg, avg(s.Test2) as Test2Avg from tblSessional as s, tblPersonalDetails as p, tblAdmin2 as a where a.Mentor=@email and p.Batch=(select Batch from tblAdmin2 where Mentor=@email) and p.Year=(select Year from tblAdmin2 where Mentor=@email) and p.Email=s.Email and s.Sem='Sem5' group by Subject;">
        <SelectParameters>
            <asp:SessionParameter Name="email" SessionField="email" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="select s.Subject, avg(s.Test1) as Test1Avg, avg(s.Test2) as Test2Avg from tblSessional as s, tblPersonalDetails as p, tblAdmin2 as a where a.Mentor=@email and p.Batch=(select Batch from tblAdmin2 where Mentor=@email) and p.Year=(select Year from tblAdmin2 where Mentor=@email) and p.Email=s.Email and s.Sem='Sem6' group by Subject;">
        <SelectParameters>
            <asp:SessionParameter Name="email" SessionField="email" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="select s.Subject, avg(s.Test1) as Test1Avg, avg(s.Test2) as Test2Avg from tblSessional as s, tblPersonalDetails as p, tblAdmin2 as a where a.Mentor=@email and p.Batch=(select Batch from tblAdmin2 where Mentor=@email) and p.Year=(select Year from tblAdmin2 where Mentor=@email) and p.Email=s.Email and s.Sem='Sem7' group by Subject;">
        <SelectParameters>
            <asp:SessionParameter Name="email" SessionField="email" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="select s.Subject, avg(s.Test1) as Test1Avg, avg(s.Test2) as Test2Avg from tblSessional as s, tblPersonalDetails as p, tblAdmin2 as a where a.Mentor=@email and p.Batch=(select Batch from tblAdmin2 where Mentor=@email) and p.Year=(select Year from tblAdmin2 where Mentor=@email) and p.Email=s.Email and s.Sem='Sem8' group by Subject;">
        <SelectParameters>
            <asp:SessionParameter Name="email" SessionField="email" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="select s.Subject, avg(s.Test1) as Test1Avg, avg(s.Test2) as Test2Avg from tblSessional as s, tblPersonalDetails as p, tblAdmin2 as a where a.Mentor=@email and p.Batch=(select Batch from tblAdmin2 where Mentor=@email) and p.Year=(select Year from tblAdmin2 where Mentor=@email) and p.Email=s.Email and s.Sem='Sem1' group by Subject;">
        <SelectParameters>
            <asp:SessionParameter Name="email" SessionField="email" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="select s.Subject, avg(s.Test1) as Test1Avg, avg(s.Test2) as Test2Avg from tblSessional as s, tblPersonalDetails as p, tblAdmin2 as a where a.Mentor=@email and p.Batch=(select Batch from tblAdmin2 where Mentor=@email) and p.Year=(select Year from tblAdmin2 where Mentor=@email) and p.Email=s.Email and s.Sem='Sem2' group by Subject;">
        <SelectParameters>
            <asp:SessionParameter Name="email" SessionField="email" />
        </SelectParameters>
    </asp:SqlDataSource>
</body>
</html>
