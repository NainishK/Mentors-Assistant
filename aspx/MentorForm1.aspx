<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MentorForm1.aspx.cs" Inherits="aspx_MentorForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Mentor Form 1</title>
    <style type="text/css">
    body { 
      background-repeat: repeat;
      background: url("../files/images/bg-pattern.png"), linear-gradient(to right, #dc2430, #7b4397);
      background-blend-mode: overlay;
    }
    </style>
  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar-dark black" style="background-color: #373e49">
      <a class="navbar-brand" href="#"><strong>RUN</strong></a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav mr-auto">
              <!-- <li class="nav-item active">
                  <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
              </li>
              <li class="nav-item">
                  <a class="nav-link" href="#">Link</a>
              </li> -->
              <li class="nav-item">
                  <a class="nav-link" href="#">Sign Out</a>
              </li>
          </ul>
      </div>
    </nav>
    <form method="post" action="#">
    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-3"></div>
          <div class="col-sm-6" style="background: linear-gradient(to right, #b51a0c, #61045f);">
              <form id="form1" name="MentorForm1" runat="server" method="post">
            <h1 class="display-4">Add Students</h1>           
            <table class="table table-dark table-hover text-centered" style="text-align: center; color: white; background-color: #414047; font-size: larger;">
              <thead style="background-color: #2d2c2d ;  ">
                <tr>
                  <th style="width: 10%">Sr. No.</th>
                  <th style="width: 30%">Reg. No.</th>
                  <th>Name of the Student</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>1)</td>
                  <td><input type="text" class="form-control input-sm" id="reg1" runat="server"/></td>
                  <td><input type="text" class="form-control input-sm" id="name1" runat="server"/></td>
                </tr>
                <tr>
                  <td>2)</td>
                  <td><input type="text" class="form-control input-sm" id="reg2" runat="server"/></td>
                  <td><input type="text" class="form-control input-sm" id="name2" runat="server"/></td>
                </tr>
                <tr>
                  <td>3)</td>
                  <td><input type="text" class="form-control input-sm" id="reg3" runat="server"/></td>
                  <td><input type="text" class="form-control input-sm" id="name3" runat="server"/></td>
                </tr>
                    <tr>
                  <td>4)</td>
                  <td><input type="text" class="form-control input-sm" id="reg4" runat="server"/></td>
                  <td><input type="text" class="form-control input-sm" id="name4" runat="server"/></td>
                </tr>
                <tr>
                  <td>5)</td>
                  <td><input type="text" class="form-control input-sm" id="reg5" runat="server"/></td>
                  <td><input type="text" class="form-control input-sm" id="name5" runat="server"/></td>
                </tr>
                <tr>
                  <td>6)</td>
                  <td><input type="text" class="form-control input-sm" id="reg6" runat="server"/></td>
                  <td><input type="text" class="form-control input-sm" id="name6" runat="server"/></td>
                </tr>
                    <tr>
                  <td>7)</td>
                  <td><input type="text" class="form-control input-sm" id="reg7" runat="server"/></td>
                  <td><input type="text" class="form-control input-sm" id="name7" runat="server"/></td>
                </tr>
                <tr>
                  <td>8)</td>
                  <td><input type="text" class="form-control input-sm" id="reg8" runat="server"/></td>
                  <td><input type="text" class="form-control input-sm" id="name8" runat="server"/></td>
                </tr>
                <tr>
                  <td>9)</td>
                  <td><input type="text" class="form-control input-sm" id="reg9" runat="server"/></td>
                  <td><input type="text" class="form-control input-sm" id="name9" runat="server"/></td>
                </tr>
                    <tr>
                  <td>10)</td>
                  <td><input type="text" class="form-control input-sm" id="reg10" runat="server"/></td>
                  <td><input type="text" class="form-control input-sm" id="name10" runat="server"/></td>
                </tr>
                <tr>
                  <td>11)</td>
                  <td><input type="text" class="form-control input-sm" id="reg11" runat="server"/></td>
                  <td><input type="text" class="form-control input-sm" id="name11" runat="server"/></td>
                </tr>
                <tr>
                  <td>12)</td>
                  <td><input type="text" class="form-control input-sm" id="reg12" runat="server"/></td>
                  <td><input type="text" class="form-control input-sm" id="name12" runat="server"/></td>
                </tr>
                    <tr>
                  <td>13)</td>
                  <td><input type="text" class="form-control input-sm" id="reg13" runat="server"/></td>
                  <td><input type="text" class="form-control input-sm" id="name13" runat="server"/></td>
                </tr>
                <tr>
                  <td>14)</td>
                  <td><input type="text" class="form-control input-sm" id="reg14" runat="server"/></td>
                  <td><input type="text" class="form-control input-sm" id="name14" runat="server"/></td>
                </tr>
                <tr>
                  <td>15)</td>
                  <td><input type="text" class="form-control input-sm" id="reg15" runat="server"/></td>
                  <td><input type="text" class="form-control input-sm" id="name15" runat="server"/></td>
                </tr>
                    <tr>
                  <td>16)</td>
                  <td><input type="text" class="form-control input-sm" id="reg16" runat="server"/></td>
                  <td><input type="text" class="form-control input-sm" id="name16" runat="server"/></td>
                </tr>
                <tr>
                  <td>17)</td>
                  <td><input type="text" class="form-control input-sm" id="reg17" runat="server"/></td>
                  <td><input type="text" class="form-control input-sm" id="name17" runat="server"/></td>
                </tr>
                <tr>
                  <td>18)</td>
                  <td><input type="text" class="form-control input-sm" id="reg18" runat="server"/></td>
                  <td><input type="text" class="form-control input-sm" id="name18" runat="server"/></td>
                </tr>
                    <tr>
                  <td>19)</td>
                  <td><input type="text" class="form-control input-sm" id="reg19" runat="server"/></td>
                  <td><input type="text" class="form-control input-sm" id="name19" runat="server"/></td>
                </tr>
                <tr>
                  <td>20)</td>
                  <td><input type="text" class="form-control input-sm" id="reg20" runat="server"/></td>
                  <td><input type="text" class="form-control input-sm" id="name20" runat="server"/></td>
                </tr>
              </tbody>
            </table>

          <!--<button type="button" class="btn btn-success pull-right btn-lg">Save</button>
          <button type="button" class="btn btn-info pull-right btn-lg" style="margin-left: 10px;">Reset</button><br/><br/>-->
          </div>
          <div class="col-sm-3">
              <asp:Button ID="btnSave" runat="server" Text="Save" class="btn btn-success pull-right btn-lg" OnClick="btnSave_Click" />
                  <asp:Button ID="btnReset" runat="server" Text="Reset" class="btn btn-info pull-right btn-lg" style="margin-left: 10px;" />
                  </div>
        
      </div>
    </div>
    </form>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        
            </form>
        
      </body>
</html>
