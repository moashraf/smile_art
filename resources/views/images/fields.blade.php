<!-- Title Field -->
<div class="form-group col-sm-6">
    {!! Form::label('title', 'Title:') !!}
    {!! Form::text('title', null, ['class' => 'form-control']) !!}
</div>

<!-- Body Field -->
 

 
<div class="form-group col-sm-6">
    {!! Form::label('single_photo', 'Single Photo:') !!}
    {!! Form::file('single_photo') !!}
</div>
<!-- Type Field -->
 
<!-- Link Field -->
 
<!-- Submit Field -->
<div class="form-group col-sm-12">
    {!! Form::submit('Save', ['class' => 'btn btn-primary']) !!}
    <a href="{!! route('images.index') !!}" class="btn btn-default">Cancel</a>
</div>
