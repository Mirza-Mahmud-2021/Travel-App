import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/view/sign_in_page.dart';
import 'package:travel_app/view/sign_up_page.dart';

class StartPage extends StatelessWidget 
{
  const StartPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) 
  {
    return ScreenUtilInit(

      designSize: const Size(360, 640),
      builder: () => Scaffold(

        body: Container(

          height: MediaQuery.of(context).size.height.h,
          width: MediaQuery.of(context).size.width.h,
          decoration: BoxDecoration(color: Color(0xffD4EAF8).withOpacity(0.5)),

          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Container(

                height: 450.h,
                width: MediaQuery.of(context).size.width.w,
                decoration: BoxDecoration(

                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40.r), bottomRight: Radius.circular(40.r)),
                  image: const DecorationImage(image: AssetImage("assets/images/travel_bg.jpg"), fit: BoxFit.fill)
                ),
              ),

              SizedBox(height: 20.h),

              Padding(

                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text(

                      "Welcome, Traveller",
                      style: GoogleFonts.nunito(

                        color: Color(0xffFF5A5A),
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w600
                      ),
                    ),

                    Text(

                      "You make your dreams come true",
                      style: GoogleFonts.nunito(

                        color: Color(0xff000000),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400
                      ),
                    ),

                  ],
                ),
              ),

              SizedBox(height: 30.h),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(

                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      MaterialButton(
                        
                        elevation: 0,
                        height: 40.h,
                        minWidth: 120.h,
                        color: Color(0xff133B52),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.r)),
                        onPressed: (){

                          Navigator.push(context, MaterialPageRoute(builder: (context) => const SignInPage()));

                        },
                        child: Align(

                          alignment: Alignment.center,
                          child: Text(

                            "Sign In",
                            style: GoogleFonts.nunito(

                              color: Colors.white,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w400
                              ),
                            ),
                          ),
                        ),

                        SizedBox(width: 20.w),

                        MaterialButton(
                          
                          elevation: 0,
                          height: 40.h,
                          minWidth: 120.h,
                          color: Color(0xff027B5C),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.r)),
                          onPressed: (){

                            Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage()));

                          },
                          child: Align(

                            alignment: Alignment.center,
                            child: Text(

                              "Sign Up",
                              style: GoogleFonts.nunito(

                                color: Colors.white,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w400
                              ),
                            ),
                          ),
                        ),

                      ]
                  ),
              )
                    

            ],
          )
        ),
      ),      
    );
  }
}