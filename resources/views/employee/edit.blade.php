@extends('layout.template')

@section('content')
<div class="row">
	<div class="col-md-12">
        <div class="tile">
            <h3 class="tile-title">Edit Employee</h3>
            <div class="tile-body">

              	<form class="form-horizontal" method="PUT" action="{{ route('employee.update', $employee) }}">
              		@csrf

              		<div class="row">
	              		<div class="col-md-6">
			                <div class="form-group row">
			                    <label class="control-label col-md-3">Name</label>
			                  	<div class="col-md-8">

                                    <input id="name" class="form-control" type="text" placeholder="Enter names" name="name" 
                                    value="{{$employee->name}}" required>


			                  	</div>
			                </div>
			                <div class="form-group row">
				                <label class="control-label col-md-3">Lastname</label>
				                <div class="col-md-8">

                                    <input class="form-control" type="text" placeholder="Enter lastnames" name="lastname" 
                                    value="{{$employee->lastname}}" required>

				            

				                </div>
			                </div>
			                <div class="form-group row">
			                	<label class="control-label col-md-3">Document Type</label>
			                	<div class="form-group col-md-8">

			                		<select class="form-control" name="document_type_id" required>
			                			@foreach ($document_type as $element)
                                        <option value="{{$element->id}}"
                                            @if($employee->document_type->id == $element->id)
                                                selected ="selected"
                                            @endif
                                            >{{$element->document}}</option>
			                			@endforeach
			                		</select>
			                	</div>
			                </div>
			                <div class="form-group row">
				                <label class="control-label col-md-3">Number document</label>
				                <div class="col-md-8">

                                    <input id="number_document" class="form-control" type="text" placeholder="Enter number document" name="number_document" 
                                    value="{{$employee->number_document}}"  required>
				                </div>
			                </div>	
			                <div class="form-group row">
				                <label class="control-label col-md-3">Date birth</label>
				                <div class="col-md-8">

                                    <input class="form-control" id="demoDate" type="text" placeholder="Select Date" name="date_birth" 
                                    value="{{$employee->date_birth}}" required>
				                </div>
			                </div>	
			            </div>    
		                <div class="col-md-6" >
		                	<div class="form-group row">
		                  		<label class="control-label col-md-3">Email</label>
		                  		<div class="col-md-8">

                                    <input class="form-control" type="email" placeholder="Enter email address" name="email"
                                    value="{{$employee->email}}"  required>
		                  		</div>
		                	</div>
			                <div class="form-group row">
				                <label class="control-label col-md-3">Number telephone</label>
				                <div class="col-md-8">

                                    <input class="form-control" type="text" placeholder="Enter number telephone" name="telephone" 
                                    value="{{$employee->telephone}}"  required>
				                </div>
			                </div>	                	
		                	<div class="form-group row">
		                  		<label class="control-label col-md-3">Address</label>
				                <div class="col-md-8">

				                    <textarea class="form-control" rows="3" placeholder="Enter your address" name="address" required>{{$employee->address}}
                                    </textarea>

				                </div>
		                	</div>
			                <div class="form-group row">
			                	<label class="control-label col-md-3">Workstation</label>
			                	<div class="form-group col-md-8">

			                		<select class="form-control" name="workstation_id" required>
			                			@foreach ($workstation as $element)
                                        <option value="{{$element->id}}"
                                            @if($employee->workstation->id == $element->id)
                                                selected ="selected"
                                            @endif
                                            >{{$element->work}}</option>
			                			@endforeach
			                		</select>
			                	</div>
			                </div>
			            </div>
			        </div>
			        <div class="row d-none">

			        	<div class="toggle lg px-4 pb-2">
			                <label>
			                    <input type="checkbox" onchange='handleChange(this);'><span class="button-indecator"></span>
			                </label>
			                <label>Generate user automatically</label>
                		</div>
			        	<div class="col-md-10">
			        		<div class="row">
			        			<div class="col-md-6">
			        				<div class="form-group row">
				                		<label class="control-label col-md-3">Username</label>
				                		<div class="col-md-8">
				                    		<input id="username" class="form-control" type="text" placeholder="Enter Usermane" name="username" required>
				                		</div>
			                		</div>
			        			</div>
			        			<div class="col-md-6">
			        				<div class="form-group row">
				                		<label class="control-label col-md-3">Password</label>
				                		<div class="col-md-8">
				                    		<input id="password" class="form-control" type="text" placeholder="Enter password" name="password" required>

				                		</div>
			                		</div>
			        			</div>
			        		</div>
		            	</div>    	
		            </div>	
	                <div class="tile-footer">
              			<div class="row">
                			<div class="col-md-8 col-md-offset-3">
                                  <button class="btn btn-success" type="submit"><i class="fa fa-fw fa-lg fa-check-circle"></i>Register</button>
                                  &nbsp;&nbsp;&nbsp;
                                  <a class="btn btn-danger" href="/home"><i class="fa fa-fw fa-lg fa-times-circle"></i>Cancel</a>
                			</div>
              			</div>
            		</div>
              </form>
            </div>
            
          </div>
        </div>
</div>
@endsection
