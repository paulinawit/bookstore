<?php 

# Page header 
$siteTitle = 'Books';
$siteName = 'Books';
$siteDescription = '';

include('includes/header.php'); 
?>
    
<?php
    #Establishing a connection to the database 
    include('includes/connectdb.php');

# Get data from submit-form and store it in a variables
$title = $_POST['title'];
$publish_date = $_POST ['publish_date'];
$publish_date_SQL = date('Y-m-d', strtotime($publish_date));
$publisherid = $_POST ['publisherid'];
$authorid = $_POST ['authorid'];


#Prepare a SQL-query that will insert data into table 
$insertQuery = "INSERT INTO book (title, publish_date, publisherid) VALUES ('$title', '$publish_date_SQL', '$publisherid')";

#Print to browser console to see query
echo "<script>console.log(\"$insertQuery\")</script>";

#Execute SQL-query $insertQuery
mysqli_query ($dbc, $insertQuery) or die ('Error querying the database insert');

#Get book id, returns the auto generated id used in the previous query
$bookid = mysqli_insert_id($dbc);

#Prepare a SQL-query that will insert data into table 
$insertBookAuthorQuery = "INSERT INTO authorbook (bookid, authorid) VALUES ('$bookid', '$authorid')";

#Print to browser console to see query shows all the information inserted, helps finding bugs
echo "<script>console.log(\"$insertBookAuthorQuery\")</script>";

# Execute SQL-query $insertBookAuthorQuery
mysqli_query ($dbc, $insertBookAuthorQuery) or die ('Error querying the database inert');

?>

<div id="divspace" class="panel panel-default">
        <div class="class-heding panel panel-heading">Success...</div>
        <div class="panel-body">
            <h2>You have now added 
               <?php echo $title;?> to the book list.</h2>
        </div> <!-- END panel-body -->
        <div class="panel-footer">
              <button class="btn btn-info btn-lg center-block" onclick="goBack()" >Go Back</button>
        </div> <!-- END panel-footer -->
    </div> <!-- END divspace -->
    <aside id ="asidebook">
    
<?php 
#Close database-connection 
mysqli_close($dbc);
?>

   <!--  ###### A JS-script that make it possible to return to previus page ##### --> 
  <script>
    function goBack() {
    window.history.back();
    }
  </script> 
    <aside id ="asidebook">
    
    <!-- Including footer -->
    <?php include('includes/footer.php');  ?>