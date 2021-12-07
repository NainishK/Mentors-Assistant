<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AcademicRecords.aspx.cs" Inherits="aspx_AcademicRecords" %>

<!doctype html>
<html lang="en">
<head runat="server">
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta id="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Academic Records</title>
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
                            <a class="dropdown-item" href="#">Academic</a>
                            <a class="dropdown-item" href="AttendanceRecords.aspx">Attendance</a>
                            <a class="dropdown-item" href="NavigateSessional.aspx">Sessional</a>
                            <a class="dropdown-item" href="CurricularActivities.aspx">Activities</a>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="ViewAcademicDetails.aspx">ViewAcademicDetails</a>
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
                    <h1 class="display-4">Academic Records</h1>
                    <table class="table table-dark table-hover text-centered" style="text-align: center; color: white; background-color: #414047; font-size: larger;">
                        <thead style="background-color: #2d2c2d;">
                            <tr>
                                <th style="width: 10%">Year</th>
                                <th style="width: 10%">Semester</th>
                                <th style="width: 20%">Result<br />
                                    (Pass/Fail)</th>
                                <th style="width: 20%">No. of Heads<br />
                                    of Failure</th>
                                <th style="width: 40%">Names of Failure Head</th>
                                <th style="width: 20%">SGPI/Percentage</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td rowspan="2">FE</td>
                                <td>Sem-I</td>
                                <td>
                                    <select name="result1" class="custom-select">
                                        <option selected></option>
                                        <option value="Pass">Pass</option>
                                        <option value="Fail">Fail</option>
                                    </select>
                                </td>
                                <td>
                                    <input type="number" name="noOfHeads1" class="form-control input-sm">
                                </td>
                                <td>
                                    <input type="text" name="ktSubjects1" class="form-control input-sm">
                                </td>
                                <td>
                                    <input type="text" name="sgpi1" class="form-control input-sm">
                                </td>
                            </tr>
                            <tr>
                                <td>Sem-II</td>
                                <td>
                                    <select name="result2" class="custom-select">
                                        <option selected></option>
                                        <option value="Pass">Pass</option>
                                        <option value="Fail">Fail</option>
                                    </select>
                                </td>
                                <td>
                                    <input type="number" name="noOfHeads2" class="form-control input-sm">
                                </td>
                                <td>
                                    <input type="text" name="ktSubjects2" class="form-control input-sm">
                                </td>
                                <td>
                                    <input type="text" name="sgpi2" class="form-control input-sm">
                                </td>
                            </tr>
                            <tr>
                                <td rowspan="2">SE</td>
                                <td>Sem-III</td>
                                <td>
                                    <select name="result3" class="custom-select">
                                        <option selected></option>
                                        <option value="Pass">Pass</option>
                                        <option value="Fail">Fail</option>
                                    </select>
                                </td>
                                <td>
                                    <input type="number" name="noOfHeads3" class="form-control input-sm">
                                </td>
                                <td>
                                    <input type="text" name="ktSubjects3" class="form-control input-sm">
                                </td>
                                <td>
                                    <input type="text" name="sgpi3" class="form-control input-sm">
                                </td>
                            </tr>
                            <tr>
                                <td>Sem-IV</td>
                                <td>
                                    <select name="result4" class="custom-select">
                                        <option selected></option>
                                        <option value="Pass">Pass</option>
                                        <option value="Fail">Fail</option>
                                    </select>
                                </td>
                                <td>
                                    <input type="number" name="noOfHeads4" class="form-control input-sm">
                                </td>
                                <td>
                                    <input type="text" name="ktSubjects4" class="form-control input-sm">
                                </td>
                                <td>
                                    <input type="text" name="sgpi4" class="form-control input-sm">
                                </td>
                            </tr>
                            <tr>
                                <td rowspan="2">TE</td>
                                <td>Sem-V</td>
                                <td>
                                    <select name="result5" class="custom-select">
                                        <option selected></option>
                                        <option value="Pass">Pass</option>
                                        <option value="Fail">Fail</option>
                                    </select>
                                </td>
                                <td>
                                    <input type="number" name="noOfHeads5" class="form-control input-sm">
                                </td>
                                <td>
                                    <input type="text" name="ktSubjects5" class="form-control input-sm">
                                </td>
                                <td>
                                    <input type="text" name="sgpi5" class="form-control input-sm">
                                </td>
                            </tr>
                            <tr>
                                <td>Sem-VI</td>
                                <td>
                                    <select name="result6" class="custom-select">
                                        <option selected></option>
                                        <option value="Pass">Pass</option>
                                        <option value="Fail">Fail</option>
                                    </select>
                                </td>
                                <td>
                                    <input type="number" name="noOfHeads6" class="form-control input-sm">
                                </td>
                                <td>
                                    <input type="text" name="ktSubjects6" class="form-control input-sm">
                                </td>
                                <td>
                                    <input type="text" name="sgpi6" class="form-control input-sm">
                                </td>
                            </tr>
                            <tr>
                                <td rowspan="2">BE</td>
                                <td>Sem-VII</td>
                                <td>
                                    <select name="result7" class="custom-select">
                                        <option selected></option>
                                        <option value="Pass">Pass</option>
                                        <option value="Fail">Fail</option>
                                    </select>
                                </td>
                                <td>
                                    <input type="number" name="noOfHeads7" class="form-control input-sm">
                                </td>
                                <td>
                                    <input type="text" name="ktSubjects7" class="form-control input-sm">
                                </td>
                                <td>
                                    <input type="text" name="sgpi7" class="form-control input-sm">
                                </td>
                            </tr>
                            <tr>
                                <td>Sem-VIII</td>
                                <td>
                                    <select name="result8" class="custom-select">
                                        <option selected></option>
                                        <option value="Pass">Pass</option>
                                        <option value="Fail">Fail</option>
                                    </select>
                                </td>
                                <td>
                                    <input type="number" name="noOfHeads8" class="form-control input-sm">
                                </td>
                                <td>
                                    <input type="text" name="ktSubjects8" class="form-control input-sm">
                                </td>
                                <td>
                                    <input type="text" name="sgpi8" class="form-control input-sm">
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <asp:Button ID="Button1" class="btn btn-success pull-right btn-lg" runat="server" Text="Save" OnClick="Button1_Click"></asp:Button>
                    <br />
                    <br />
                </div>
                <div class="col-sm-2"></div>
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
