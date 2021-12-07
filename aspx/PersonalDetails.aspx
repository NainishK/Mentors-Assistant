<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PersonalDetails.aspx.cs" Inherits="aspx_PersonalDetails" %>

<!doctype html>
<html lang="en">
<head runat="server">
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Personal Details</title>
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
                            <a class="dropdown-item" href="#">Personal</a>
                            <a class="dropdown-item" href="AcademicRecords.aspx">Academic</a>
                            <a class="dropdown-item" href="AttendanceRecords.aspx">Attendance</a>
                            <a class="dropdown-item" href="NavigateSessional.aspx">Sessional</a>
                            <a class="dropdown-item" href="CurricularActivities.aspx">Activities</a>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="ViewPersonalDetails.aspx">ViewPersonalDetails</a>
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
                    <h1 class="display-4">Personal Details</h1>
                    <div class="row myrow">
                        <div class="col-2">Class:*</div>
                        <div class="col-2">
                            <select class="custom-select" name="class">
                                <option selected>Select Class</option>
                                <option value="FE">FE</option>
                                <option value="SE">SE</option>
                                <option value="TE">TE</option>
                                <option value="BE">BE</option>
                            </select>
                        </div>
                        <div class="col-1">Branch:</div>
                        <div class="col-3">
                            <select class="custom-select" name="branch">
                                <option selected>Select Branch</option>
                                <option value="Information Techonlogy">Information Techonlogy</option>
                                <option value="Electronics">Electronics</option>
                                <option value="Electrical">Electrical</option>
                                <option value="Mechanical">Mechanical</option>
                                <option value="Chemical">Chemical</option>
                                <option value="Electronics & Telecommunication">Electronics & Telecommunication</option>
                            </select>
                        </div>
                        <div class="col-1">Batch:*</div>
                        <div class="col-3">
                            <select class="custom-select" name="batch">
                                <option selected>Select Batch</option>
                                <option value="B1">B1</option>
                                <option value="B2">B2</option>
                                <option value="B3">B3</option>
                                <option value="B4">B4</option>
                            </select>
                        </div>
                    </div>
                    <div class="row myrow">
                        <div class="col-2">Syllabus Scheme:*</div>
                        <div class="col-2">
                            <select class="custom-select" name="scheme">
                                <option selected>Select Scheme</option>
                                <option value="cbsgs">CBSGS</option>
                                <option value="cbcgs">CBCGS</option>
                            </select>
                        </div>
                        <div class="col-1">Roll No.:</div>
                        <div class="col-1">
                            <input type="text" class="form-control input-sm" name="roll">
                        </div>
                        <div class="col-3">Year of admission in SE:*</div>
                        <div class="col-3">
                            <input type="text" class="form-control input-sm" name="year" placeholder="(e.g. 2017-18)">
                        </div>
                    </div>
                <div class="row myrow">
                    <div class="col-3">
                        Name of the Student*<br />
                        (In CAPITAL Letters)
                    </div>
                    <div class="col-3">
                        <input type="text" class="form-control input-sm" name="sname" placeholder="Surname">
                    </div>
                    <div class="col-3">
                        <input type="text" class="form-control input-sm" name="fname" placeholder="First Name">
                    </div>
                    <div class="col-3">
                        <input type="text" class="form-control input-sm" name="mname" placeholder="Middle Name">
                    </div>
                </div>
                <div class="row myrow">
                    <div class="col-3">Father's Name:</div>
                    <div class="col-6">
                        <input type="text" class="form-control input-sm" name="father" placeholder="Father's Full Name">
                    </div>
                    <div class="col-1">Occupation: </div>
                    <div class="col-2">
                        <input type="text" class="form-control input-sm" name="foccupation">
                    </div>
                </div>
                <div class="row myrow">
                    <div class="col-3">Mother's Name:</div>
                    <div class="col-6">
                        <input type="text" class="form-control input-sm" name="mother" placeholder="Mothers's Full Name">
                    </div>
                    <div class="col-1">Occupation:</div>
                    <div class="col-2">
                        <input type="text" class="form-control input-sm" name="moccupation">
                    </div>
                </div>
                <div class="row myrow">
                    <div class="col-3">Date of Birth:</div>
                    <div class="col-3">
                        <input type="date" class="form-control input-sm" name="dob" value="01/01/1997">
                    </div>
                    <div class="col-3">Blood Group:</div>
                    <div class="col-3">
                        <input type="text" class="form-control input-sm" name="blood">
                    </div>
                </div>
                <div class="row myrow">
                    <div class="col-3">College Registration No.:</div>
                    <div class="col-3">
                        <input type="text" class="form-control input-sm" name="reg">
                    </div>
                    <div class="col-3">Aadhar No.:</div>
                    <div class="col-3">
                        <input type="number" class="form-control input-sm" name="aadhar">
                    </div>
                </div>
                <div class="row myrow">
                    <div class="col-3">Correspondance Address:</div>
                    <div class="col-3">
                        <textarea class="form-control" rows="5" name="caddress"></textarea>
                    </div>
                    <div class="col-3">Permanent Address:</div>
                    <div class="col-3">
                        <textarea class="form-control" rows="5" name="paddress"></textarea>
                    </div>
                </div>
                <div class="row myrow">
                    <div class="col-3">Parent's Contact No.:</div>
                    <div class="col-3">
                        <input type="tel" class="form-control input-sm" name="pcontact">
                    </div>
                    <div class="col-3">Student's Contact No.:</div>
                    <div class="col-3">
                        <input type="tel" class="form-control input-sm" name="scontact">
                    </div>
                </div>
                <div class="row myrow">
                    <div class="col-3">Health Problem, if Any?:</div>
                    <div class="col-9">
                        <input type="text" class="form-control input-sm" name="health">
                    </div>
                </div>
                <div class="row myrow">
                    <div class="col-3">Family Doctor's Name:</div>
                    <div class="col-3">
                        <input type="text" class="form-control input-sm" name="docname">
                    </div>
                    <div class="col-3">Doctor's Contact No.:</div>
                    <div class="col-3">
                        <input type="tel" class="form-control input-sm" name="doccontact">
                    </div>
                </div>
                <br />
                <asp:Button ID="Button1" class="btn btn-success pull-right btn-lg" runat="server" Text="Save" OnClick="Button1_Click"></asp:Button>
                <div class="col-sm-2"></div>
                <br />
                <br />
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
