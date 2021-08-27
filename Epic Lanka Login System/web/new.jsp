
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Admin DashBorad</title>

    <!-- Custom fonts for this template-->
    <link href="assests/css/profile.css" rel="stylesheet" type="text/css">
    <link href="assests/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="assests/css/sb-admin-2.css" rel="stylesheet">
    
    

</head>

<body id="page-top">

    <section id="dashboard">
<div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

        <!-- Sidebar - Brand -->
        <a class="sidebar-brand d-flex align-items-center justify-content-center" href="new.jsp">
            <div class="sidebar-brand-icon rotate-n-15">
                <i class="fas fa-laugh-wink"></i>
            </div>
            <div class="sidebar-brand-text mx-3">Admin</div>
        </a>

        <!-- Divider -->
        <hr class="sidebar-divider my-0">

        <!-- Nav Item - Dashboard -->
        <li class="nav-item active">
            <a class="nav-link" href="#">
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
            
            
            <a class="nav-link" href="newjsp.jsp">
                <i class="fas fa-fw fa-wrench"></i>
                <span>Manage User</span></a>
        </li>

        <!-- Nav Item - Utilities Collapse Menu -->
        <li class="nav-item" id="golog">
            <a class="nav-link collapsed" href="javascript:log()" data-toggle="collapse" data-target="#collapseUtilities" aria-expanded="true" aria-controls="collapseUtilities">
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






                <!-- Topbar Navbar -->
                <ul class="navbar-nav ml-auto">

                    <div class="topbar-divider d-none d-sm-block"></div>

                    <!-- Nav Item - User Information -->
                    <li class="nav-item dropdown no-arrow">
                        <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <span id="txtname" class="mr-2 d-none d-lg-inline text-gray-600 small"><%= request.getParameter("name") %></span>
                            <img id="imguser"class="img-profile rounded-circle" src="#">
                        </a>
                        <!-- Dropdown - User Information -->
                        <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                            <a class="dropdown-item" href="#" id="admincome">
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
            <!-- End of Topbar -->

            <!-- Begin Page Content -->
            <div class="container-fluid">

   

                <!-- Content Row -->
                <div class="row">

                    

                    <!-- Earnings (Monthly) Card Example -->
                    <div class="col-xl-3 col-md-6 mb-4" style="left: 200px">
                        <div class="card border-left-info shadow h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="text-xs font-weight-bold text-info text-uppercase mb-1">Admin Count</div>
                                        <div id="admincount" class="h5 mb-0 font-weight-bold text-gray-800"></div>
                                    </div>
                                    <div class="col-auto">
                                        <i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>


                    <!-- Pending Requests Card Example -->
                    <div class="col-xl-3 col-md-6 mb-4" style="left: 335px">
                        <div class="card border-left-warning shadow h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">User Count</div>
                                        <div id="usercount"class="h5 mb-0 font-weight-bold text-gray-800"></div>
                                    </div>
                                    <div class="col-auto">
                                        <i class="fas fa-comments fa-2x text-gray-300"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Content Row -->

                <div class="row">



                    <!-- Pie Chart -->
                    <div class="col-xl-6 col-lg-5" style="left: 260">
                        <div class="card shadow mb-4">
                            <!-- Card Header - Dropdown -->
                            <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                <h6 class="m-0 font-weight-bold text-primary">Revenue Sources</h6>

                            </div>
                            <!-- Card Body -->
                            <div class="card-body" style="padding-bottom: 0;padding-top: 0">
                                <div class="chart-pie pt-4 pb-2">
                                    <canvas id="myPieChart"></canvas>
                                </div>
                                <div class="mt-4 text-center small">
                    <span class="mr-2">
                      <i class="fas fa-circle text-primary"></i> Active Users
                    </span>
                                    <span class="mr-2">
                      <i class="fas fa-circle text-success"></i> Deactive Users
                    </span>
                                    <span class="mr-2">
                      <i class="fas fa-circle text-info"></i> All Users
                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Content Row -->

            </div>
        </div>
    </div>
