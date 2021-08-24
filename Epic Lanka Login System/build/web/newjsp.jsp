<%-- 
    Document   : newjsp
    Created on : Aug 24, 2021, 12:35:49 PM
    Author     : MCTech
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Admin DashBorad</title>

    <link href="https://fonts.googleapis.com/css?family=Nunito:400,600,700,800&display=swap" rel="stylesheet">
    <link href="assests/css/bootstrap.css" rel="stylesheet" type="text/css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/Dropify/0.2.2/css/dropify.css" rel="stylesheet">
    <link href="assests/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="assests/css/sb-admin-2.css" rel="stylesheet">

</head>

<body id="page-top">

<!-- Page Wrapper -->
<div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

        <!-- Sidebar - Brand -->
        <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
            <div class="sidebar-brand-icon rotate-n-15">
                <i class="fas fa-laugh-wink"></i>
            </div>
            <div class="sidebar-brand-text mx-3"> Admin <sup>2</sup></div>
        </a>

        <!-- Divider -->
        <hr class="sidebar-divider my-0">

        <!-- Nav Item - Dashboard -->
        <li class="nav-item active">
            <a class="nav-link" href="new.jsp">
                <i class="fas fa-fw fa-tachometer-alt"></i>
                <span>Dashboard</span></a>
        </li>

        <!-- Divider -->
        <hr class="sidebar-divider">

        <!-- Heading -->
        <div class="sidebar-heading">
            Interface
        </div>

        <!-- Nav Item - Pages Collapse Menu -->
        <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
                <i class="fas fa-fw fa-wrench"></i>
                <span>Manage User</span>
            </a>
        </li>

        <!-- Nav Item - Utilities Collapse Menu -->
        <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities" aria-expanded="true" aria-controls="collapseUtilities">
                <i class="fas fa-fw fa-cog"></i>
                <span>User Log</span>
            </a>
        </li>





    </ul>


    <div id="content-wrapper" class="d-flex flex-column">

        <!-- Main Content -->
        <div id="content">

            <!-- Topbar -->
            <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                <!-- Sidebar Toggle (Topbar) -->
                <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                    <i class="fa fa-bars"></i>
                </button>




                <!-- Topbar Navbar -->
                <ul class="navbar-nav ml-auto">



                    <div class="topbar-divider d-none d-sm-block"></div>

                    <!-- Nav Item - User Information -->
                    <li class="nav-item dropdown no-arrow">
                        <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <span class="mr-2 d-none d-lg-inline text-gray-600 small">Valerie Luna</span>
                            <img class="img-profile rounded-circle" src="https://source.unsplash.com/QAB-WJcbgJk/60x60">
                        </a>
                        <!-- Dropdown - User Information -->
                        <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                            <a class="dropdown-item" href="#">
                                <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                Profile
                            </a>

                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                Logout
                            </a>
                        </div>
                    </li>

                </ul>

            </nav>
            <div class="container-fluid">


                <div class="main-body" style="text-align: center">


                    <div class="row gutters-sm">


                        <div class="container col-md-14">
                            <table class="table" id="tbl">
                                <thead>
                                <tr>
                                    <th>Edit</th>
                                    <th>ID</th>
                                    <th>Image</th>
                                    <th>User Name</th>
                                    <th>Address</th>
                                    <th>Email Address</th>
                                    <th>Conatct</th>
                                    <th>Password</th>
                                    <th>Status</th>
                                    <th>delete</th>
                                    <th>Activate</th>
                                    <th>Deactivate</th>

                                </tr>
                                </thead>
                                <tbody id="tblUser">

                                </tbody>

                            </table>
                        </div>



                        <div class="col-md-8 container">
                            <div class="card mb-3">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">User ID</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            <input type="text" id="id1" >
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">User Name</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            <input type="text" id="username1" name="user_name">
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Address</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            <input type="text" id="address1" >
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Email</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            <input type="email" id="email1" disabled >
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Mobile</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            <input type="text" id="conatct1" >
                                        </div>
                                    </div>

                                    <hr>

                                    <div class="row">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Password</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                            <input type="text" id="password1" >
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <button class="btn btn-outline-primary" id="updateUser">edit</button>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>


                    </div>

                </div>

            </div>
        </div>
    </div>
</div>
<!-- Bootstrap core JavaScript-->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="js/sb-admin-2.min.js"></script>

<!-- Page level plugins -->
<script src="vendor/chart.js/Chart.min.js"></script>

<!-- Page level custom scripts -->
<script src="js/demo/chart-area-demo.js"></script>
<script src="js/demo/chart-pie-demo.js"></script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="assests/js/jquery-3.6.0.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="assests/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.0/sweetalert.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Dropify/0.2.2/js/dropify.min.js"></script>
<script src="assests/js/profiledata.js"></script>

