import "package:flutter/material.dart";
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/view/home_page.dart';
import 'package:travel_app/view/sign_in_page.dart';

class SignUpPage extends StatefulWidget 
{
  const SignUpPage({ Key? key }) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> 
{

  final _formKey = GlobalKey<FormState>();
  final RegExp _emailRexExp = RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$');

  @override
  Widget build(BuildContext context) 
  {
    return ScreenUtilInit(

      designSize: const Size(360, 640),
      builder: () => Scaffold(
        
        
        body: Container(

          height: MediaQuery.of(context).size.height.h,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: Color(0xffD4EAF8).withOpacity(0.5)),

          child: SingleChildScrollView(

            child: Column(
              
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Container(

                  height: 250.h,
                  width: MediaQuery.of(context).size.width.w,
                  decoration: BoxDecoration(

                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40.r), bottomRight: Radius.circular(40.r)),
                    image: const DecorationImage(
                      image: AssetImage("assets/images/sign-in.jpg"), fit: BoxFit.fill
                    )
                  ),
                ),

                SizedBox(height: 25.h),

                Padding(

                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(

                    "Sign Up, Here",
                    style: GoogleFonts.nunito(color: Color(0xffFF5A5A), fontSize: 22.sp, fontWeight: FontWeight.w400),
                  ),
                ),

                Padding(

                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(

                    "Make your next trip awesome",
                    style: GoogleFonts.nunito(color: Colors.black, fontSize: 14.sp, fontWeight: FontWeight.w400),
                  ),
                ),

                SizedBox(height: 25.h),

                Padding(

                  padding: const EdgeInsets.symmetric(horizontal: 20),

                  child: Form(
                    
                    key: _formKey,
                    child: Column(

                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [

                        TextFormField(
                          
                          cursorColor: Color(0xff173148),
                          style: GoogleFonts.nunito(

                            color: Color(0xff000000),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400
                          ),
                          decoration: InputDecoration(

                            fillColor: Colors.white.withOpacity(0.5),
                            icon: const Icon(Icons.person, color: Color(0xff173148), size: 25,),
                            border: OutlineInputBorder(

                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(color: Color(0xff173148))
                            ),
                            enabledBorder: OutlineInputBorder(

                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(color: Color(0xff173148))
                            ),
                            focusedBorder: OutlineInputBorder(

                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(color: Color(0xff173148))
                            ),
                            labelText: "Username",
                            labelStyle: GoogleFonts.nunito(color: Colors.black, fontSize: 14.sp, fontWeight: FontWeight.w400)

                          ),

                          validator: (value){

                            if(value !.isEmpty)
                            {
                              return "Please, enter your username here.";
                            }
                            return null;

                          },
                          
                        ),

                        SizedBox(height: 15.h),

                        TextFormField(
                          
                          cursorColor: Color(0xff173148),
                          style: GoogleFonts.nunito(

                            color: Color(0xff000000),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400
                          ),
                          decoration: InputDecoration(

                            fillColor: Colors.white.withOpacity(0.5),
                            icon: const Icon(Icons.email_rounded, color: Color(0xff173148), size: 25,),
                            border: OutlineInputBorder(

                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(color: Color(0xff173148))
                            ),
                            enabledBorder: OutlineInputBorder(

                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(color: Color(0xff173148))
                            ),
                            focusedBorder: OutlineInputBorder(

                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(color: Color(0xff173148))
                            ),
                            labelText: "Email",
                            labelStyle: GoogleFonts.nunito(color: Colors.black, fontSize: 14.sp, fontWeight: FontWeight.w400)

                          ),

                          validator: (value){

                            if(value !.isEmpty || !_emailRexExp.hasMatch(value))
                            {
                              return "Please, enter your valid email here.";
                            }
                            return null;

                          },
                          
                        ),

                        SizedBox(height: 15.h),

                        TextFormField(
                          
                          obscureText: true,
                          cursorColor: Color(0xff173148),
                          style: GoogleFonts.nunito(

                            color: Color(0xff000000),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400
                          ),
                          decoration: InputDecoration(

                            fillColor: Colors.white.withOpacity(0.5),
                            icon: const Icon(Icons.password_outlined, color: Color(0xff173148), size: 25,),
                            border: OutlineInputBorder(

                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(color: Color(0xff173148))
                            ),
                            enabledBorder: OutlineInputBorder(

                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(color: Color(0xff173148))
                            ),
                            focusedBorder: OutlineInputBorder(

                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(color: Color(0xff173148))
                            ),
                            labelText: "Password",
                            labelStyle: GoogleFonts.nunito(color: Colors.black, fontSize: 14.sp, fontWeight: FontWeight.w400)

                          ),

                          validator: (value){

                            if(value !.isEmpty || value.length < 6)
                            {
                              return "Please, use more than 6 chatacters long password here.";
                            }
                            return null;

                          },
                          
                        ),


                      ],

                    ),
                  ),
                ),

                SizedBox(height: 25.h),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 100),
                  child: MaterialButton(

                      elevation: 0,
                      height: 40.h, minWidth: 150.h,
                      color: Color(0xff027B5C),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                      onPressed: (){

                        if(_formKey.currentState !.validate())
                        {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                        }
                      },
                      child: Align(alignment: Alignment.center, child: Text(

                        "Sign Up", style: GoogleFonts.nunito(color: Colors.white, fontSize: 18.sp, fontWeight: FontWeight.w400),
                      )),
                    ),
                ),

                SizedBox(height: 10.h),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(

                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Text(

                          "Already have account?",
                          style: GoogleFonts.nunito(color: Colors.black, fontSize: 15.sp, fontWeight: FontWeight.w400),
                        ),

                        SizedBox(width: 5.w),

                        TextButton(

                          onPressed: (){

                            Navigator.push(context, MaterialPageRoute(builder: (context) => SignInPage()));

                          },
                          child: Text(

                            "Sign In.",
                            style: GoogleFonts.nunito(color: Color(0xffFF5A5A), fontSize: 15.sp, fontWeight: FontWeight.w400)
                          ),
                        )

                      ],
                  
                  ),
                ),

