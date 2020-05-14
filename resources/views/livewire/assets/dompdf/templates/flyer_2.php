  <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Expires" content="Fri, Jan 01 1900 00:00:00 GMT" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Cache-Control" content="no-cache" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
 
<title>Invoice Print </title>
 <link rel="stylesheet" type="text/css" href="../../../../public/assets/plugins/bootstrap/css/bootstrap.min.css">
 
 <style type="text/css">
 body{
  page-break-inside:avoid
 }
 
#ground{
  background-image: url('http://localhost/linc/public/assets/dompdf/templates/template_two.jpg');
  background-size: cover;
  background-repeat: no-repeat;

}
#photoz{
  background-repeat: no-repeat;
  /*width: 98px;
  height: 100px;*/
  z-index: 2;
  position: absolute;
  left: 3px; 
  top:150;
  height: 251px;
  width:321px;
  background-position: top center; 
  background-size: 100%;

}

 </style>
  <body>
    <div class="flip" id="ground">
            <div class="face front"  style="height:480px; width:330px;"> 
                    <?php 
                    $id = $_GET['id'];
                    $con = mysqli_connect('localhost' , 'root' , 'musica' , 'linc.do');
                    $sql = "SELECT * FROM flyer_card WHERE flyer_user_id = $id ";
                    $result=mysqli_query($con, $sql);
                  ?>
                    <div>
                      <?php while ($r=$result->fetch_assoc()){?>
                      <hr style="width:170px; margin-left:80px;">
                      <h5 style="color:#fff !important; margin-left:100px;"> <?php echo $r['name']; ?></h5>
                      <hr style="width:170px; margin-left:80px;">
                    </div>

                    <div style="margin-top:22px; margin-left:70px;">
                      <h4 style="color:#fff;">  <?php echo $r['title']; ?> </h4>     
                    </div>
                    <div style="margin-top:152px; margin-left:120px;">
                      <h5 style="color:black;">  <?php echo $r['detail'];  ?> </h5>   
                    </div>
                     <?php
                    if($r['photo'] != ""){
                    ?>
                    <img src="http://localhost/linc/public/assets/img/logoo.png" style="height:70px; width:90px; margin-left:10px; margin-top:20px; position: relative; z-index:34;">
                    <img id="photoz" src="http://localhost/linc/public/uploads/<?php echo $r['photo']; ?>">
                    <?php }
                    }
                    ?>
                
      </div>
</div>
  </body>
</html>
