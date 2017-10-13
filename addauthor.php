<?php

#Page header
$siteTitle = 'Add author';
$siteName = 'Add author';
$siteDescription = 'Please fill out the form below with information about the author.';

#Including header
include('includes/header.php');
?>

<!-- Icon plus with bootstrap styling--> 
<i class="fa fa-plus-square-o fa-3x" aria-hidden="true"></i>

<!-- Takes over action field, works together with addingauthor.php -->
    <form action="addingauthor.php" method="post" >    
        <div class="form-group">
            <label for="authorname">Author name:</label>   
            <input type="text" name="authorname" id="authorname" class="form-control" placeholder="first and last name"><br>
              <!-- Button with bootstrap class styling -->
            <input type="submit" value="Add Author" class="btn btn-info btn-lg center-block"> 
          </div><!--END form-group -->
    </form>
    <!-- Sidebar for picture -->
    <aside id="asideauthor"></aside> 
    
    <!-- Including footer -->
    <?php include('includes/footer.php');  ?>
    
    
    
    
    
    
    
    
    
    
    
    