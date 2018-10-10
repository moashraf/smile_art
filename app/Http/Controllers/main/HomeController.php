<?php

namespace App\Http\Controllers;

 use App\Models\Categories_Products;
use App\Models\SERVICE;
 use App\Models\projects_cat;
use App\Models\NEWS;
use App\Models\slider;
use App\Models\clients;
use App\Models\Products;
use App\Models\order;
use App\Models\image;
use App\Models\video;
 
use Illuminate\Http\Request;

class HomeController extends Controller
{

	


  public function singel_cat($id)
    {
      $Categories_Products = Categories_Products::where('id' ,'=', $id)->get();
	  if(  !$Categories_Products->isEmpty()   ){  

  $Products = Products::where('cat_id','=',$Categories_Products[0]['id'])->paginate(20);
        return view('main.all_property', 
            [
             'Categories_Products' => $Categories_Products, 
               'Products' => $Products, 
             ]);
  // dd(    $Categories_Products[0]['id']); 
   
   }else{
	   
	   
	    return redirect('/');
 
   }
	 
     
    }

	
	 public function index()
    {
  $slider = slider::limit(20)->get();
  $SERVICE = SERVICE::limit(20)->get();
  $clients = clients::limit(20)->get(); 
  $image = image::limit(20)->get(); 
  $NEWS = NEWS::limit(20)->get(); 
// dd("dd");

 		 return view('main.index',
            [
                 'NEWS' => $NEWS ,  
                 'image' => $image ,  
 				 'clients' => $clients ,   
				 'slider' => $slider ,  
				 'SERVICE' => $SERVICE ,
            ]);
    }
	
	
	
	
	
	
	
    public function done()
    {
     
       return view('main.thankspage');
    }


	
	
	public function orders_get()
    {
                return view('main.orders');

    }
	
	
	
	public function orders( request $request)
    {
        $input = $request->all();

        $order = order::create($input);

 	    return redirect('/');

       // return redirect(route('done'));
    }
	
	
    public function  form(Request $request) 
    {

        $to = "mohamed.be4em@gmail.com  , a.badr.be4em@gmail.com";
        $subject = "بامبو نيو هاوس        ";
        $neme = $_POST['name'];
        $phone = $_POST['phone'];
        $email = $_POST['mail'];
         $message="<html><head><title> بامبو نيو هاوس         </title>
        </head><body><table>
        <tr><th>Firstname</th><th>phone</th><th>email</th></tr>
        <tr> <td>$neme  </td><td>$phone  </td><td>$email  </td> </tr>
        </table></body></html> ";
        $headers = "MIME-Version: 1.0" . "\r\n";
        $headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";
        $headers .= 'From: <info@scpc-eg.com>' . "\r\n";

           if(isset($_POST['phone'])){
        if(mail($to,$subject,$message,$headers)){
           header("Location: http://scpc-eg.com/");
        }else{  echo "Mail Not Sent"; } }  
        


    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
   
	
	
	
	
	 public function video()
    {
		
    $video = video::limit(50)->get();

 		 return view('main.video',
            [
                 'video' => $video 
            ]);
    }
	
	
	
	 public function image()
    {
  $image = image::limit(50)->get();

 		 return view('main.image',
            [
                 'image' => $image 
            ]);
    }
	
	  
	  
	
	
	
	   public function news()
    {
 
 $NEWS = NEWS::limit(50)->get();
		 return view('main.news',
            [
                 'NEWS' => $NEWS 
            ]);
    }
	
	
	
	   public function singel_news($id)
    {
 
  $NEWS = NEWS::where('id', $id)->first();
                if (!is_null($NEWS)) {
                 		 return view('main.singel_news',
                        [
                            'NEWS' => $NEWS,
                        ]);
                } else {
                   // return redirect('/');

                }
		  }
	
	
	   public function singel_services($id)
    {
 
  $services = SERVICE::where('id', $id)->first();
                if (!is_null($services)) {
                 		 return view('main.singel_services',
                        [
                            'services' => $services,
                        ]);
                } else {
                   // return redirect('/');

                }
		  }
	
	
	
	
	
	
	 public function About()
    {
 
 		 return view('main.about_us' );
    }
	
	 public function Contact()
    {
 
 $SERVICE = SERVICE::limit(12)->get();
		 return view('main.Contact',
            [
                 'SERVICE' => $SERVICE 
            ]);
    }
	
	
	
	
	  public function projects()
    {
       $Categories_Products = projects_cat::limit(50)->get();

 $projects = slider::limit(40)->get();
		 return view('main.all_projects',
            [
			             'Categories_Products' => $Categories_Products, 

                 'projects' => $projects 
            ]);
    }
	
	
	
	
	public function services()
    {
 
 $SERVICE = SERVICE::limit(50)->get();
		 return view('main.services',
            [
                 'SERVICE' => $SERVICE 
            ]);
    }
	

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
