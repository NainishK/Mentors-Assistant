<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AttendanceRecords.aspx.cs" Inherits="aspx_AttendanceRecords" %>

<!doctype html>
<html lang="en">
<head runat="server">
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta id="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Attendance Records</title>
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
                            <a class="dropdown-item" href="#">Attendance</a>
                            <a class="dropdown-item" href="NavigateSessional.aspx">Sessional</a>
                            <a class="dropdown-item" href="CurricularActivities.aspx">Activities</a>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="ViewAttendanceRecords.aspx">ViewAttendanceRecords</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="SignOut.aspx">Sign Out</a>
                    </li>
                </ul>
            </div>
        </nav>
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-3"></div>
                <div class="col-sm-6" style="background: linear-gradient(to right, #b51a0c, #61045f);">
                    <h1 class="display-4">Attendance Records</h1>
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
                            <table class="table table-dark table-hover text-centered" style="text-align: center; color: white; background-color: #414047; font-size: larger;">
                                <thead style="background-color: #2d2c2d;">
                                    <tr>
                                        <th style="width: 15%">Semester</th>
                                        <th style="width: 40%">Month</th>
                                        <th style="width: 45%">Percentage</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td rowspan="3">Sem-I</td>
                                        <td>July</td>
                                        <td>
                                            <input type="number" name="percentage11" class="form-control input-sm" min="0" max="100" autofocus>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>August</td>
                                        <td>
                                            <input type="number" name="percentage12" class="form-control input-sm" min="0" max="100">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>September</td>
                                        <td>
                                            <input type="number" name="percentage13" class="form-control input-sm" min="0" max="100">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td rowspan="3">Sem-II</td>
                                        <td>January</td>
                                        <td>
                                            <input type="number" name="percentage21" class="form-control input-sm" min="0" max="100">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>February</td>
                                        <td>
                                            <input type="number" name="percentage22" class="form-control input-sm" min="0" max="100">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>March</td>
                                        <td>
                                            <input type="number" name="percentage23" class="form-control input-sm" min="0" max="100">
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div id="se" class="container tab-pane fade">
                            <br>
                            <table class="table table-dark table-hover text-centered" style="text-align: center; color: white; background-color: #414047; font-size: larger;">
                                <thead style="background-color: #2d2c2d;">
                                    <tr>
                                        <th style="width: 15%">Semester</th>
                                        <th style="width: 40%">Month</th>
                                        <th style="width: 45%">Percentage</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td rowspan="3">Sem-III</td>
                                        <td>July</td>
                                        <td>
                                            <input type="number" name="percentage31" class="form-control input-sm" min="0" max="100" autofocus>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>August</td>
                                        <td>
                                            <input type="number" name="percentage32" class="form-control input-sm" min="0" max="100">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>September</td>
                                        <td>
                                            <input type="number" name="percentage33" class="form-control input-sm" min="0" max="100">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td rowspan="3">Sem-IV</td>
                                        <td>January</td>
                                        <td>
                                            <input type="number" name="percentage41" class="form-control input-sm" min="0" max="100">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>February</td>
                                        <td>
                                            <input type="number" name="percentage42" class="form-control input-sm" min="0" max="100">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>March</td>
                                        <td>
                                            <input type="number" name="percentage43" class="form-control input-sm" min="0" max="100">
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div id="te" class="container tab-pane fade">
                            <br>
                            <table class="table table-dark table-hover text-centered" style="text-align: center; color: white; background-color: #414047; font-size: larger;">
                                <thead style="background-color: #2d2c2d;">
                                    <tr>
                                        <th style="width: 15%">Semester</th>
                                        <th style="width: 40%">Month</th>
                                        <th style="width: 45%">Percentage</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td rowspan="3">Sem-V</td>
                                        <td>July</td>
                                        <td>
                                            <input type="number" name="percentage51" class="form-control input-sm" min="0" max="100" autofocus>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>August</td>
                                        <td>
                                            <input type="number" name="percentage52" class="form-control input-sm" min="0" max="100">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>September</td>
                                        <td>
                                            <input type="number" name="percentage53" class="form-control input-sm" min="0" max="100">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td rowspan="3">Sem-VI</td>
                                        <td>January</td>
                                        <td>
                                            <input type="number" name="percentage61" class="form-control input-sm" min="0" max="100">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>February</td>
                                        <td>
                                            <input type="number" name="percentage62" class="form-control input-sm" min="0" max="100">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>March</td>
                                        <td>
                                            <input type="number" name="percentage63" class="form-control input-sm" min="0" max="100">
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div id="be" class="container tab-pane fade">
                            <br>
                            <table class="table table-dark table-hover text-centered" style="text-align: center; color: white; background-color: #414047; font-size: larger;">
                                <thead style="background-color: #2d2c2d;">
                                    <tr>
                                        <th style="width: 15%">Semester</th>
                                        <th style="width: 40%">Month</th>
                                        <th style="width: 45%">Percentage</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td rowspan="3">Sem-VII</td>
                                        <td>July</td>
                                        <td>
                                            <input type="number" name="percentage71" class="form-control input-sm" min="0" max="100" autofocus>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>August</td>
                                        <td>
                                            <input type="number" name="percentage72" class="form-control input-sm" min="0" max="100">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>September</td>
                                        <td>
                                            <input type="number" name="percentage73" class="form-control input-sm" min="0" max="100">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td rowspan="3">Sem-VIII</td>
                                        <td>January</td>
                                        <td>
                                            <input type="number" name="percentage81" class="form-control input-sm" min="0" max="100">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>February</td>
                                        <td>
                                            <input type="number" name="percentage82" class="form-control input-sm" min="0" max="100">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>March</td>
                                        <td>
                                            <input type="number" name="percentage83" class="form-control input-sm" min="0" max="100">
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <asp:Button ID="Button1" class="btn btn-success pull-right btn-lg" runat="server" Text="Save" OnClick="Button1_Click"></asp:Button><br />
                        <br />
                    </div>
                    <div class="col-sm-3"></div>
                </div>
            </div>
            </d
    <!-- Optional JavaScript -->
            <!-- jQuery first, then Popper.js, then Bootstrap JS -->
            <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </form>
</body>
</html>
