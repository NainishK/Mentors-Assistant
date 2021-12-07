<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CurricularActivities.aspx.cs" Inherits="aspx_CurricularActivities" %>

<!doctype html>
<html lang="en">
<head runat="server">
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta id="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Curricular Activities</title>
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
                            <a class="dropdown-item" href="NavigateSessional.aspx">Sessional</a>
                            <a class="dropdown-item" href="#">Activities</a>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="ViewCurricularActivities.aspx">ViewCurricularActivities</a>
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
                    <h1 class="display-4">Curricular Activities</h1>
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
                                        <th style="width: 10%">Sr.No.</th>
                                        <th style="width: 40%">Title of Co-curricular Activity</th>
                                        <th style="width: 10%">Sr.No.</th>
                                        <th style="width: 40%">Title of Extra-curricular Activity</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1)</td>
                                        <td>
                                            <input type="text" name="co11" class="form-control input-sm" autofocus></td>
                                        <td>1)</td>
                                        <td>
                                            <input type="text" name="extra11" class="form-control input-sm"></td>
                                    </tr>
                                    <tr>
                                        <td>2)</td>
                                        <td>
                                            <input type="text" name="co12" class="form-control input-sm"></td>
                                        <td>2)</td>
                                        <td>
                                            <input type="text" name="extra12" class="form-control input-sm"></td>
                                    </tr>
                                    <tr>
                                        <td>3)</td>
                                        <td>
                                            <input type="text" name="co13" class="form-control input-sm"></td>
                                        <td>3)</td>
                                        <td>
                                            <input type="text" name="extra13" class="form-control input-sm"></td>
                                    </tr>
                                    <tr>
                                        <td>4)</td>
                                        <td>
                                            <input type="text" name="co14" class="form-control input-sm"></td>
                                        <td>4)</td>
                                        <td>
                                            <input type="text" name="extra14" class="form-control input-sm"></td>
                                    </tr>
                                    <tr>
                                        <td>5)</td>
                                        <td>
                                            <input type="text" name="co15" class="form-control input-sm"></td>
                                        <td>5)</td>
                                        <td>
                                            <input type="text" name="extra15" class="form-control input-sm"></td>
                                    </tr>
                                </tbody>
                            </table>
                            <h3 class="text-center">Sem-II</h3>
                            <table class="table table-dark table-hover text-centered" style="text-align: center; color: white; background-color: #414047; font-size: larger;">
                                <thead style="background-color: #2d2c2d;">
                                    <tr>
                                        <th style="width: 10%">Sr.No.</th>
                                        <th style="width: 40%">Title of Co-curricular Activity</th>
                                        <th style="width: 10%">Sr.No.</th>
                                        <th style="width: 40%">Title of Extra-curricular Activity</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1)</td>
                                        <td>
                                            <input type="text" name="co21" class="form-control input-sm"></td>
                                        <td>1)</td>
                                        <td>
                                            <input type="text" name="extra21" class="form-control input-sm"></td>
                                    </tr>
                                    <tr>
                                        <td>2)</td>
                                        <td>
                                            <input type="text" name="co22" class="form-control input-sm"></td>
                                        <td>2)</td>
                                        <td>
                                            <input type="text" name="extra22" class="form-control input-sm"></td>
                                    </tr>
                                    <tr>
                                        <td>3)</td>
                                        <td>
                                            <input type="text" name="co23" class="form-control input-sm"></td>
                                        <td>3)</td>
                                        <td>
                                            <input type="text" name="extra23" class="form-control input-sm"></td>
                                    </tr>
                                    <tr>
                                        <td>4)</td>
                                        <td>
                                            <input type="text" name="co24" class="form-control input-sm"></td>
                                        <td>4)</td>
                                        <td>
                                            <input type="text" name="extra24" class="form-control input-sm"></td>
                                    </tr>
                                    <tr>
                                        <td>5)</td>
                                        <td>
                                            <input type="text" name="co25" class="form-control input-sm"></td>
                                        <td>5)</td>
                                        <td>
                                            <input type="text" name="extra25" class="form-control input-sm"></td>
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
                                        <th style="width: 10%">Sr.No.</th>
                                        <th style="width: 40%">Title of Co-curricular Activity</th>
                                        <th style="width: 10%">Sr.No.</th>
                                        <th style="width: 40%">Title of Extra-curricular Activity</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1)</td>
                                        <td>
                                            <input type="text" name="co31" class="form-control input-sm" autofocus></td>
                                        <td>1)</td>
                                        <td>
                                            <input type="text" name="extra31" class="form-control input-sm"></td>
                                    </tr>
                                    <tr>
                                        <td>2)</td>
                                        <td>
                                            <input type="text" name="co32" class="form-control input-sm"></td>
                                        <td>2)</td>
                                        <td>
                                            <input type="text" name="extra32" class="form-control input-sm"></td>
                                    </tr>
                                    <tr>
                                        <td>3)</td>
                                        <td>
                                            <input type="text" name="co33" class="form-control input-sm"></td>
                                        <td>3)</td>
                                        <td>
                                            <input type="text" name="extra33" class="form-control input-sm"></td>
                                    </tr>
                                    <tr>
                                        <td>4)</td>
                                        <td>
                                            <input type="text" name="co34" class="form-control input-sm"></td>
                                        <td>4)</td>
                                        <td>
                                            <input type="text" name="extra34" class="form-control input-sm"></td>
                                    </tr>
                                    <tr>
                                        <td>5)</td>
                                        <td>
                                            <input type="text" name="co35" class="form-control input-sm"></td>
                                        <td>5)</td>
                                        <td>
                                            <input type="text" name="extra35" class="form-control input-sm"></td>
                                    </tr>
                                </tbody>
                            </table>
                            <h3 class="text-center">Sem-IV</h3>
                            <table class="table table-dark table-hover text-centered" style="text-align: center; color: white; background-color: #414047; font-size: larger;">
                                <thead style="background-color: #2d2c2d;">
                                    <tr>
                                        <th style="width: 10%">Sr.No.</th>
                                        <th style="width: 40%">Title of Co-curricular Activity</th>
                                        <th style="width: 10%">Sr.No.</th>
                                        <th style="width: 40%">Title of Extra-curricular Activity</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1)</td>
                                        <td>
                                            <input type="text" name="co41" class="form-control input-sm"></td>
                                        <td>1)</td>
                                        <td>
                                            <input type="text" name="extra41" class="form-control input-sm"></td>
                                    </tr>
                                    <tr>
                                        <td>2)</td>
                                        <td>
                                            <input type="text" name="co42" class="form-control input-sm"></td>
                                        <td>2)</td>
                                        <td>
                                            <input type="text" name="extra42" class="form-control input-sm"></td>
                                    </tr>
                                    <tr>
                                        <td>3)</td>
                                        <td>
                                            <input type="text" name="co43" class="form-control input-sm"></td>
                                        <td>3)</td>
                                        <td>
                                            <input type="text" name="extra43" class="form-control input-sm"></td>
                                    </tr>
                                    <tr>
                                        <td>4)</td>
                                        <td>
                                            <input type="text" name="co44" class="form-control input-sm"></td>
                                        <td>4)</td>
                                        <td>
                                            <input type="text" name="extra44" class="form-control input-sm"></td>
                                    </tr>
                                    <tr>
                                        <td>5)</td>
                                        <td>
                                            <input type="text" name="co45" class="form-control input-sm"></td>
                                        <td>5)</td>
                                        <td>
                                            <input type="text" name="extra45" class="form-control input-sm"></td>
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
                                        <th style="width: 10%">Sr.No.</th>
                                        <th style="width: 40%">Title of Co-curricular Activity</th>
                                        <th style="width: 10%">Sr.No.</th>
                                        <th style="width: 40%">Title of Extra-curricular Activity</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1)</td>
                                        <td>
                                            <input type="text" name="co51" class="form-control input-sm" autofocus></td>
                                        <td>1)</td>
                                        <td>
                                            <input type="text" name="extra51" class="form-control input-sm"></td>
                                    </tr>
                                    <tr>
                                        <td>2)</td>
                                        <td>
                                            <input type="text" name="co52" class="form-control input-sm"></td>
                                        <td>2)</td>
                                        <td>
                                            <input type="text" name="extra52" class="form-control input-sm"></td>
                                    </tr>
                                    <tr>
                                        <td>3)</td>
                                        <td>
                                            <input type="text" name="co53" class="form-control input-sm"></td>
                                        <td>3)</td>
                                        <td>
                                            <input type="text" name="extra53" class="form-control input-sm"></td>
                                    </tr>
                                    <tr>
                                        <td>4)</td>
                                        <td>
                                            <input type="text" name="co54" class="form-control input-sm"></td>
                                        <td>4)</td>
                                        <td>
                                            <input type="text" name="extra54" class="form-control input-sm"></td>
                                    </tr>
                                    <tr>
                                        <td>5)</td>
                                        <td>
                                            <input type="text" name="co55" class="form-control input-sm"></td>
                                        <td>5)</td>
                                        <td>
                                            <input type="text" name="extra55" class="form-control input-sm"></td>
                                    </tr>
                                </tbody>
                            </table>
                            <h3 class="text-center">Sem-VI</h3>
                            <table class="table table-dark table-hover text-centered" style="text-align: center; color: white; background-color: #414047; font-size: larger;">
                                <thead style="background-color: #2d2c2d;">
                                    <tr>
                                        <th style="width: 10%">Sr.No.</th>
                                        <th style="width: 40%">Title of Co-curricular Activity</th>
                                        <th style="width: 10%">Sr.No.</th>
                                        <th style="width: 40%">Title of Extra-curricular Activity</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1)</td>
                                        <td>
                                            <input type="text" name="co61" class="form-control input-sm"></td>
                                        <td>1)</td>
                                        <td>
                                            <input type="text" name="extra61" class="form-control input-sm"></td>
                                    </tr>
                                    <tr>
                                        <td>2)</td>
                                        <td>
                                            <input type="text" name="co62" class="form-control input-sm"></td>
                                        <td>2)</td>
                                        <td>
                                            <input type="text" name="extra62" class="form-control input-sm"></td>
                                    </tr>
                                    <tr>
                                        <td>3)</td>
                                        <td>
                                            <input type="text" name="co63" class="form-control input-sm"></td>
                                        <td>3)</td>
                                        <td>
                                            <input type="text" name="extra63" class="form-control input-sm"></td>
                                    </tr>
                                    <tr>
                                        <td>4)</td>
                                        <td>
                                            <input type="text" name="co64" class="form-control input-sm"></td>
                                        <td>4)</td>
                                        <td>
                                            <input type="text" name="extra64" class="form-control input-sm"></td>
                                    </tr>
                                    <tr>
                                        <td>5)</td>
                                        <td>
                                            <input type="text" name="co65" class="form-control input-sm"></td>
                                        <td>5)</td>
                                        <td>
                                            <input type="text" name="extra65" class="form-control input-sm"></td>
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
                                        <th style="width: 10%">Sr.No.</th>
                                        <th style="width: 40%">Title of Co-curricular Activity</th>
                                        <th style="width: 10%">Sr.No.</th>
                                        <th style="width: 40%">Title of Extra-curricular Activity</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1)</td>
                                        <td>
                                            <input type="text" name="co71" class="form-control input-sm" autofocus></td>
                                        <td>1)</td>
                                        <td>
                                            <input type="text" name="extra71" class="form-control input-sm"></td>
                                    </tr>
                                    <tr>
                                        <td>2)</td>
                                        <td>
                                            <input type="text" name="co72" class="form-control input-sm"></td>
                                        <td>2)</td>
                                        <td>
                                            <input type="text" name="extra72" class="form-control input-sm"></td>
                                    </tr>
                                    <tr>
                                        <td>3)</td>
                                        <td>
                                            <input type="text" name="co73" class="form-control input-sm"></td>
                                        <td>3)</td>
                                        <td>
                                            <input type="text" name="extra73" class="form-control input-sm"></td>
                                    </tr>
                                    <tr>
                                        <td>4)</td>
                                        <td>
                                            <input type="text" name="co74" class="form-control input-sm"></td>
                                        <td>4)</td>
                                        <td>
                                            <input type="text" name="extra74" class="form-control input-sm"></td>
                                    </tr>
                                    <tr>
                                        <td>5)</td>
                                        <td>
                                            <input type="text" name="co75" class="form-control input-sm"></td>
                                        <td>5)</td>
                                        <td>
                                            <input type="text" name="extra75" class="form-control input-sm"></td>
                                    </tr>
                                </tbody>
                            </table>
                            <h3 class="text-center">Sem-VIII</h3>
                            <table class="table table-dark table-hover text-centered" style="text-align: center; color: white; background-color: #414047; font-size: larger;">
                                <thead style="background-color: #2d2c2d;">
                                    <tr>
                                        <th style="width: 10%">Sr.No.</th>
                                        <th style="width: 40%">Title of Co-curricular Activity</th>
                                        <th style="width: 10%">Sr.No.</th>
                                        <th style="width: 40%">Title of Extra-curricular Activity</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1)</td>
                                        <td>
                                            <input type="text" name="co81" class="form-control input-sm"></td>
                                        <td>1)</td>
                                        <td>
                                            <input type="text" name="extra81" class="form-control input-sm"></td>
                                    </tr>
                                    <tr>
                                        <td>2)</td>
                                        <td>
                                            <input type="text" name="co82" class="form-control input-sm"></td>
                                        <td>2)</td>
                                        <td>
                                            <input type="text" name="extra82" class="form-control input-sm"></td>
                                    </tr>
                                    <tr>
                                        <td>3)</td>
                                        <td>
                                            <input type="text" name="co83" class="form-control input-sm"></td>
                                        <td>3)</td>
                                        <td>
                                            <input type="text" name="extra83" class="form-control input-sm"></td>
                                    </tr>
                                    <tr>
                                        <td>4)</td>
                                        <td>
                                            <input type="text" name="co84" class="form-control input-sm"></td>
                                        <td>4)</td>
                                        <td>
                                            <input type="text" name="extra84" class="form-control input-sm"></td>
                                    </tr>
                                    <tr>
                                        <td>5)</td>
                                        <td>
                                            <input type="text" name="co85" class="form-control input-sm"></td>
                                        <td>5)</td>
                                        <td>
                                            <input type="text" name="extra85" class="form-control input-sm"></td>
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
