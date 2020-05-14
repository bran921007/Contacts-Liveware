  <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Expires" content="Fri, Jan 01 1900 00:00:00 GMT" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Cache-Control" content="no-cache" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>Invoice Print </title>

<style type="text/css">
/*<![CDATA[*/

        div.break {page-break-before:always}
        TABLE    { display: table }
        TR       { display: table-row }
        THEAD    { display: table-header-group }
        TBODY    { display: table-row-group }
        TFOOT    { display: table-footer-group;}
        COL      { display: table-column }
        COLGROUP { display: table-column-group }
        TD, TH   { display: table-cell }
        CAPTION  { display: table-caption }

        body {
        height:100&#37;;
        margin-top: 10mm;
        margin-bottom: 10mm;

         font-family: tahoma ,verdana ,Arial, Helvetica, sans-serif;
         font-size: 10px;
         padding-bottom:120px
        }


        td{ font-family:tahoma ,verdana ,Arial, Helvetica, sans-serif;font-size:10px}

        .break { page-break-before: always; }

        .td
        {
        font-family: tahoma ,verdana ,Arial, Helvetica, sans-serif;
        font-size: 10px;

        }
/*]]>*/
</style>

<style type="text/css">
/*<![CDATA[*/
 td.c10 {border:solid;border-color:black;border-width:2px;border-bottom: solid 4px}
 td.c9 {vertical-align:bottom}
 table.c8 {margin:0px;border-style:solid;border-width:1px;border-color:black;border-top:0}
 td.c7 {border-top:1px}
 td.c6 {background-color:#BBBBBB}
 td.c5 {padding:4px;border:solid;border-color:black;border-width:1px;border-left:0;border-right:0}
 td.c4 {padding:3px}
 td.c3 {border:solid;border-color:black;border-width:1px;border-left:0;border-right:0}
 td.c2 {border:solid;border-color:black;border-width:1px;border-left:0;border-right:0;padding:5px}
 td.c1 {vertical-align:top}
/*]]>*/
</style>

</head>

<body>

<table  border="0" cellspacing="0" cellpadding="0" align="center"
<thead >
<tr>

</tr>
<tr>
   <?php
    $id = $_GET['id'];
    $con = mysqli_connect('localhost' , 'root' , '' , 'linc.do');
    $sql = "SELECT * FROM business_card WHERE user_id = $id ";
    $result=mysqli_query($con, $sql);
    ?>
    <?php while ($r=$result->fetch_assoc()){?>
	<td style="width:350px; height:230px;" class="td">
        <table width="85%" border="0" cellspacing="0" cellpadding="0" align="center">
                                <tr>
                        <td align="left" class="td"> <h1 style="color:#ff5400; margin-top:-30px;">  <?php echo $r['partner']; ?> </h1> </td>
                </tr>

        </table>


                <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
               		<img src="../../../assets/img/logoo.png" style="margin-left:115px;">
                </table>
                 <tr>
                        <td align="center" class="td"> <h1 style="color:black; margin-top:-40px; margin-left:-60px;">  <?php echo $r['people']; ?> </h1> </td>
                </tr>
        </td>
</tr>
<tr>
	<td style="width:350px; height:230px; background-color:#eee;" class="break">



                <table width="100%" border="0" cellspacing="0" cellpadding="0" align="left" style="margin-left:28px;">
                	<tr>
                		<td > <h2 style="color:#381e42;">  <?php echo $r['name']; ?> </h2> </td>

                	</tr>
                	<tr> <td > <h2 style="color:#ff5400;">  <?php echo $r['title']; ?> </h2> </td></tr>
                	<tr>

                          <td style="font-size:15px;">Mobile</td>
                          <td style="font-size:15px; "> <?php echo $r['mobile']; ?> </td>

                        </tr>
                        <tr>
                          <td style="font-size:15px;">Telephone</td>
                          <td style="font-size:15px;"><?php echo $r['telephone']; ?> </td>

                        </tr>
                        <tr>
                          <td style="font-size:15px;">Correo.</td>
                          <td style="font-size:15px; "> <?php echo $r['website']; ?> </td>

                        </tr>
                        <tr>
                          <td style="font-size:15px;">Twitter</td>
                          <td style="font-size:15px; "> <?php echo $r['tweet']; ?> </td>
                          <td style="color:#ff5400; "> <strong style="margin-right:35px !important; "><?php echo $r['linc']; ?></strong> </td>

                        </tr>

                        <tr>
                          <td style="font-size:15px;">Address</td>
                          <td style="font-size:15px; "> <?php echo $r['address']; }?> </td>

                        </tr>

                </table>


        </td>
</tr>
</thead>
<tfoot ><tr><td class="td">&nbsp;</td></tr></tfoot >

<tbody>
<!-- printing header -->

</tbody>

</table>



</div>
</td>
</tr>
</tbody>
</table>
</body>
</html>
