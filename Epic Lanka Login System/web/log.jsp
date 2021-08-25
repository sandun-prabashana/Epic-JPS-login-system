
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
        <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Nunito:400,600,700,800&display=swap" rel="stylesheet">
        <link href="assests/css/profile.css" rel="stylesheet" type="text/css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" rel="stylesheet">
	        <link href="https://cdnjs.cloudflare.com/ajax/libs/Dropify/0.2.2/css/dropify.css" rel="stylesheet">
        <title>Success</title>
    </head>
    <body>
    <div class="container">
    <div class="main-body">
    
          <nav aria-label="breadcrumb" class="main-breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="new.jsp">Home</a></li>
              <li class="breadcrumb-item active">User Log</li>
            </ol>
          </nav>
    
            <div class="input-group">
                <input id="a" type="text" class="form-control bg-light border-0 small" placeholder="Search for..." >
              <div class="input-group-append">
                <button class="btn btn-primary" type="button">
                  <i class="fas fa-search fa-sm"></i>
                </button>
              </div>
            </div>
        
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
$("#searchbtn").click(function (){
var logname = $("#a").val();
//
//        $("#tblLog").empty();
//        $.ajax({
//            url: '/Epic_Lanka_Login_System/searchLog',
//            method: 'GET',
//            async: true,
//            data: {
//                
//                "name":name,
//            },
//            dataType: "json",
//            contentType:"application/json",
//            success: function (response) {
//                for (var i=0; i<response.length; i++) {
//                    
//                    
//                    var row = $('<tr><td>' + response[i].id+ '</td>></tr>');
//                    $("#tblLog").append(row);
//                    
//                    
//                }
//            }
//            
//
//        });
alert(logname);
});
</script>
</body>
</html>
