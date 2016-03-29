<div class="row col-sm-8">
	<?php echo Form::open('',array('class'=>'form-horizontal'));?>
	<div class="modal-body">
		<div class="form-group">
			<?php echo Form::label('email', 'Email',array('class'=>'control-label  col-sm-3'));?>
			<div class="col-sm-6">
				<?php echo Form::input('email', '',array('class'=>'form-control'));?>
				<?php echo Arr::get($error,'email');?>
			</div>
		</div>
		<div class="form-group">
			<?php echo Form::label('password', 'Password',array('class'=>'control-label  col-sm-3'));?>
			<div class="col-sm-6">
				<?php echo Form::password('password', '',array('class'=>'form-control'));?>
				<?php echo Arr::get($error,'password');?>
			</div>
		</div>
		<div class="form-group">
			<?php echo Form::label('', '',array('class'=>'control-label  col-sm-3'));?>
			<div class="col-sm-2">
				<?php echo Form::submit('', 'Submit',array('class'=>'btn btn-success'));?>
			</div>
		</div>
	</div>
	<?php echo Form::close();?>
</div>