</div>
    </section>
                            <section id="profile">  
                                    <div class="container">
                    <div class="main-body">
    
          <nav aria-label="breadcrumb" class="main-breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item" id="goback"><a href="javascript:goto()">Home</a></li>
                <li class="breadcrumb-item active"><a href="manageUser.jsp">Manage Users</a></li>
            </ol>
          </nav>
    
          <div class="row gutters-sm">
            <div class="col-md-4 mb-3">
              <div class="card">
                <div class="card-body">
                  <div class="d-flex flex-column align-items-center text-center">
                      <img src="#" alt="Admin" class="rounded-circle" width="150" id="imgshow">
                    
                      <div class="mt-3">
                        <form action="<%=request.getContextPath()%>/updateAdminImage" method="post" enctype="multipart/form-data">
                        <input class="btn btn-outline-primary" type="file" name="image" id="imgload">
                        <input type="hidden" id="name1" name="username" value=<%= request.getParameter("name") %>>
<!--                        <button class="btn btn-outline-primary" id="uploadImage">edit</button>-->
                        <input type="submit" class="btn btn-outline-primary" value="edit">
                        </form>


                    </div>

                  </div>
                    
                </div>
              </div>

            </div>
            <div class="col-md-8">
              <div class="card mb-3">
                <div class="card-body">
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">User Name</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      <input type="text" id="username1" name="user_name" value=<%= request.getParameter("name") %>>
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
                      <input type="email" id="email1"  disabled >
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
                    <div class="col-sm-3">
                      <h6 class="mb-0">Role</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      <input type="text" id="role1" disabled >
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-12">
                        <button class="btn btn-outline-primary" id="update">edit</button>
                    </div>
                  </div>
                </div>
              </div>

            </div>
          </div>

        </div>
    </div>
                    
                    </section>
                    
                    <section id="log">
                        <div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

        <!-- Sidebar - Brand -->
        <a class="sidebar-brand d-flex align-items-center justify-content-center" href="new.jsp">
            <div class="sidebar-brand-icon rotate-n-15">
                <i class="fas fa-laugh-wink"></i>
            </div>
            <div class="sidebar-brand-text mx-3">Admin</div>
        </a>

        <!-- Divider -->
        <hr class="sidebar-divider my-0">

        <!-- Nav Item - Dashboard -->
        <li class="nav-item ">
            <a class="nav-link" href="javascript:goto(">
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
            
            
            <a class="nav-link" href="newjsp.jsp">
                <i class="fas fa-fw fa-wrench"></i>
                <span>Manage User</span></a>
        </li>

        <!-- Nav Item - Utilities Collapse Menu -->
        <li class="nav-item active">
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

            <div class="input-group">
                <input id="userlog" type="text" class="form-control bg-light border-0 small" placeholder="Search for..." >
              <div class="input-group-append">
                  <button class="btn btn-primary" type="button" id="searchbtn">
                  <i class="fas fa-search fa-sm"></i>
                </button>
              </div>
            </div>


                <!-- Topbar Navbar -->
                <ul class="navbar-nav ml-auto">



                    <div class="topbar-divider d-none d-sm-block"></div>

                    <!-- Nav Item - User Information -->
                    <li class="nav-item dropdown no-arrow">
                        <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <span id="txtname" class="mr-2 d-none d-lg-inline text-gray-600 small"><%= request.getParameter("name") %></span>
                            <img id="imguser"class="img-profile rounded-circle" src="#">
                        </a>
                        <!-- Dropdown - User Information -->
                        <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                            <a class="dropdown-item" href="#" id="admincome">
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
            <!-- End of Topbar -->

            <!-- Begin Page Content -->
            <div class="container">

                

   <div class="container col-md-8">
    <table class="table" id="tbl">
        <thead>
        <tr>
        <th>ID</th>
        <th>Time</th>
        <th>Date</th>
        <th>User Log</th>  
        </tr>
    </thead>
    <tbody id="tblLog">
    </tbody>

  </table>
</div>

        </div>
    </div>
</div>
                    </section>
                                
<script src="assests/vendor/jquery/jquery.min.js"></script>
<script src="assests/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="assests/vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="js/sb-admin-2.min.js"></script>

<!-- Page level plugins -->
<script src="assests/vendor/chart.js/Chart.min.js"></script>

<!-- Page level custom scripts -->
<script src="js/demo/chart-area-demo.js"></script>
<script src="js/demo/chart-pie-demo.js"></script>






<script src="assests/js/jquery-3.6.0.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="assests/js/bootstrap.min.js"></script>
<script src="assests/js/profiledata.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="assests/js/jquery-3.6.0.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="assests/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.0/sweetalert.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Dropify/0.2.2/js/dropify.min.js"></script>


