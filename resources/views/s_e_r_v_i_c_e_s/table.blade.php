<table class="table table-responsive" id="sERVICES-table">
    <thead>
        <tr>
            <th>Title</th>
         <th>Single Photo</th>
        <th>Body</th>
            <th colspan="3">Action</th>
        </tr>
    </thead>
    <tbody>
    @foreach($sERVICES as $sERVICE)
        <tr>
            <td>{!! $sERVICE->title !!}</td>
   			              <td>     <img src="{{ URL::to('/').'/images/'.$sERVICE->single_photo  }}"  width="50" height="50">  </td>

            <td>{!! $sERVICE->body !!}</td>
            <td>
                {!! Form::open(['route' => ['sERVICES.destroy', $sERVICE->id], 'method' => 'delete']) !!}
                <div class='btn-group'>
                    <a href="{!! route('sERVICES.show', [$sERVICE->id]) !!}" class='btn btn-default btn-xs'><i class="glyphicon glyphicon-eye-open"></i></a>
                    <a href="{!! route('sERVICES.edit', [$sERVICE->id]) !!}" class='btn btn-default btn-xs'><i class="glyphicon glyphicon-edit"></i></a>
                    {!! Form::button('<i class="glyphicon glyphicon-trash"></i>', ['type' => 'submit', 'class' => 'btn btn-danger btn-xs', 'onclick' => "return confirm('Are you sure?')"]) !!}
                </div>
                {!! Form::close() !!}
            </td>
        </tr>
    @endforeach
    </tbody>
</table>