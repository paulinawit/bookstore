<?php

#Page header
$siteTitle = 'Add book';
$siteName = 'Add book';
$siteDescription = 'Please fill out the form below with information about the book.';

include('includes/header.php');
?>

<!-- Icon plus with bootstrap styling--> 
<i class="fa fa-plus-square-o fa-3x" aria-hidden="true"></i>

    <form action = "addingbook.php" method = "post">
      <div class = "form-group">
          <label for = "title"> Title: </label>
          <input type="text" name="title" id="title" class= "form-control">
     </div>
          <!-- END title-field -->
          
     <div class = "form-group">    
          <label for = "publish_date"> Publish date: </label>
          <input type="date" name="publish_date" id = "publish_date" class= "form-control" placeholder = "year-month-day">
        </div> <!-- ENd description -->
          
         <?php 
          #include database connection
          include ('includes/connectdb.php');
          
          #making a SQL-query to the database
          $publisherQuery="SELECT id, publishername FROM publisher";
          
          
          #Execute the SQL query $publisherQuery
          $resultPublisherQuery = mysqli_query($dbc, $publisherQuery);
          
          #making a SQL-query to the database
          $authorQuery="SELECT id, authorname FROM author";
          
          #Execute the SQL query $publisherQuery
          $resultAuthorQuery = mysqli_query($dbc, $authorQuery);
          ?>
          
         <div class="form-group">
            <label for="publisher">Publisher</label> 
             <select name="publisherid" id="publisherid" class= "form-control" >
                 
                 <!-- Looping through php array with publisher-->
                 <?php
                 while($row = 
                mysqli_fetch_array($resultPublisherQuery)):
                 ?>
                 
                 <option value="<?php echo $row['id']; ?>">
                     <?php echo $row['publishername']; ?>
                 </option>
                 <!-- END php loop -->
                 <?php endwhile; ?>
                 
             </select>  
         </div> <!-- END form-group publisher -->
        
        
        <div class="form-group">
            <label for="author">Author</label> 
             <select name="authorid" id="authorid" class= "form-control">
                 
                 <!-- Looping through php array with authors -->
                 <?php
                    while($row = 
                    mysqli_fetch_array($resultAuthorQuery)):
                 ?>
                 
                 <option value="<?php echo $row['id']; ?>">
                     <?php echo $row['authorname']; ?>
                 </option>
                 <!-- END php loop -->
                 <?php endwhile; ?>
                 
             </select>  
         </div> <!-- END form-group authors -->
         
         <!-- Button with bootstrap class styling -->
            <input type="submit" value="Add Book" class="btn btn-info btn-lg center-block"> 
        </form>
        
        <aside id ="asidebook">
            
    <!-- Including footer -->
    <?php include('includes/footer.php');  ?>