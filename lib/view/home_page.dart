import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/view/components/homepage/homepage_appbar.dart';
import 'package:travel_app/view/components/homepage/homepage_populartrip.dart';
import 'package:travel_app/view/components/homepage/homepage_searchbar.dart';
import 'package:travel_app/view/components/homepage/homepage_travelagency.dart';

class HomePage extends StatefulWidget 
{
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> 
{
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(

      designSize: const Size(360, 690),
      builder: () => Scaffold(

        body: Container(

          height: MediaQuery.of(context).size.height.h,
          width: MediaQuery.of(context).size.width.w,
          decoration: const BoxDecoration(color: Colors.white),

          child: SingleChildScrollView(

            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
            
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                    SizedBox(height: 20.h),
                    
                    const HomePageAppBar(),
                    SizedBox(height: 25.h),

                    const HomePageSearchBar(),
                    SizedBox(height: 25.h),

                    Text(

                      "Popular Trip.",
                      style: GoogleFonts.nunito(color: Colors.black, fontSize: 22.sp, fontWeight: FontWeight.w700)
                    ),
                    SizedBox(height: 25.h),

                    const HomePagePopularTrip(),
                    SizedBox(height: 20.h),

                    Row(
                      
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Text(

                          "Travel Agency.",
                          style: GoogleFonts.nunito(color: Colors.black, fontSize: 22.sp, fontWeight: FontWeight.w700),
                        ),

                        GestureDetector(

                          onTap: (){},
                          child: Text(

                            "See All",
                            style: GoogleFonts.nunito(color: Colors.black.withOpacity(0.5), fontSize: 14.sp, fontWeight: FontWeight.w700),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 20.h),

                    const HomePageTravelAgency(),
                    SizedBox(height: 20.h),

                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      
    );
  }
}