<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>index</title>
		<link rel="stylesheet" href="controllers/css/bootstrap.min.css">
	</head>
	
	<body>
    
    	<div class="container">
<form role="form">
<input type="hidden" id="publickay">
<input type="hidden" id="privatekey">
<div class="form-group">
<label for="username">Full name (on the card)</label>
<div class="input-group">
	<div class="input-group-prepend">
		<span class="input-group-text"><i class="fa fa-user"></i></span>
	</div>
	<input type="text" class="form-control" name="username" placeholder="" id="name">
</div> <!-- input-group.// -->
</div> <!-- form-group.// -->

<div class="form-group">
<label for="cardNumber">Card number</label>
<div class="input-group">
	<div class="input-group-prepend">
		<span class="input-group-text"><i class="fa fa-credit-card"></i></span>
	</div>
	<input type="text" class="form-control" name="cardNumber" placeholder="" id="cardno">
</div> <!-- input-group.// -->
</div> <!-- form-group.// -->

<div class="row">
    <div class="col-sm-8">
        <div class="form-group">
            <label><span class="hidden-xs">Expiration</span> </label>
        	<div class="form-inline">
        		<select class="form-control" style="width:45%" id="month">
				  <option>MM</option>
				  <option>01 - Jan</option>
				  <option>02 - Feb</option>
				  <option>03 - Mar</option>
				  <option>04 - Apr</option>
				  <option>05 - May</option>
				  <option>06 - Jun</option>
				  <option>07 - Jul</option>
				  <option>08 - Aug</option>
				  <option>09 - Sep</option>
				  <option>10 - Oct</option>
				  <option>11 - Nov</option>
				  <option>12 - Dec</option>
				  
				</select>
	            <span style="width:10%; text-align: center"> / </span>
	            <select class="form-control" style="width:45%" id="year">
				  <option>YY</option>
				  <option value="2018">2018</option>
				  <option value="2019">2019</option>
				  <option value="2020">2020</option>
				  <option value="2021">2021</option>
				  <option value="2022">2022</option>
				  <option value="2023">2023</option>
				  <option value="2024">2024</option>
				</select>
        	</div>
        </div>
    </div>
    <div class="col-sm-4">
        <div class="form-group">
            <label data-toggle="tooltip" title="" data-original-title="3 digits code on back side of the card">CVV <i class="fa fa-question-circle"></i></label>
            <input class="form-control" required="" type="text">
        </div> <!-- form-group.// -->
    </div>
</div> <!-- row.// -->
<button class="subscribe btn btn-primary btn-block" type="button" onclick="addPayment()"> Confirm  </button>
</form>
    	</div>
    
		<script type="text/javascript" src="controllers/js/jquery-3.4.1.min.js"></script>
		<script type="text/javascript" src="controllers/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="controllers/js/validation.js"></script>
		
		<script>
			function addPayment(){
				var orderId = '';
				var name = $('#name').val();
				var cardno = $('#cardno').val();
				var year = $('#year').val();
				var month = $('#month').val();
				var publickey = $('#publickey').val();
				var privatekey = $('#privatekey').val();
				var cvc = $('#cvc').val();
				
				if(name != '' && cardno != '' && year != '' && month != ''){
					$.ajax({
						url:'payments',
						type:'post',
						data:{'orderId':orderId,'publickey':publickey,'privateKey':privateKey,'cardNo':cardno,'cvc':cvc},
						success:function(response){
							console.log(response);
						},
						error:function(){
							console.log(error.responseText);
						}
					});
				}
			}
		
		</script>
    
    </body>
    
  </html>