<?php

#Page header
$siteTitle = 'Add publisher';
$siteName = 'Add publisher';
$siteDescription = 'Please fill out the form below with information about the publisher.';

#Including header
include('includes/header.php');
?>

<!-- Plus icon with bootstrap styling--> 
 <i class="fa fa-plus-square-o fa-3x" aria-hidden="true"></i>
   <!-- Takes over action field, works together with addingpublisher.php -->
    <form action="addingpublisher.php" method="post">
        <div class="form-group">
            <label for="publishername">Publisher name:</label>
            <input type="text" name="publishername" id="publishername" class="form-control" placeholder="Name">
        </div><!--END publishername field -->
        <!-- Submit button with bootstrap class styling -->
        <input type="submit" value="Add Publisher" class="btn btn-info btn-lg center-block">
        
       
    </form>
    <br>
    <br>
    
    <!-- Sidebar for picture -->
    <aside id="asidepublisher"></aside> 
    
    <!-- Including footer -->
    <?php include('includes/footer.php');  ?>