<script>
    
    getimage();
    
    function getimage(){
        
        var name = $("#txtname").text();
        console.log(name);
        
            $.ajax({
        method: 'GET',
        url: '/Epic_Lanka_Login_System/getimage',
        async: true,
        data: {
                
                "name":name,
            },
        dataType: "json",
        success: function (response) {
             allData=response;
                    for (var i=0; i<response.length; i++) {
                        
                            
                            console.log(response[i].image);
                                 $(imguser).attr("src", "images/"+response[i].image);


                                    }
                                }
    });
    }
    
    AdminCount();
    UserCount();
    
    function AdminCount() {
        let role='ADMIN';
    $.ajax({
        url: '/Epic_Lanka_Login_System/getcount',
        method: 'GET',
        async: true,
        data: {
                
                "role":role,
            },
        dataType: 'json',
        success: function (response) {
            let CustomerCount = response.count;
            console.log(response);
            document.getElementById("admincount").innerHTML = response;
        }
    });
}

    function UserCount() {
        let role='USER';
    $.ajax({
        url: '/Epic_Lanka_Login_System/getcount',
        method: 'GET',
        async: true,
        data: {
                
                "role":role,
            },
        dataType: 'json',
        success: function (response) {
            let CustomerCount = response.count;
            console.log(response);
            document.getElementById("usercount").innerHTML = response;
        }
    });
}


activeuser();

var active;
var deactive;
    function activeuser() {
        let status1='ACTIVE ';
        let status2='DEACTIVATE';
    $.ajax({
        url: '/Epic_Lanka_Login_System/getcountbystatus',
        method: 'GET',
        async: true,
        data: {
                
                "status":status1,
            },
        dataType: 'json',
        success: function (response) {
            
            active=response;
            console.log("aaa"+active);
        $.ajax({
        url: '/Epic_Lanka_Login_System/getcountbystatus',
        method: 'GET',
        async: true,
        data: {
                
                "status":status2,
            },
        dataType: 'json',
        success: function (response) {
            
            deactive=response;
            loadpiechart();
        }
    });
        }
    });
}



/////////////////////////////////////////////////////////////////////////////////////////////



function loadpiechart(){
    // Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = 'Nunito', '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#858796';

// Pie Chart Example
var ctx = document.getElementById("myPieChart");

var acount=$("#admincount").text();
var ucount=$("#usercount").text();
var all =Number($("#usercount").text());
var au=Number(active);
var du=Number(deactive);
console.log("cout "+all);
var myPieChart = new Chart(ctx, {
  type: 'doughnut',
  data: {
    labels: ["Active Users", "Deactive Users", "All Users"],
    datasets: [{
      data: [au, du, all],
      backgroundColor: ['#4e73df', '#1cc88a', '#36b9cc'],
      hoverBackgroundColor: ['#2e59d9', '#17a673', '#2c9faf'],
      hoverBorderColor: "rgba(234, 236, 244, 1)",
    }],
  },
  options: {
    maintainAspectRatio: false,
    tooltips: {
      backgroundColor: "rgb(255,255,255)",
      bodyFontColor: "#858796",
      borderColor: '#dddfeb',
      borderWidth: 1,
      xPadding: 15,
      yPadding: 15,
      displayColors: false,
      caretPadding: 10,
    },
    legend: {
      display: false
    },
    cutoutPercentage: 80,
  },
});
}


///////////////////////////////////////////////////////////////////////////////////////////////
    

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


var v1=document.getElementById('dashboard');
var v2=document.getElementById('profile');
var v3=document.getElementById('log');

hello();




$("#admincome").click(function (){
bye();
});

function hello(){
v1.style.display = 'block';
v2.style.display='none';
v3.style.display='none';

}
$("#golog").click(function (){

v1.style.display ='none';
v2.style.display='none';
v3.style.display='block';

});

function bye(){
v1.style.display = 'none';
v2.style.display='block';
v3.style.display='none';

}

function goto(){
location.reload();
}

$("#searchbtn").click(function (){
var logname = $("#userlog").val();

        $("#tblLog").empty();
        $.ajax({
            url: '/Epic_Lanka_Login_System/searchLog',
            method: 'GET',
            async: true,
            data: {
                
                "name":logname,
            },
            dataType: "json",
            contentType:"application/json",
            success: function (response) {
                for (var i=0; i<response.length; i++) {
                    
                    
                    var row = $('<tr><td>' + response[i].id+ '</td><td>'+response[i].time +'</td><td>'+ response[i].date +'</td><td>'+response[i].log + '<td></tr>');
                    $("#tblLog").append(row);
                    
                    
                }
            }
            

        });
//alert(logname);
});
    
    </script>
</body>

</html>
