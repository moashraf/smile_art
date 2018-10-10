 <html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title> {!! site_settings("Web site name") !!}  </title>


  <!-- ==============> font-icon <============== -->
  <link rel="stylesheet" href="./css/all.css">
  <!--  ==============>  font-icon  <==============-->

  <!-- bootstrap -->
  <link rel="stylesheet" href="./css/bootstrap-rtl.css">
  <link rel="stylesheet" href="./css/bootstrap.min.css">
  <!-- ==============>  bootstrap <============== -->

  <!-- ==============>  owl carousel  <==============-->
  <link rel="stylesheet" href="./css/owl.carousel.min.css">
  <link rel="stylesheet" href="./css/owl.theme.default.min.css">
  <!-- ==============>  owl carousel <============== -->

  <!-- ==============>  owl carousel  <==============-->
  <link href="https://fonts.googleapis.com/css?family=Cairo" rel="stylesheet">
  <!--  ==============> owl carousel  <==============-->

  <!-- ==============>  owl carousel <============== -->
  <link rel="stylesheet" href="./css/main.css">
  <!-- ==============>  owl carousel  <==============-->
</head>

<body>
  <!-- ====================== start navbar fixed-top ====================== -->
  <div class="navbars">
    <div class="container">
      <nav class="navbar fixed-top navbar-expand-lg navbar-light bg-light">
        <div class="navbar-brand">
          <img src="./imags/logo.png">
        </div>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon">oo</span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
              <a class="nav-link" href="#" data-scroll="slider">{{ trans('langsite.Home') }} <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#" data-scroll="about">   {{ trans('langsite.About') }} </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#" data-scroll="our-services"> خدماتنا   </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#" data-scroll="creative">عن الدكتور</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#" data-scroll="teams">دكتور</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#" data-scroll="photo-gallery">   معرض الصور   </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#" data-scroll="testimon">قالو عنا</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#" data-scroll="footer"> {{ trans('langsite.Contact Us') }}    </a>
            </li>

          </ul>

        </div>
      </nav>
    </div>
  </div>
  <!-- ====================== end navbar ====================== -->
  <!-- ====================== start header ====================== -->
 <div class="carousel-home" id="slider">
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
      <ol class="carousel-indicators">
	  	  			   			       @foreach($slider as $slider_val)

        <li data-target="#carouselExampleIndicators" data-slide-to="<?php echo $loop->iteration ?>" class="<?php  if($loop->iteration   == 1){echo "active";}    ?>  "></li>
       @endforeach
      </ol>
      <div class="carousel-inner">
	  
	  
	  
	  
	  			   			       @foreach($slider as $slider_val)

	  
	  
        <div class="carousel-item slid-a  <?php  if($loop->iteration   == 1){echo "active";}    ?>   ">
          <div class="overlay"></div>
            <img src="{{ URL::to('/').'/images/'.$slider_val->single_photo}}  " >
          <div class="box-intro">
            <h2 class="h1">   {{  $slider_val->title}}  </h2>
          
          </div>
        </div>
        
		
					
   @endforeach
		
		
		
		
        

      </div>

    </div>
  </div>

  <!-- ====================== end header ====================== -->
  <!-- ====================== start features ====================== -->
  <div class="features text-center">
    <div class="container">
      <div class="row">
        <div class="col-md-4">
          <img src="./imags/features1.png">
          <h3> مواعيد دقيقة</h3>
          <p>مركز سمايل  لتجميل الاسنان افضل عيادة طب اسنان غيرت فكرتي عن ألام الاسنان وصعوبتها .. شكرا دكتور مجدي الغمري على ابتسامة هوليود.</p>
        </div>
        <div class="col-md-4">
          <img src="./imags/features2.png">
          <h3>جودة عالية</h3>
          <p>مركز سمايل  لتجميل الاسنان افضل عيادة طب اسنان غيرت فكرتي عن ألام الاسنان وصعوبتها .. شكرا دكتور مجدي الغمري على ابتسامة هوليود.</p>
        </div>
        <div class="col-md-4">
          <img src="./imags/features3.png">
          <h3>  خدمة رائعة    24/7</h3>
          <p>مركز سمايل  لتجميل الاسنان افضل عيادة طب اسنان غيرت فكرتي عن ألام الاسنان وصعوبتها .. شكرا دكتور مجدي الغمري على ابتسامة هوليود.</p>
        </div>
      </div>
    </div>
  </div>
  <!--====================== end features ====================== -->
  <!--====================== start about ======================-->
  <div class="about text-right" id="about">
    <div class="container">
      <div class="row">
        <div class="col-xl-7 col-lg-12">
          <h5>من نحن</h5>
          <h2> {!! site_settings("Web site name") !!}  </h2>
           <p> {!! site_settings("About Us") !!}   </p>
          
        </div>
        <div class="col-xl-5 col-lg-12">
          <div class="box-about">
            <img src="./imags/about.jpg">
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- ====================== end about ====================== -->

  <!-- ====================== start service ====================== -->
  <div class="service" id="our-services">
    <div class="container">
      <h5 class="text-center">خدماتنا</h5>
      <h2 class="text-center">الخدمات <span>التي</span> نقدمها</h2>
      <div class="row">
	   
        
		
					
 
		
	  	  @foreach($SERVICE as $SERVICE_val)

	  
        <div class=" col-xl-4 col-lg-6 col-md-6 col-sm-6 ">
          <div class="box-service text-right">
            <img src="{{ URL::to('/').'/images/'.$SERVICE_val->single_photo}}">
            <h4>    {{  $SERVICE_val->title}}   </h4>
            <p>   {{  $SERVICE_val->body}}   </p>
          </div>
        </div>
		
		  @endforeach
		
		
		
		
		
		
      </div>
    </div>
  </div>
  <!-- ====================== end service ====================== -->




  <!-- ====================== start dental ====================== -->
  <div class="dental " id="creative">
    <div class="container">
      <div class="row">
        <div class="col-xl-6 col-lg-5">
          <div class="box-dental-img">
            <img src="./imags/dentel/DSC_0297.jpg" alt="">
          </div>
        </div>
        <div class="col-xl-6 col-lg-7">
          <div class="box-dental-title text-right">
            <h2> {!! site_settings("doctor_name") !!}       </h2>
            <p>  {!! site_settings("doctor_About") !!}    </p>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!--====================== end dental ====================== -->

  <!--====================== start team ====================== -->
  <div class="team" id="teams">
    <div class="container">
      <h5 class="text-center">فريق</h5>
      <h2 class="text-center"><span> العمل</span></h2>
       <div class="row">
	   
	   
	   
	   
	   	  @foreach($clients as $clients_val)
		  
		  
		  
		  
		  
		  
         <div class="col-lg-6">
            <div class="item">
                <div class="box-team text-right">
                  <div class="row">
                    <div class="col-sm-6 col-12">
                      <h5> {{  $clients_val->title}}    </h5>
                    
                      <p>{{  $clients_val->slug}} 
					  <br> 
						
						{{  $clients_val->body}}  
						</p>
                      
                    </div>
                    <div class="col-sm-6 col-12">
                      <img src="{{ URL::to('/').'/images/'.$clients_val->single_photo}}">
                    </div>
                  </div>
                </div>
              </div>
         </div>
         
		 
		 
		 @endforeach
		  
		
       </div>

 


      </div>
    </div>

  <!--====================== end team ======================-->


  
 
  <!--====================== start photo-gallery====================== -->
  <div class="photo-gallery text-center" id="photo-gallery">
    <div class="container">
      <h5>معرض</h5>
      <h2><span> الصور</span></h2>
      <div class="row">
	  
	  
	  
	  	  @foreach($image as $image_val)
        <div class="col-md-4 col-sm-6 col-12">
          <div class="box-photos">
            <img src="{{ URL::to('/').'/images/'.$image_val->single_photo}}">
          </div>
        </div>
		
		
				 @endforeach
 
      </div>
    </div>
  </div>
  <!--====================== end photo-gallery ====================== -->

  <!--======================start Testimonials ====================== -->
  <div class="testimonials text-center" id="testimon">
    <div class="container">
        <h5>اراء</h5>
      <h2><span> العملاء</span></h2>
      <div class="owl-carousel owl-theme owl-loaded" id="testimonials">
	  
	  
	  	  	  @foreach($NEWS as $NEWS_val)

	  
	  
        <div class="testi">
          <img src="{{ URL::to('/').'/images/'.$NEWS_val->single_photo}}">
          <h5> {{ $NEWS_val->title }} </h5>
          <span>  {{ $NEWS_val->slug }} </span>
          <p>{{ $NEWS_val->body }}</p>
        </div>
		 	 @endforeach
 
		
      </div>
    </div>
    <div class="overlay"></div>
  </div>
  <!--====================== end Testimonials ======================  -->
  <!-- ====================== start form ====================== -->
  <div class="forms text-center">
      <div class="container">
          <h5>تواصل</h5>
          <h2><span> معنا</span></h2>
        <div class="row">
          <div class="col-lg-6">
