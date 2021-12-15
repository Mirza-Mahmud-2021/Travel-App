import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/model/popular_trip_place_data.dart';
import 'package:travel_app/view/components/placedetails/placedetails_appbar.dart';
import 'package:travel_app/view/components/placedetails/placedetails_travelagency_card.dart';

class PlaceDetailsPage extends StatelessWidget 
{
  
  final PopularTripPlaceData popularTripPlaceData;
  PlaceDetailsPage(this.popularTripPlaceData);
  
  @override
  Widget build(BuildContext context) 
  {
    return ScreenUtilInit(

      designSize: const Size(360, 690),
      builder: () => Scaffold(


        body: Container(

            height: MediaQuery.of(context).size.height.h,
            width: MediaQuery.of(context).size.width.w,

            child: Stack(
            
                clipBehavior: Clip.none,
                children: [
            
                  Container(
                    
                    height: 300, width: MediaQuery.of(context).size.width.w,
                    decoration: BoxDecoration(image: DecorationImage(
            
                      image: AssetImage(popularTripPlaceData.placeImage),
                      fit: BoxFit.fill
                    )),
                  ),

            
                  const Padding(
                    padding: EdgeInsets.only(top: 40, left: 20, right: 20),
                    child: PlaceDetailsAppBar(),
                  ),
            
                  Container(
            
                    margin: const EdgeInsets.only(top: 255),
                    height: MediaQuery.of(context).size.height.h,
                    width: MediaQuery.of(context).size.width.w,
                    decoration: BoxDecoration(
                        
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(40.r), topRight: Radius.circular(40.r))
                    ),
            
                    child: SingleChildScrollView(
            
                      child: Padding(
            
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Column(
                          
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
            
                            SizedBox(height: 30.h),
            
                            Text(
            
                              popularTripPlaceData.placeName,
                              style: GoogleFonts.nunito(color: Colors.black, fontSize: 22.sp, fontWeight: FontWeight.w700),
                            ),
                            SizedBox(height: 10.h),
            
                            Row(
                              
                              children: [
            
                                Row(
            
                                  children: [
            
                                    const Icon(
            
                                      Icons.star_rounded,
                                      color: Colors.amber,
                                      size: 25,
                                    ),
                                    SizedBox(width: 10.w),
            
                                    Text(
            
                                      popularTripPlaceData.placeRating,
                                      style: GoogleFonts.nunito(color: Colors.black, fontSize: 13.sp, fontWeight: FontWeight.w700),
                                    )
                                  ],
                                ),
            
                                SizedBox(width: 40.w),
            
                                Row(
            
                                  children: [
            
                                    const Icon(
            
                                      Icons.pin_drop_rounded,
                                      color: Colors.teal,
                                      size: 25,
                                    ),
                                    SizedBox(width: 10.w),
            
                                    Text(
            
                                      popularTripPlaceData.placeAreaName,
                                      style: GoogleFonts.nunito(color: Colors.black, fontSize: 13.sp, fontWeight: FontWeight.w700),
                                    )
                                  ],
                                ),
                                
                              ],
                            ),
                            SizedBox(height: 20.h),
            
                            Text(
            
                              popularTripPlaceData.tripPlanHeading,
                              style: GoogleFonts.nunito(color: Colors.black, fontSize: 18.sp, fontWeight: FontWeight.w700),
                            ),
                            SizedBox(height: 10.h),

                            Text(

                                  popularTripPlaceData.tripPlanDetails,
                                  style: GoogleFonts.nunito(
                                    color: const Color(0xff7F859E), 
                                    fontSize: 12.sp, 
                                    fontWeight: FontWeight.w700,
                                  ),

                            ),

                            GestureDetector(

                              onTap: (){},
                              child: Column(

                                children: [

                                  Text(
                            
                                    popularTripPlaceData.readMore,
                                    style: GoogleFonts.nunito(
                            
                                      height: 1.5,
                                      color: Colors.black, fontSize: 12.sp, fontWeight: FontWeight.w700
                                    ),
                                  ),

                                  const SizedBox(
                              
                                    width: 75,
                                    child: Divider(
                                      color: Colors.black, 
                                      thickness: 1,
                                      height: 2
                                    )
                                  )

                                ],
                              ),
                            ),

                            SizedBox(height: 25.h),

                            const PlaceDetailsTravelAgencyCard(),
                            SizedBox(height: 20.h),

                            Text(

                              "What's Included?",
                              style: GoogleFonts.nunito(color: Colors.black, fontSize: 18.sp, fontWeight: FontWeight.w700),
                            ),
                            SizedBox(height: 10.h),
                              

                          ],
                        ),
                          
                      ),
                    ),
                    
                  
                  ),

            
              ],
            ),
            
        ),
      )
      
    );
  }
}