﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StudentsList.aspx.cs" Inherits="aspx_StudentsList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Students List</title>
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
              <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">ViewStudentsRecords
                        </a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="MPersonal.aspx">Personal</a>
                            <a class="dropdown-item" href="MAcademic.aspx">Academic</a>
                            <a class="dropdown-item" href="MExcelDemo2.aspx">Attendance</a>
                            <a class="dropdown-item" href="MExcelDemo.aspx">Sessional</a>
                            <a class="dropdown-item" href="MCurricular.aspx">Activities</a>
                        </div>
                    </li>
                <li class="nav-item">
                    <a class="nav-link" href="../aspx/SignOut.aspx">Sign Out</a>
                </li>
          </ul>
      </div>
    </nav>
    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-4"></div>
          <div class="col-sm-4" style="background: linear-gradient(to right, #b51a0c, #61045f);">
          
    <form id="form1" runat="server">
    <div>
    <asp:PlaceHolder ID = "PlaceHolder1" runat="server" />
    </div>
    </form>
              <div class="col-sm-4"></div>
        
      </div>
    </div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>
