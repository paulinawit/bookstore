<!DOCTYPE html>
<html lang="en">
<head>
  <title><?php echo $siteTitle; ?></title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Bootstrap Style -->
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <!-- Optional Bootstrap theme -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
  <!-- jQuery CSS  -->
  <link rel="stylesheet" href="https://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
  <!--My Stylesheet -->
  <link rel="stylesheet" type="text/css" href="css/style.css">
   <script>
    function goBack() {
    window.history.back();
    }
  </script>

</head>
<body>
<!-- Creating login in navigation-->
<!-- First navigation element - Username with bootstrap styling-->
<nav class="navbar navbar-light bg-light] ">
  <form class="form-inline">
    <div class="input-group">
      <span class="input-group-addon" id="basic-addon1"></span>
      <input type="text" class="form-control" placeholder="Username" aria-label="Username" aria-describedby="basic-addon1">
    </div>
  </form>
  <!-- Second navigation element - Password with bootstrap styling-->
<nav class="navbar navbar-light bg-light">
  <form class="form-inline">
    <div class="input-group">
      <span class="input-group-addon" id="basic-addon1"></span>
      <input type="text" class="form-control" placeholder="Password" aria-label="Password" aria-describedby="basic-addon1">
    </div>
    <!-- Login button with bootstrap styling-->
    <button type="button" class="btn btn-light">Login</button>
  </form>
</nav>
    </nav>
    
	<div class="jumbotron text-center">
		<div class="container">
  			<h1><?php echo $siteName ?></h1>
  			<p><?php echo $siteDescription ?> </p>
		</div>

	</div>

	<div class="container">
  