<script type="text/javascript">

    loadAllData();

    $('document').ready(function () {
        $("#imgload").change(function () {
            if (this.files && this.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#imgshow').attr('src', e.target.result);
                }
                reader.readAsDataURL(this.files[0]);
            }
        });
    });

    function productDisplay(){
        var table = document.getElementById('tbl');

        for(var i = 0; i < table.rows.length; i++)
        {
            table.rows[i].onclick = function()
            {
                document.getElementById("id1").value = this.cells[1].innerHTML;
                document.getElementById("username1").value = this.cells[3].innerHTML;
                document.getElementById("address1").value = this.cells[4].innerHTML;
                document.getElementById("email1").value = this.cells[5].innerHTML;
                document.getElementById("conatct1").value = this.cells[6].innerHTML;
                document.getElementById("password1").value = this.cells[7].innerHTML;
            };
        }
    }


    $('#updateUser').click(function () {

        var id = $("#id1").val();
        var userName = $("#username1").val();
        var address = $("#address1").val();
        var email = $("#email1").val();
        var contact = $("#conatct1").val();
        var password = $("#password1").val();


        console.log("hello")
        console.log(contact);
        $.ajax({
            url: '/Epic_Lanka_Login_System/updateById',
            type: 'PUT',
            async: true,
            contentType: "application/json",
            data:JSON.stringify( {
                "id":id,
                "user_name":userName,
                "address":address,
                "email_address":email,
                "contact":contact,
                "password":password,
            }),
            success: function (response,textState, xhr) {
                if (response.operation==="success"){
                    swal("User Update Success", "Success");
                    loadAllData();
                    clear();
                }else{

                    swal("User Update Fail", "Fail");
                }

            },

        });
    });


    function loadAllData(){
        $("#tblUser").empty();
        $.ajax({
            url: '/Epic_Lanka_Login_System/getAllUsers',
            method: 'GET',
            async: true,
            dataType: "json",
            contentType:"application/json",
            success: function (response) {
                for (var i=0; i<response.length; i++) {

                    var url = 'images/'+response[i].image;
                    console.log(url);

                    var row = $('<tr><td>' + "<button type='button' onclick='productDisplay();' class='btn btn-default'>" +
                        "<span class='glyphicon glyphicon-edit' />" +
                        "</button>"+ '</td><td>' + response[i].id + '</td><td id="img1" >' + "<img style="+"width:100px;"+" src="+url+" />" +'</td><td>' + response[i].user_name + '</td><td>' + response[i].address + '</td><td>' + response[i].email_address + '</td><td>' + response[i].contact + '</td><td>' + response[i].password + '</td><td>'+response[i].status + '</td><td>' + "<button type='button' onclick='productDelete();' class='btn btn-default'>" +
                        "<span class='glyphicon glyphicon-trash' />" +
                        "</button>" + '</td><td>'+ "<button type='button' onclick='userActivate();' class='btn btn-default'>" +
                        "<span class='glyphicon glyphicon-ok' />" +
                        "</button>" + '</td><td>'+ "<button type='button' onclick='userDeActivate();' class='btn btn-default'>" +
                        "<span class='glyphicon glyphicon-remove' />" +
                        "</button>"  + '</td>></tr>');
                    $("#tblUser").append(row);


                }
            }


        });
    }


    function userActivate(){
        var tbl1 = document.getElementById('tbl');

        for(var i = 0; i < tbl1.rows.length; i++){
            tbl1.rows[i].onclick = function(){
                var id= this.cells[1].innerHTML;
                var state= "ACTIVE ";





                $.ajax({
                    url: '/Epic_Lanka_Login_System/userActivate',
                    type: 'PUT',
                    async: true,
                    contentType: "application/json",
                    data:JSON.stringify( {
                        "id":id,
                        "state":state,
                    }),
                    success: function (response,textState, xhr) {
                        if (response.operation==="success"){
                            swal("User Activated", "Success");
                            loadAllData();
                            clear();
                        }else{

                            swal("User Activated Fail", "Fail");
                        }

                    },

                });



            }
        }
    }

    function userDeActivate(){
        var tbl1 = document.getElementById('tbl');

        for(var i = 0; i < tbl1.rows.length; i++){
            tbl1.rows[i].onclick = function(){
                var id= this.cells[1].innerHTML;
                var state= "DEACTIVATE";



                $.ajax({
                    url: '/Epic_Lanka_Login_System/userActivate',
                    type: 'PUT',
                    async: true,
                    contentType: "application/json",
                    data:JSON.stringify( {
                        "id":id,
                        "state":state,
                    }),
                    success: function (response,textState, xhr) {
                        if (response.operation==="success"){
                            swal("User Deactivated", "Success");
                            loadAllData();
                            clear();
                        }else{

                            swal("User Deactivated Fail", "Fail");
                        }

                    },

                });

            }
        }
    }


    function productDelete(){
        var table = document.getElementById('tbl');


        for(var i = 0; i < table.rows.length; i++)
        {
            table.rows[i].onclick = function()
            {
                var id= this.cells[1].innerHTML;
                $.ajax({
                    url: '/Epic_Lanka_Login_System/deleteUser',
                    method: 'DELETE',
                    async: true,
                    data: JSON.stringify({
                        id:id
                    }),
                    contentType: "application/json",
                    success: function (response) {
                        if (response.operation==="success"){
                            loadAllData();
                            swal("User Delete Success", "Success");

                        }else{
                            swal("User Delete Success", "Success");
                        }
                    },

                });
            };
        }

//    console.log(id);

    }


    function clear(){
        $("#id1").val("");
        $("#username1").val("");
        $("#address1").val("");
        $("#email1").val("");
        $("#conatct1").val("");
        $("#password1").val("");
    }



</script>

</body>

</html>

