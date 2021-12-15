import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/view/start_page.dart';

class SplashScreen extends StatefulWidget 
{
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> 
{

  void initState()
  {
    super.initState();

    Timer(

      const Duration(seconds: 3), () 
      {
        Navigator.push(context, MaterialPageRoute(builder: (context) => const StartPage()));
      }

    );

  }

  @override
  Widget build(BuildContext context) 
  {
    return ScreenUtilInit(

      designSize: const Size(360, 640),
      builder: () => Scaffold(

        body: Container(
          
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height.h,
          width: MediaQuery.of(context).size.width.w,
          decoration: const BoxDecoration(

            color: Color(0xffFF5A5A)

          ),

          child: SafeArea(

            child: Column(
              
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Container(

                  padding: const EdgeInsets.all(15),
                  height: 150.h,
                  width: 150.h,
                  decoration: BoxDecoration(color: Color(0xffF8F8F8).withOpacity(0.5), borderRadius: BorderRadius.circular(40.r)),
                  child: Image(

                    alignment: Alignment.center,
                    height: 120.h,
                    width: 120.w,
                    image: const AssetImage("assets/icons/travel.png"),
                  ),
                ),

                SizedBox(height: 15.h),

                Text(

                  "Tour & Travel",
                  style: GoogleFonts.nunito(

                    color: Color(0xffFFFFFF),
                    fontSize: 25.sp,
                    fontWeight: FontWeight.w600
                  ),
                ),

                Text(

                  "Traveling opens door to create memories",
                  style: GoogleFonts.nunito(

                    color: Color(0xffFFFFFF),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400
                  ),
                )

              ],
            ),
          ),
        ),
      ),
      
    );
  }
}