<?php

#Page header
$siteTitle = 'Add author';
$siteName = 'Add author';
$siteDescription = '';

#Including header
include('includes/header.php');
?>

<?php
    # Connecting to the database
    include('includes/connectdb.php');

    # Get data from submit-form and store it in variables
    $authorname = $_POST['authorname'];

    #Prepare SQL-query for insert-operation
    $query = "INSERT INTO author (id, authorname) VALUES(NULL, '$authorname')";
    #inserts a code from add author by $authorname
    # EXECUTING SQL-query, executed what wrote previously, $dbc comes from connect.db
    mysqli_query($dbc, $query) or die('Error querying the database!');

?>
   <!-- combination of html and php -->
    <div id="divspace" class="panel panel-default">
        <div class="panel-heading panel panel-success">Success...</div>
        <div class="panel-body">
            <h2>You have now added <?php echo $authorname ?> to the author archive.</h2>
        </div><!--END panel-body -->
        <div class="panel-footer">
            <button class="btn btn-info btn-lg center-block" onclick="goBack()" >Go Back</button>
        </div>
        <!-- END panel-footer, button styled with bootstrap-->
    </div>
    <!--END divspace -->
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

<aside id="asideauthor"></aside> 

<!-- Including footer -->
<?php include('includes/footer.php'); ?>
    
    











