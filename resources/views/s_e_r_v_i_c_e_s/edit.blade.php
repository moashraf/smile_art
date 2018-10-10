@extends('layouts.app')

@section('content')
    <section class="content-header">
        <h1>
            S E R V I C E
        </h1>
   </section>
   <div class="content">
       @include('adminlte-templates::common.errors')
       <div class="box box-primary">
           <div class="box-body">
               <div class="row">
                   {!! Form::model($sERVICE, ['route' => ['sERVICES.update', $sERVICE->id], 'method' => 'patch' ,'files' => true,'enctype' => 'multipart/form-data'  ]) !!}

                        @include('s_e_r_v_i_c_e_s.fields')

                   {!! Form::close() !!}
               </div>
           </div>
       </div>
   </div>
@endsection