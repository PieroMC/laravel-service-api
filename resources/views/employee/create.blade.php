@extends('layout.template')

@section('content')
<div class="row">
	<div class="col-md-12">
        <div class="tile">
            <h3 class="tile-title">Register Employee</h3>
            <div class="tile-body">
              	<form class="form-horizontal">
              		<div class="row">
	              		<div class="col-md-6">
			                <div class="form-group row">
			                    <label class="control-label col-md-3">Name</label>
			                  	<div class="col-md-8">
			                    	<input class="form-control" type="text" placeholder="Enter names" name="name">
			                  	</div>
			                </div>
			                <div class="form-group row">
				                <label class="control-label col-md-3">Lastname</label>
				                <div class="col-md-8">
				                    <input class="form-control" type="text" placeholder="Enter lastnames" name="lastname">
				                </div>
			                </div>
			                <div class="form-group row">
			                	<label class="control-label col-md-3">Document Type</label>
			                	<div class="form-group col-md-8">
			                		<select class="form-control" name="document_type_id">
			                			@foreach ($document_type as $element)
			                			<option value="{{$element->id}}">{{$element->document}}</option>
			                			@endforeach
			                		</select>
			                	</div>
			                </div>
			                <div class="form-group row">
				                <label class="control-label col-md-3">Number document</label>
				                <div class="col-md-8">
				                    <input class="form-control" type="text" placeholder="Enter number document" name="number_document">
				                </div>
			                </div>	
			                <div class="form-group row">
				                <label class="control-label col-md-3">Date birth</label>
				                <div class="col-md-8">
				                    <input class="form-control" id="demoDate" type="text" placeholder="Select Date" name="date_birth">
				                </div>
			                </div>	
			            </div>    
		                <div class="col-md-6" >
		                	<div class="form-group row">
		                  		<label class="control-label col-md-3">Email</label>
		                  		<div class="col-md-8">
		                    		<input class="form-control" type="email" placeholder="Enter email address" name="email">
		                  		</div>
		                	</div>
			                <div class="form-group row">
				                <label class="control-label col-md-3">Number telephone</label>
				                <div class="col-md-8">
				                    <input class="form-control" type="text" placeholder="Enter number telephone" name="telephone">
				                </div>
			                </div>	                	
		                	<div class="form-group row">
		                  		<label class="control-label col-md-3">Address</label>
				                <div class="col-md-8">
				                    <textarea class="form-control" rows="3" placeholder="Enter your address" name="address"></textarea>
				                </div>
		                	</div>
			                <div class="form-group row">
			                	<label class="control-label col-md-3">Workstation</label>
			                	<div class="form-group col-md-8">
			                		<select class="form-control" name="workstation_id">
			                			@foreach ($workstation as $element)
			                			<option value="{{$element->id}}">{{$element->work}}</option>
			                			@endforeach
			                		</select>
			                	</div>
			                </div>
			            </div>
			        </div>
			        <div class="row">
			        	<div class="col-md-6">
			               	<div class="form-group row">
				                <label class="control-label col-md-3">Username</label>
				                <div class="col-md-8">
				                    <input class="form-control" type="text" placeholder="Enter Usermane" name="username">
				                </div>
			                </div>	 
			               	<div class="form-group row">
				                <label class="control-label col-md-3">Password</label>
				                <div class="col-md-8">
				                    <input class="form-control" type="password" placeholder="Enter password" name="password">
				                </div>
			                </div>
			            </div>    
		            </div>    	
	                <div class="tile-footer">
              			<div class="row">
                			<div class="col-md-8 col-md-offset-3">
                  				<button class="btn btn-primary" type="button"><i class="fa fa-fw fa-lg fa-check-circle"></i>Register</button>&nbsp;&nbsp;&nbsp;<a class="btn btn-secondary" href="#"><i class="fa fa-fw fa-lg fa-times-circle"></i>Cancel</a>
                			</div>
              			</div>
            		</div>
              </form>
            </div>
            
          </div>
        </div>
</div>
@endsection

@section('script')
	<script type="text/javascript" src="/js/bootstrap-datepicker.min.js"></script>
	<script type="text/javascript">
		
		$('#demoDate').datepicker({
	      	format: "yyyy/mm/dd",
	      	autoclose: true,
	      	todayHighlight: true
      	});

	</script>
@endsection