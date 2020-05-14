  <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Expires" content="Fri, Jan 01 1900 00:00:00 GMT" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Cache-Control" content="no-cache" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>Invoice Print </title>
 <link rel="stylesheet" type="text/css" href="../../../../assets/plugins/boostrapv3/css/bootstrap.min.css">
 <link rel="stylesheet" type="text/css" href="../../../../assets/plugins/boostrapv3/css/bootstrap-theme.min.css">
 <link rel="stylesheet" type="text/css" href="../../../../assets/plugins/font-awesome/css/font-awesome.css">


 <style type="text/css">

 .flip {
   -webkit-perspective: 800;
   width: 410px;
   height: 290px;
   position: relative;
   margin: 50px auto;
 }
 .flip .card.flipped {
   -webkit-transform: rotatex(-180deg);
 }
 .flip .card {
   width: 100%;
   height: 100%;
   -webkit-transform-style: preserve-3d;
   -webkit-transition: 0.5s;
 }
 .flip .card .face {
   width: 100%;
   height: 100%;
   position: absolute;
   -webkit-backface-visibility: hidden ;
   z-index: 2;
   font-family: Georgia;
   font-size: 3em;
   text-align: center;
   line-height: 200px;
 }
 i.fa-pencil{
   cursor: pointer;
 }
 .flip .card .front {
   position: absolute;
   z-index: 1;
   background: white;
   color: black;
   /*cursor: pointer;*/
 }
 .flip .card .back {
   -webkit-transform: rotatex(-180deg);
   background: #eaeaea;
   color: black;
   cursor: pointer;
 }
 .tab-content{
   background-color: #eaeaea !important;
   height: 3500px !important;
 }
 #ground{
   background-image: url('../../../../assets/img/template1.jpg');
   background-size: 100%;
   background-repeat: no-repeat;
 }
 #ground2{
   background-image: url('assets/img/template2.jpg');
   background-size: 100%;
   background-repeat: no-repeat;
 }
 #ground3{
   background-image: url('assets/img/template3.jpg');
   background-size: 100%;
   background-repeat: no-repeat;
 }
 #ground4{
   background-image: url('assets/img/template4.jpg');
   background-size: 100%;
   background-repeat: no-repeat;
 }
 </style>
  <body>
    <div class="flip" id="flyer1" style="height: 743px;
    width: 834px;">
    <div class="card" id="temp1">
                  <?php
                    $id = $_GET['id'];
                    $con = mysqli_connect('localhost' , 'root' , 'musica' , 'linc.do');
                    $sql = "SELECT * FROM flyer_card WHERE flyer_user_id = $id ";
                    $result=mysqli_query($con, $sql);
                  ?>
                  <?php while ($r=$result->fetch_assoc()){?>



                    <div class="face front" id="ground">
                      <div class="row">
                        <div class="col-md-6">
                          <div>
                            <hr style="width:220px; margin-left:35px;">
                            <h3 style="color:#fff !important;" contenteditable="true" id="fname"> <?php echo $r['name']; ?></h3>
                            <hr style="width:220px; margin-left:35px;">
                          </div>

                          <div style="margin-top:150px;">
                            <h1 contenteditable="true" id="ftitle"><?php echo $r['title']; ?>
                            </h1>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div style="margin-top:190px;">

                            <img src="../../../../uploads/images/flyer_picture/<?php echo $r['detail']; ?>" style="width:200px;height:200px;"/>

                          </div>
                        </div>
                      </div>
                    </div>

                    <?php }

                  ?>

      </div>
    </div>
	</body>
</html>