<div class="for">
                   	{!! Form::open( [ 'route' =>  'orders', 'method' => 'post'] ) !!}
                  <input class="form-control" type="text" name="title" placeholder="الاسم" required="">
                  <input class="form-control" type="email" name="phone" placeholder="الايميل" required="">
                  <input class="form-control"   name="email" placeholder="الهاتف" required="">
                  <textarea name="body"  id="textarea" placeholder="" required="" cols="30" rows="6"></textarea>
            
              <button class="btn1">ارسل</button>
					{!! Form::close() !!}
              </div>
          </div>
          <div class="col-lg-6">
           <img src="./imags/card2.jpg" alt="">
          </div>

        </div>
      </div>            
    </div>
    <!-- ====================== end form ====================== -->

  <!--======================start footer====================== -->
  <footer class="text-right" id="footer">
    <div class="container">
      <div class="row">


        <div class="col-md-4">
          <img src="./imags/logo.png" alt="">
        <p> {!! site_settings("About Us") !!}  </p>
          <ul>
            <li><a href="#"> <i class="fab fa-instagram fa-2x"></i> </a> </li>
            <li><a href="#"> <i class="fab fa-linkedin fa-2x"></i></a> </li>
            <li><a href="#"> <i class="fab fa-facebook-square fa-2x"></i> </a> </li>
            <li><a href="#"> <i class="fab fa-twitter-square fa-2x"></i></a> </li>
        </div>


        <div class="col-md-4">
          
          <h3>العنوان</h3>
          <ul class="block">
            <li>
              <i class="fas fa-map-marker-alt"></i>
{!! site_settings('Location')  !!}            </li>

            <li>
              <i class="fas fa-phone-square"></i>
   {!! site_settings('phone')  !!}            </li>

            <li>
              <i class="fas fa-phone-square"></i>
   {!! site_settings('phone1')  !!}            </li>

            <li>
              <i class="fas fa-envelope"></i>
              {!! site_settings('Mail')  !!}<br>
             {!! site_settings('Mail1')  !!}
            </li>

          </ul>
        </div>

        
        <div class="col-md-4">
          <h3>اوقات العمل</h3>
          <p>   {!! site_settings('working time')  !!} </p>
        

        </div>
      </div>
    </div>
  </footer>
  <!-- ====================== end footer ======================-->
  <div class="copy text-center">
      All Copy Rights Reserved @ Designed By Be4em
  </div>



  <script src="./js/jquery-3.3.1.min.js"></script>
  <script src="./js/jquery.countTo.js"></script>
  <script src="./js/owl.carousel.min.js"></script>
  <script src="./js/popper.js"></script>
  <script src="./js/bootstrap.min.js"></script>
  <script src="./js/main.js"></script>

</body>

</html>