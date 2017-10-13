<?php

#Page header
$siteTitle = 'Add publisher';
$siteName = 'Add publisher';
$siteDescription = '';

#Including header
include('includes/header.php');
?>

<?php
    # Connecting to the database
    include('includes/connectdb.php');

    # Get data from submit-form and store it in variables
    $publishername = $_POST['publishername'];

    #Prepare SQL-query for insert-operation
    $query = "INSERT INTO publisher (id, publishername) VALUES(NULL, '$publishername')";

    # EXECUTING SQL-query 
    mysqli_query($dbc, $query) or die('Error querying the database!');

?>

 <div id="divspace" class="panel panel-default">
        <div class="panel-heading panel panel-success">Success...</div>
        <div class="panel-body">
            <h2>You have now added <?php echo $publishername ?> to the publisher list.</h2>
        </div><!--END panel-body -->
        <div class="panel-footer">
            <button class="btn btn-info btn-lg center-block" onclick="goBack()" >Go Back
            </button>
        </div><!--END panel-footer-->
    </div><!--END divspace -->
<?php 

    #Close database-connection
    mysqli_close($dbc);
?>
   
<script>
    function goBack() {
        window.history.back();
    }
</script>
     <!-- Sidebar for picture -->
    <aside id="asidepublisher"></aside>  
    
<!-- Including footer -->
<?php include('includes/footer.php'); ?>












