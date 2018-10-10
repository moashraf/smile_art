 
 

<li class="{{ Request::is('siteStings*') ? 'active' : '' }}">
    <a href="{!! route('siteStings.index') !!}"><i class="fa fa-edit"></i><span> site settings  </span></a>
</li>
 
 <li class="{{ Request::is('sERVICES*') ? 'active' : '' }}">
    <a href="{!! route('sERVICES.index') !!}"><i class="fa fa-edit"></i><span>S E R V I C E S</span></a>
</li>
 
 <li class="{{ Request::is('orders*') ? 'active' : '' }}">
    <a href="{!! route('orders.index') !!}"><i class="fa fa-edit"></i><span>Orders</span></a>
</li>

 
<li class="{{ Request::is('sliders*') ? 'active' : '' }}">
    <a href="{!! route('sliders.index') !!}"><i class="fa fa-edit"></i><span>   sliders </span></a>
</li>

 <li class="{{ Request::is('videos*') ? 'active' : '' }}">
    <a href="{!! route('videos.index') !!}"><i class="fa fa-edit"></i><span>Videos</span></a>
</li>

<li class="{{ Request::is('images*') ? 'active' : '' }}">
    <a href="{!! route('images.index') !!}"><i class="fa fa-edit"></i><span>Images</span></a>
</li>

<li class="{{ Request::is('nEWS*') ? 'active' : '' }}">
    <a href="{!! route('nEWS.index') !!}"><i class="fa fa-edit"></i><span>nEWS</span></a>
</li>
<li class="{{ Request::is('clients*') ? 'active' : '' }}">
    <a href="{!! route('clients.index') !!}"><i class="fa fa-edit"></i><span>our team</span></a>
</li>

