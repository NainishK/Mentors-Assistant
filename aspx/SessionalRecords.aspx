<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SessionalRecords.aspx.cs" Inherits="aspx_SessionalRecords" %>

<!doctype html>
<html lang="en">
<head runat="server">
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta id="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Sessional Records</title>
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
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">Records
                        </a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="PersonalDetails.aspx">Personal</a>
                            <a class="dropdown-item" href="AcademicRecords.aspx">Academic</a>
                            <a class="dropdown-item" href="AttendanceRecords.aspx">Attendance</a>
                            <a class="dropdown-item" href="#">Sessional</a>
                            <a class="dropdown-item" href="CurricularActivities.aspx">Activities</a>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="ViewSessionalRecords.aspx">ViewSessionalRecords</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="SignOut.aspx">Sign Out</a>
                    </li>
                </ul>
            </div>
        </nav>
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-8" style="background: linear-gradient(to right, #b51a0c, #61045f);">
                    <h1 class="display-4">Sessional Records</h1>
                    <ul class="nav nav-tabs" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active mynav" data-toggle="tab" href="#fe">FE</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link mynav" data-toggle="tab" href="#se">SE</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link mynav" data-toggle="tab" href="#te">TE</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link mynav" data-toggle="tab" href="#be">BE</a>
                        </li>
                    </ul>

                    <!-- Tab panes -->
                    <div class="tab-content">
                        <div id="fe" class="container tab-pane active">
                            <br>
                            <h3 class="text-center">Sem-I</h3>
                            <table class="table table-dark table-hover text-centered" style="text-align: center; color: white; background-color: #414047; font-size: larger;">
                                <thead style="background-color: #2d2c2d;">
                                    <tr>
                                        <th style="width: 10%" rowspan="2">Sr.No.</th>
                                        <th style="width: 45%" rowspan="2">Subject</th>
                                        <th style="width: 45%" colspan="2">Marks Obtained</th>
                                    </tr>
                                    <tr>
                                        <td>Test-1</td>
                                        <td>Test-2</td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1)</td>
                                        <td>
                                            <input type="text" name="sub11" class="form-control input-sm" value="Applied Mathematics-I" placeholder="Applied Mathematics-I" readonly="readonly"></td>
                                        <td>
                                            <input type="number" name="sub11test1" class="form-control input-sm" max="20" min="0" autofocus></td>
                                        <td>
                                            <input type="number" name="sub11test2" class="form-control input-sm" max="20" min="0"></td>
                                    </tr>
                                    <tr>
                                        <td>2)</td>
                                        <td>
                                            <input type="text" name="sub12" class="form-control input-sm" value="Applied Physics-I" placeholder="Applied Physics-I" readonly="readonly"></td>
                                        <td>
                                            <input type="number" name="sub12test1" class="form-control input-sm" max="20" min="0"></td>
                                        <td>
                                            <input type="number" name="sub12test2" class="form-control input-sm" max="20" min="0"></td>
                                    </tr>
                                    <tr>
                                        <td>3)</td>
                                        <td>
                                            <input type="text" name="sub13" class="form-control input-sm" value="Applied Chemistry-I" placeholder="Applied Chemistry-I" readonly="readonly"></td>
                                        <td>
                                            <input type="number" name="sub13test1" class="form-control input-sm" max="20" min="0"></td>
                                        <td>
                                            <input type="number" name="sub13test2" class="form-control input-sm" max="20" min="0"></td>
                                    </tr>
                                    <tr>
                                        <td>4)</td>
                                        <td>
                                            <input type="text" name="sub14" class="form-control input-sm" value="Engineering Mechanics" placeholder="Engineering Mechanics" readonly="readonly"></td>
                                        <td>
                                            <input type="number" name="sub14test1" class="form-control input-sm" max="20" min="0"></td>
                                        <td>
                                            <input type="number" name="sub14test2" class="form-control input-sm" max="20" min="0"></td>
                                    </tr>
                                    <tr>
                                        <td>5)</td>
                                        <td>
                                            <input type="text" name="sub15" class="form-control input-sm" value="Basic Electrical Engineering" placeholder="Basic Electrical Engineering" readonly="readonly"></td>
                                        <td>
                                            <input type="number" name="sub15test1" class="form-control input-sm" max="20" min="0"></td>
                                        <td>
                                            <input type="number" name="sub15test2" class="form-control input-sm" max="20" min="0"></td>
                                    </tr>
                                    <tr>
                                        <td>6)</td>
                                        <td>
                                            <input type="text" name="sub16" class="form-control input-sm" value="Environmental Studies" placeholder="Environmental Studies" readonly="readonly"></td>
                                        <td>
                                            <input type="number" name="sub16test1" class="form-control input-sm" max="20" min="0"></td>
                                        <td>
                                            <input type="number" name="sub16test2" class="form-control input-sm" max="20" min="0"></td>
                                    </tr>
                                </tbody>
                            </table>
                            <h3 class="text-center">Sem-II</h3>
                            <table class="table table-dark table-hover text-centered" style="text-align: center; color: white; background-color: #414047; font-size: larger;">
                                <thead style="background-color: #2d2c2d;">
                                    <tr>
                                        <th style="width: 10%" rowspan="2">Sr.No.</th>
                                        <th style="width: 45%" rowspan="2">Subject</th>
                                        <th style="width: 45%" colspan="2">Marks Obtained</th>
                                    </tr>
                                    <tr>
                                        <td>Test-1</td>
                                        <td>Test-2</td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1)</td>
                                        <td>
                                            <input type="text" name="sub21" class="form-control input-sm" value="Applied Mathematics-II" placeholder="Applied Mathematics-II" readonly="readonly"></td>
                                        <td>
                                            <input type="number" name="sub21test1" class="form-control input-sm" max="20" min="0"></td>
                                        <td>
                                            <input type="number" name="sub21test2" class="form-control input-sm" max="20" min="0"></td>
                                    </tr>
                                    <tr>
                                        <td>2)</td>
                                        <td>
                                            <input type="text" name="sub22" class="form-control input-sm" value="Applied Physics-II" placeholder="Applied Physics-II" readonly="readonly"></td>
                                        <td>
                                            <input type="number" name="sub22test1" class="form-control input-sm" max="20" min="0"></td>
                                        <td>
                                            <input type="number" name="sub22test2" class="form-control input-sm" max="20" min="0"></td>
                                    </tr>
                                    <tr>
                                        <td>3)</td>
                                        <td>
                                            <input type="text" name="sub23" class="form-control input-sm" value="Applied Chemistry-II" placeholder="Applied Chemistry-II" readonly="readonly"></td>
                                        <td>
                                            <input type="number" name="sub23test1" class="form-control input-sm" max="20" min="0"></td>
                                        <td>
                                            <input type="number" name="sub23test2" class="form-control input-sm" max="20" min="0"></td>
                                    </tr>
                                    <tr>
                                        <td>4)</td>
                                        <td>
                                            <input type="text" name="sub24" class="form-control input-sm" value="Engineering Drawing" placeholder="Engineering Drawing" readonly="readonly"></td>
                                        <td>
                                            <input type="number" name="sub24test1" class="form-control input-sm" max="20" min="0"></td>
                                        <td>
                                            <input type="number" name="sub24test2" class="form-control input-sm" max="20" min="0"></td>
                                    </tr>
                                    <tr>
                                        <td>5)</td>
                                        <td>
                                            <input type="text" name="sub25" class="form-control input-sm" value="Structured Programming Approach" placeholder="Structured Programming Approach" readonly="readonly"></td>
                                        <td>
                                            <input type="number" name="sub25test1" class="form-control input-sm" max="20" min="0"></td>
                                        <td>
                                            <input type="number" name="sub25test2" class="form-control input-sm" max="20" min="0"></td>
                                    </tr>
                                    <tr>
                                        <td>6)</td>
                                        <td>
                                            <input type="text" name="sub26" class="form-control input-sm" value="Communication Skills" placeholder="Communication Skills" readonly="readonly"></td>
                                        <td>
                                            <input type="number" name="sub26test1" class="form-control input-sm" max="20" min="0"></td>
                                        <td>
                                            <input type="number" name="sub26test2" class="form-control input-sm" max="20" min="0"></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div id="se" class="container tab-pane fade">
                            <br>
                            <h3 class="text-center">Sem-III</h3>
                            <table class="table table-dark table-hover text-centered" style="text-align: center; color: white; background-color: #414047; font-size: larger;">
                                <thead style="background-color: #2d2c2d;">
                                    <tr>
                                        <th style="width: 10%" rowspan="2">Sr.No.</th>
                                        <th style="width: 45%" rowspan="2">Subject</th>
                                        <th style="width: 45%" colspan="2">Marks Obtained</th>
                                    </tr>
                                    <tr>
                                        <td>Test-1</td>
                                        <td>Test-2</td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1)</td>
                                        <td>
                                            <input type="text" name="sub31" class="form-control input-sm" value="Applied Mathematics-III" placeholder="Applied Mathematics-III" readonly="readonly"></td>
                                        <td>
                                            <input type="number" name="sub31test1" class="form-control input-sm" max="20" min="0" autofocus></td>
                                        <td>
                                            <input type="number" name="sub31test2" class="form-control input-sm" max="20" min="0"></td>
                                    </tr>
                                    <tr>
                                        <td>2)</td>
                                        <td>
                                            <input type="text" name="sub32" class="form-control input-sm" value="Data Structures & Algorithm Analysis" placeholder="Data Structures & Algorithm Analysis" readonly="readonly"></td>
                                        <td>
                                            <input type="number" name="sub32test1" class="form-control input-sm" max="20" min="0"></td>
                                        <td>
                                            <input type="number" name="sub32test2" class="form-control input-sm" max="20" min="0"></td>
                                    </tr>
                                    <tr>
                                        <td>3)</td>
                                        <td>
                                            <input type="text" name="sub33" class="form-control input-sm" value="Analog & Digital Circuits" placeholder="Analog & Digital Circuits" readonly="readonly"></td>
                                        <td>
                                            <input type="number" name="sub33test1" class="form-control input-sm" max="20" min="0"></td>
                                        <td>
                                            <input type="number" name="sub33test2" class="form-control input-sm" max="20" min="0"></td>
                                    </tr>
                                    <tr>
                                        <td>4)</td>
                                        <td>
                                            <input type="text" name="sub34" class="form-control input-sm" value="Object Oriented Programming Methodology" placeholder="Object Oriented Programming Methodology" readonly="readonly"></td>
                                        <td>
                                            <input type="number" name="sub34test1" class="form-control input-sm" max="20" min="0"></td>
                                        <td>
                                            <input type="number" name="sub34test2" class="form-control input-sm" max="20" min="0"></td>
                                    </tr>
                                    <tr>
                                        <td>5)</td>
                                        <td>
                                            <input type="text" name="sub35" class="form-control input-sm" value="Principles of Analog & Digital Communication" placeholder="Principles of Analog & Digital Communication" readonly="readonly"></td>
                                        <td>
                                            <input type="number" name="sub35test1" class="form-control input-sm" max="20" min="0"></td>
                                        <td>
                                            <input type="number" name="sub35test2" class="form-control input-sm" max="20" min="0"></td>
                                    </tr>
                                    <tr>
                                        <td>6)</td>
                                        <td>
                                            <input type="text" name="sub36" class="form-control input-sm" value="Database Management Systems" placeholder="Database Management Systems" readonly="readonly"></td>
                                        <td>
                                            <input type="number" name="sub36test1" class="form-control input-sm" max="20" min="0"></td>
                                        <td>
                                            <input type="number" name="sub36test2" class="form-control input-sm" max="20" min="0"></td>
                                    </tr>
                                </tbody>
                            </table>
                            <h3 class="text-center">Sem-IV</h3>
                            <table class="table table-dark table-hover text-centered" style="text-align: center; color: white; background-color: #414047; font-size: larger;">
                                <thead style="background-color: #2d2c2d;">
                                    <tr>
                                        <th style="width: 10%" rowspan="2">Sr.No.</th>
                                        <th style="width: 45%" rowspan="2">Subject</th>
                                        <th style="width: 45%" colspan="2">Marks Obtained</th>
                                    </tr>
                                    <tr>
                                        <td>Test-1</td>
                                        <td>Test-2</td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1)</td>
                                        <td>
                                            <input type="text" name="sub41" class="form-control input-sm" value="Applied Mathematics-IV" placeholder="Applied Mathematics-IV" readonly="readonly"></td>
                                        <td>
                                            <input type="number" name="sub41test1" class="form-control input-sm" max="20" min="0"></td>
                                        <td>
                                            <input type="number" name="sub41test2" class="form-control input-sm" max="20" min="0"></td>
                                    </tr>
                                    <tr>
                                        <td>2)</td>
                                        <td>
                                            <input type="text" name="sub42" class="form-control input-sm" value="Computer Networks" placeholder="Computer Networks" readonly="readonly"></td>
                                        <td>
                                            <input type="number" name="sub42test1" class="form-control input-sm" max="20" min="0"></td>
                                        <td>
                                            <input type="number" name="sub42test2" class="form-control input-sm" max="20" min="0"></td>
                                    </tr>
                                    <tr>
                                        <td>3)</td>
                                        <td>
                                            <input type="text" name="sub43" class="form-control input-sm" value="Computer Organization & Architecture" placeholder="Computer Organization & Architecture" readonly="readonly"></td>
                                        <td>
                                            <input type="number" name="sub43test1" class="form-control input-sm" max="20" min="0"></td>
                                        <td>
                                            <input type="number" name="sub43test2" class="form-control input-sm" max="20" min="0"></td>
                                    </tr>
                                    <tr>
                                        <td>4)</td>
                                        <td>
                                            <input type="text" name="sub44" class="form-control input-sm" value="Automata Theory" placeholder="Automata Theory" readonly="readonly"></td>
                                        <td>
                                            <input type="number" name="sub44test1" class="form-control input-sm" max="20" min="0"></td>
                                        <td>
                                            <input type="number" name="sub44test2" class="form-control input-sm" max="20" min="0"></td>
                                    </tr>
                                    <tr>
                                        <td>5)</td>
                                        <td>
                                            <input type="text" name="sub45" class="form-control input-sm" value="Web Programming" placeholder="Web Programming" readonly="readonly"></td>
                                        <td>
                                            <input type="number" name="sub45test1" class="form-control input-sm" max="20" min="0"></td>
                                        <td>
                                            <input type="number" name="sub45test2" class="form-control input-sm" max="20" min="0"></td>
                                    </tr>
                                    <tr>
                                        <td>6)</td>
                                        <td>
                                            <input type="text" name="sub46" class="form-control input-sm" value="Information Theory & Coding" placeholder="Information Theory & Coding" readonly="readonly"></td>
                                        <td>
                                            <input type="number" name="sub46test1" class="form-control input-sm" max="20" min="0"></td>
                                        <td>
                                            <input type="number" name="sub46test2" class="form-control input-sm" max="20" min="0"></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div id="te" class="container tab-pane fade">
                            <br>
                            <h3 class="text-center">Sem-V</h3>
                            <table class="table table-dark table-hover text-centered" style="text-align: center; color: white; background-color: #414047; font-size: larger;">
                                <thead style="background-color: #2d2c2d;">
                                    <tr>
                                        <th style="width: 10%" rowspan="2">Sr.No.</th>
                                        <th style="width: 45%" rowspan="2">Subject</th>
                                        <th style="width: 45%" colspan="2">Marks Obtained</th>
                                    </tr>
                                    <tr>
                                        <td>Test-1</td>
                                        <td>Test-2</td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1)</td>
                                        <td>
                                            <input type="text" name="sub51" class="form-control input-sm" value="Operating Systems" placeholder="Operating Systems" readonly="readonly"></td>
                                        <td>
                                            <input type="number" name="sub51test1" class="form-control input-sm" max="20" min="0" autofocus></td>
                                        <td>
                                            <input type="number" name="sub51test2" class="form-control input-sm" max="20" min="0"></td>
                                    </tr>
                                    <tr>
                                        <td>2)</td>
                                        <td>
                                            <input type="text" name="sub52" class="form-control input-sm" value="Computer Graphics & Virtual Reality" placeholder="Computer Graphics & Virtual Reality" readonly="readonly"></td>
                                        <td>
                                            <input type="number" name="sub52test1" class="form-control input-sm" max="20" min="0"></td>
                                        <td>
                                            <input type="number" name="sub52test2" class="form-control input-sm" max="20" min="0"></td>
                                    </tr>
                                    <tr>
                                        <td>3)</td>
                                        <td>
                                            <input type="text" name="sub53" class="form-control input-sm" value="Open Source Technologies" placeholder="Open Source Technologies" readonly="readonly"></td>
                                        <td>
                                            <input type="number" name="sub53test1" class="form-control input-sm" max="20" min="0"></td>
                                        <td>
                                            <input type="number" name="sub53test2" class="form-control input-sm" max="20" min="0"></td>
                                    </tr>
                                    <tr>
                                        <td>4)</td>
                                        <td>
                                            <input type="text" name="sub54" class="form-control input-sm" value="Microcontroller & Embedded Systems" placeholder="Microcontroller & Embedded Systems" readonly="readonly"></td>
                                        <td>
                                            <input type="number" name="sub54test1" class="form-control input-sm" max="20" min="0"></td>
                                        <td>
                                            <input type="number" name="sub54test2" class="form-control input-sm" max="20" min="0"></td>
                                    </tr>
                                    <tr>
                                        <td>5)</td>
                                        <td>
                                            <input type="text" name="sub56" class="form-control input-sm" value="Advanced Database Management Systems" placeholder="Advanced Database Management Systems" readonly="readonly"></td>
                                        <td>
                                            <input type="number" name="sub56test1" class="form-control input-sm" max="20" min="0"></td>
                                        <td>
                                            <input type="number" name="sub56test2" class="form-control input-sm" max="20" min="0"></td>
                                    </tr>
                                    <tr>
                                        <td>6)</td>
                                        <td>
                                            <input type="text" name="sub55" class="form-control input-sm" value="Business Communication & Ethics" placeholder="Business Communication & Ethics" readonly="readonly"></td>
                                        <td>
                                            <input type="number" name="sub55test1" class="form-control input-sm" max="20" min="0" readonly="readonly"></td>
                                        <td>
                                            <input type="number" name="sub55test2" class="form-control input-sm" max="20" min="0" readonly="readonly"></td>
                                    </tr>

                                </tbody>
                            </table>
                            <h3 class="text-center">Sem-VI</h3>
                            <table class="table table-dark table-hover text-centered" style="text-align: center; color: white; background-color: #414047; font-size: larger;">
                                <thead style="background-color: #2d2c2d;">
                                    <tr>
                                        <th style="width: 10%" rowspan="2">Sr.No.</th>
                                        <th style="width: 45%" rowspan="2">Subject</th>
                                        <th style="width: 45%" colspan="2">Marks Obtained</th>
                                    </tr>
                                    <tr>
                                        <td>Test-1</td>
                                        <td>Test-2</td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1)</td>
                                        <td>
                                            <input type="text" name="sub61" class="form-control input-sm" value="Data Mining & Business Intelligence" placeholder="Data Mining & Business Intelligence" readonly="readonly"></td>
                                        <td>
                                            <input type="number" name="sub61test1" class="form-control input-sm" max="20" min="0"></td>
                                        <td>
                                            <input type="number" name="sub61test2" class="form-control input-sm" max="20" min="0"></td>
                                    </tr>
                                    <tr>
                                        <td>2)</td>
                                        <td>
                                            <input type="text" name="sub62" class="form-control input-sm" value="Distributed Systems" placeholder="Distributed Systems" readonly="readonly"></td>
                                        <td>
                                            <input type="number" name="sub62test1" class="form-control input-sm" max="20" min="0"></td>
                                        <td>
                                            <input type="number" name="sub62test2" class="form-control input-sm" max="20" min="0"></td>
                                    </tr>
                                    <tr>
                                        <td>3)</td>
                                        <td>
                                            <input type="text" name="sub63" class="form-control input-sm" value="System & Web Security" placeholder="System & Web Security" readonly="readonly"></td>
                                        <td>
                                            <input type="number" name="sub63test1" class="form-control input-sm" max="20" min="0"></td>
                                        <td>
                                            <input type="number" name="sub63test2" class="form-control input-sm" max="20" min="0"></td>
                                    </tr>
                                    <tr>
                                        <td>4)</td>
                                        <td>
                                            <input type="text" name="sub64" class="form-control input-sm" value="Software Engineering" placeholder="Applied Mathematics-I" readonly="readonly"></td>
                                        <td>
                                            <input type="number" name="sub64test1" class="form-control input-sm" max="20" min="0"></td>
                                        <td>
                                            <input type="number" name="sub64test2" class="form-control input-sm" max="20" min="0"></td>
                                    </tr>
                                    <tr>
                                        <td>5)</td>
                                        <td>
                                            <input type="text" name="sub65" class="form-control input-sm" value="Advanced Internet Technologies" placeholder="Advanced Internet Technologies" readonly="readonly"></td>
                                        <td>
                                            <input type="number" name="sub65test1" class="form-control input-sm" max="20" min="0"></td>
                                        <td>
                                            <input type="number" name="sub65test2" class="form-control input-sm" max="20" min="0"></td>
                                    </tr>
                                    <tr>
                                        <td>6)</td>
                                        <td>
                                            <input type="text" name="sub66" class="form-control input-sm" value="N.A.1" placeholder="-" readonly="readonly"></td>
                                        <td>
                                            <input type="number" name="sub66test1" class="form-control input-sm" max="20" min="0" readonly="readonly"></td>
                                        <td>
                                            <input type="number" name="sub66test2" class="form-control input-sm" max="20" min="0" readonly="readonly"></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div id="be" class="container tab-pane fade">
                            <br>
                            <h3 class="text-center">Sem-VII</h3>
                            <table class="table table-dark table-hover text-centered" style="text-align: center; color: white; background-color: #414047; font-size: larger;">
                                <thead style="background-color: #2d2c2d;">
                                    <tr>
                                        <th style="width: 10%" rowspan="2">Sr.No.</th>
                                        <th style="width: 45%" rowspan="2">Subject</th>
                                        <th style="width: 45%" colspan="2">Marks Obtained</th>
                                    </tr>
                                    <tr>
                                        <td>Test-1</td>
                                        <td>Test-2</td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1)</td>
                                        <td>
                                            <input type="text" name="sub71" class="form-control input-sm" value="Software Project Management" placeholder="Software Project Management" readonly="readonly"></td>
                                        <td>
                                            <input type="number" name="sub71test1" class="form-control input-sm" max="20" min="0" autofocus></td>
                                        <td>
                                            <input type="number" name="sub71test2" class="form-control input-sm" max="20" min="0"></td>
                                    </tr>
                                    <tr>
                                        <td>2)</td>
                                        <td>
                                            <input type="text" name="sub72" class="form-control input-sm" value="Cloud Computing" placeholder="Cloud Computing" readonly="readonly"></td>
                                        <td>
                                            <input type="number" name="sub72test1" class="form-control input-sm" max="20" min="0"></td>
                                        <td>
                                            <input type="number" name="sub72test2" class="form-control input-sm" max="20" min="0"></td>
                                    </tr>
                                    <tr>
                                        <td>3)</td>
                                        <td>
                                            <input type="text" name="sub73" class="form-control input-sm" value="Intelligent Systems" placeholder="Intelligent Systems" readonly="readonly"></td>
                                        <td>
                                            <input type="number" name="sub73test1" class="form-control input-sm" max="20" min="0"></td>
                                        <td>
                                            <input type="number" name="sub73test2" class="form-control input-sm" max="20" min="0"></td>
                                    </tr>
                                    <tr>
                                        <td>4)</td>
                                        <td>
                                            <input type="text" name="sub74" class="form-control input-sm" value="Wireless Technology" placeholder="Wireless Technology" readonly="readonly"></td>
                                        <td>
                                            <input type="number" name="sub74test1" class="form-control input-sm" max="20" min="0"></td>
                                        <td>
                                            <input type="number" name="sub74test2" class="form-control input-sm" max="20" min="0"></td>
                                    </tr>
                                    <tr>
                                        <td>5)</td>
                                        <td>
                                            <input type="text" name="sub75" class="form-control input-sm" value="Elective-I" placeholder="Elective-I" readonly="readonly"></td>
                                        <td>
                                            <input type="number" name="sub75test1" class="form-control input-sm" max="20" min="0"></td>
                                        <td>
                                            <input type="number" name="sub75test2" class="form-control input-sm" max="20" min="0"></td>
                                    </tr>
                                    <tr>
                                        <td>6)</td>
                                        <td>
                                            <input type="text" name="sub76" class="form-control input-sm" value="N.A.2" placeholder="-" readonly="readonly"></td>
                                        <td>
                                            <input type="number" name="sub76test1" class="form-control input-sm" max="20" min="0" readonly="readonly"></td>
                                        <td>
                                            <input type="number" name="sub76test2" class="form-control input-sm" max="20" min="0" readonly="readonly"></td>
                                    </tr>
                                </tbody>
                            </table>
                            <h3 class="text-center">Sem-VIII</h3>
                            <table class="table table-dark table-hover text-centered" style="text-align: center; color: white; background-color: #414047; font-size: larger;">
                                <thead style="background-color: #2d2c2d;">
                                    <tr>
                                        <th style="width: 10%" rowspan="2">Sr.No.</th>
                                        <th style="width: 45%" rowspan="2">Subject</th>
                                        <th style="width: 45%" colspan="2">Marks Obtained</th>
                                    </tr>
                                    <tr>
                                        <td>Test-1</td>
                                        <td>Test-2</td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1)</td>
                                        <td>
                                            <input type="text" name="sub81" class="form-control input-sm" value="Storage Network Management & Retrieval" placeholder="Storage Network Management & Retrieval" readonly="readonly"></td>
                                        <td>
                                            <input type="number" name="sub81test1" class="form-control input-sm" max="20" min="0"></td>
                                        <td>
                                            <input type="number" name="sub81test2" class="form-control input-sm" max="20" min="0"></td>
                                    </tr>
                                    <tr>
                                        <td>2)</td>
                                        <td>
                                            <input type="text" name="sub82" class="form-control input-sm" value="Big Data Analytics" placeholder="Big Data Analytics" readonly="readonly"></td>
                                        <td>
                                            <input type="number" name="sub82test1" class="form-control input-sm" max="20" min="0"></td>
                                        <td>
                                            <input type="number" name="sub82test2" class="form-control input-sm" max="20" min="0"></td>
                                    </tr>
                                    <tr>
                                        <td>3)</td>
                                        <td>
                                            <input type="text" name="sub83" class="form-control input-sm" value="Computer Simulation & Modelling" placeholder="Computer Simulation & Modelling" readonly="readonly"></td>
                                        <td>
                                            <input type="number" name="sub83test1" class="form-control input-sm" max="20" min="0"></td>
                                        <td>
                                            <input type="number" name="sub83test2" class="form-control input-sm" max="20" min="0"></td>
                                    </tr>
                                    <tr>
                                        <td>4)</td>
                                        <td>
                                            <input type="text" name="sub84" class="form-control input-sm" value="Elective-II" placeholder="Elective-II" readonly="readonly"></td>
                                        <td>
                                            <input type="number" name="sub84test1" class="form-control input-sm" max="20" min="0"></td>
                                        <td>
                                            <input type="number" name="sub84test2" class="form-control input-sm" max="20" min="0"></td>
                                    </tr>
                                    <tr>
                                        <td>5)</td>
                                        <td>
                                            <input type="text" name="sub85" class="form-control input-sm" value="N.A.3" placeholder="-" readonly="readonly"></td>
                                        <td>
                                            <input type="number" name="sub85test1" class="form-control input-sm" max="20" min="0" readonly="readonly"></td>
                                        <td>
                                            <input type="number" name="sub85test2" class="form-control input-sm" max="20" min="0" readonly="readonly"></td>
                                    </tr>
                                    <tr>
                                        <td>6)</td>
                                        <td>
                                            <input type="text" name="sub86" class="form-control input-sm" value="N.A.4" placeholder="-" readonly="readonly"></td>
                                        <td>
                                            <input type="number" name="sub86test1" class="form-control input-sm" max="20" min="0" readonly="readonly"></td>
                                        <td>
                                            <input type="number" name="sub86test2" class="form-control input-sm" max="20" min="0" readonly="readonly"></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <asp:Button ID="Button1" class="btn btn-success pull-right btn-lg" runat="server" Text="Save" OnClick="Button1_Click"></asp:Button><br />
                        <br />
                    </div>
                    <div class="col-sm-2"></div>
                </div>
            </div>
        </div>
        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </form>
</body>
</html>
