<table class="table table-responsive" id="types-table">
    <thead>
        <tr>
            <th>Title</th>
        <th>Body</th>
        <th>Single Photo</th>
        <th>Slug</th>
            <th colspan="3">Action</th>
        </tr>
    </thead>
    <tbody>
    @foreach($types as $types)
        <tr>
            <td>{!! $types->title !!}</td>
            <td>{!! $types->body !!}</td>
            <td>{!! $types->single_photo !!}</td>
            <td>{!! $types->slug !!}</td>
            <td>
                {!! Form::open(['route' => ['types.destroy', $types->id], 'method' => 'delete']) !!}
                <div class='btn-group'>
                    <a href="{!! route('types.show', [$types->id]) !!}" class='btn btn-default btn-xs'><i class="glyphicon glyphicon-eye-open"></i></a>
                    <a href="{!! route('types.edit', [$types->id]) !!}" class='btn btn-default btn-xs'><i class="glyphicon glyphicon-edit"></i></a>
                    {!! Form::button('<i class="glyphicon glyphicon-trash"></i>', ['type' => 'submit', 'class' => 'btn btn-danger btn-xs', 'onclick' => "return confirm('Are you sure?')"]) !!}
                </div>
                {!! Form::close() !!}
            </td>
        </tr>
    @endforeach
    </tbody>
</table>