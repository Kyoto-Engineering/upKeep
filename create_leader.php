<?php include "inc/header.php";?>
  <div class="content-wrapper">
    <div class="container-fluid">
      <!-- Breadcrumbs-->
      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="#">Dashboard</a>
        </li>
        <li class="breadcrumb-item active">My Dashboard</li>
      </ol>
      <!-- Icon Cards-->
 <div class="row">
  <div class="col-md-6">
 <form action="" method="post">
 <h3>Leader Creation</h3>
  <div class="form-group">
    <label>Name</label>
    <input type="text" class="form-control" placeholder="Name">
  </div>
  <div class="form-group">
    <label>Department Name</label>
   <select class="custom-select">
  <option selected>Select From Department</option>
  <option value="1">HR</option>
  <option value="2">IT</option>
  <option value="3">Logistics</option>
</select>
</div>
  <div class="form-group">
    <label>Flat/House/Road No.</label>
    <input type="text" class="form-control" placeholder="Flat/House/Road No.">
  </div>
  <div class="form-group">
    <label>Division</label>
   <select class="custom-select">
  <option selected>Select From Division</option>
  <option value="1">Rasid</option>
  <option value="2">Zamil</option>
  <option value="3">Kalki</option>
</select>
</div>
  <div class="form-group">
    <label>District</label>
   <select class="custom-select">
  <option selected>Select From District</option>
  <option value="1">Rasid</option>
  <option value="2">Zamil</option>
  <option value="3">Kalki</option>
</select>
</div>
  <div class="form-group">
    <label>Upazila</label>
   <select class="custom-select">
  <option selected>Select From Upazila</option>
  <option value="1">Rasid</option>
  <option value="2">Zamil</option>
  <option value="3">Kalki</option>
</select>
</div>
<div class="form-group">
    <label>Postal Area</label>
   <select class="custom-select">
  <option selected>Select From Postal Area</option>
  <option value="1">Rasid</option>
  <option value="2">Zamil</option>
  <option value="3">Kalki</option>
</select>
</div>
<div class="form-group">
    <label>Postal Code</label>
    <input type="text" class="form-control" placeholder="Postal Code">
  </div>
  <div class="form-group">
    <label>Phone No.</label>
    <input type="text"  class="form-control" placeholder="Phone No.">
  </div>
  <div><input type="button" name="btn" id="btn" value="Submit"></div>
</form>
  </div>
 </div>


      
    </div>
    <!-- /.container-fluid-->
  <?php include "inc/footer.php"; ?>