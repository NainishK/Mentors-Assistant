<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="aspx_ChangePassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forgot Password</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="../files/css/styles.css" />
</head>
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
                    <li class="nav-item active">
                    <a class="nav-link" href="/html/MyLogin.html">Login<span class="sr-only">(current)</span></a>
                </li>
                </ul>
            </div>
        </nav>
        <!-- === BEGIN CONTENT === -->
        <div id="content">
            <div class="container-fluid">
                <div class="row margin-vert-30">
                    <!-- Register Box -->
                    <div class="col-md-4"></div>
                    <div class="col-md-4 col-md-offset-3 col-sm-offset-3 mydiv1">

                        <div class="signup-header"><br />
                            <h2 class="text-center">Change Password</h2>
                        </div>
                        <br />
                        <div class="row myrow">
                            <div class="col-5 text-left">
                                <label>
                                    Email:
                                </label>
                            </div>

                            <asp:TextBox ID="txtEmail" runat="server" Width="250" /><br />
                        </div>

                        <div class="row myrow">
                            <div class="col-5 text-left">
                                <label>
                                    Old Password:
                                </label>
                            </div>
                            <asp:TextBox ID="txtPswd" runat="server" Width="250" TextMode="Password" /><br />
                        </div>

                        <div class="row myrow">
                            <div class="col-5 text-left">
                                <label>
                                    New Password:
                                </label>
                            </div>
                            <asp:TextBox ID="txtNPswd" runat="server" Width="250" TextMode="Password" /><br />
                        </div>

                        <div class="row myrow">
                            <div class="col-5 text-left">
                                <label>
                                    Confirm New Password:
                                </label>
                            </div>
                            <asp:TextBox ID="txtCNPswd" runat="server" Width="250" TextMode="Password" />
                        </div>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Passwords must match!" ControlToCompare="txtNPswd" ControlToValidate="txtCNPswd" ForeColor="#FF3300"></asp:CompareValidator>
                        <br />
                        <asp:Label ID="lblMessage" runat="server" />

                        <div class="row myrow">
                            <div class="col-4"></div>
                            <div class="col-4 text-center">
                                <asp:Button Text="Change" runat="server" class="btn btn-info pull-right btn-lg" OnClick="Change_Pswd" /><br />
                                <br />
                            </div>
                        </div>
            </div>
        </div>
    </form>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>