                SizedBox(height: 20.h),

                Row(

                  children: [

                    Expanded(

                      child: Container(

                        margin: const EdgeInsets.only(left: 20),
                        child: Divider(color: Colors.black, height: 30.h, thickness: 1),
                      ),
                    ),

                    SizedBox(width: 10.w),

                    Text(
                      "OR",
                      style: GoogleFonts.nunito(color: Colors.black, fontSize: 16.sp, fontWeight: FontWeight.w400),
                    ),

                    SizedBox(width: 10.w),

                    Expanded(

                      child: Container(

                        margin: const EdgeInsets.only(right: 20),
                        child: Divider(color: Colors.black, height: 30.h, thickness: 1),
                      ),
                    ),

                  ],

                ),

                SizedBox(height: 15.h),

                Row(

                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    IconButton(

                      alignment: Alignment.center,
                      onPressed: (){},
                      iconSize: 30,
                      icon: Image.asset("assets/icons/google.png", height: 30, width: 30)
                    ),

                    SizedBox(width: 10.w),

                    IconButton(

                      alignment: Alignment.center,
                      onPressed: (){},
                      iconSize: 30,
                      icon: Image.asset("assets/icons/facebook.png", height: 30, width: 30)
                    ),

                    SizedBox(width: 10.w),

                    IconButton(

                      alignment: Alignment.center,
                      onPressed: (){},
                      iconSize: 30,
                      icon: Image.asset("assets/icons/instagram.png", height: 30, width: 30)
                    )

                  ],
                ),

                SizedBox(height: 20.h)


              ],

            ),
          ),
        ),
      ),
      
    );
  }
}