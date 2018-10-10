@extends('layouts.app')

@section('content')
    <section class="content-header">
        <h1>
            S E R V I C E
        </h1>
    </section>
    <div class="content">
        <div class="box box-primary">
            <div class="box-body">
                <div class="row" style="padding-left: 20px">
                    @include('s_e_r_v_i_c_e_s.show_fields')
                    <a href="{!! route('sERVICES.index') !!}" class="btn btn-default">Back</a>
                </div>
            </div>
        </div>
    </div>
@endsection
