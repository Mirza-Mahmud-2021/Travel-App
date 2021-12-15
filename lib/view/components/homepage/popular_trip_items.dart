import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/model/popular_trip_place_data.dart';

class PopularTripItems extends StatelessWidget 
{
  

  final PopularTripPlaceData tripPlaceData;
  PopularTripItems(this.tripPlaceData);

  @override
  Widget build(BuildContext context) 
  {
    return SizedBox(
    
        height: 280, width: 320,
        child: Card(
    
          color: Colors.white, shadowColor: Colors.black, elevation: 2,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          child: Padding(
            padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
            child: Column(
    
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
    
                Container(
    
                  height: 150, width: 300,
                  decoration: BoxDecoration(
    
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
    
                      image: AssetImage(tripPlaceData.placeImage),
                      fit: BoxFit.fill
                    )
                  ),
                ),
                SizedBox(height: 10),

                Row(

                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Text(

                      tripPlaceData.placeName,
                      style: GoogleFonts.nunito(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w700),
                    ),

                    Container(

                      height: 35, width: 35, alignment: Alignment.center,
                      decoration: BoxDecoration(color: const Color(0xffFB595A), borderRadius: BorderRadius.circular(50)),
                      child: Container(
                      
                          height: 30, width: 30,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
                          child: IconButton(

                            onPressed: (){},
                            icon: Image.asset("assets/icons/book-mark.png"),
                          )
                        ),

                    )

                  ],

                ),
                SizedBox(height: 15),

                Row(
                  
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Row(

                        children: [

                          Container(

                            height: 30, width: 30, 
                            decoration: BoxDecoration(

                              color: const Color(0xffFB595A).withOpacity(0.3), 
                              borderRadius: BorderRadius.circular(50)
                            ),
                            alignment: Alignment.center,
                            child: Container(

                              height: 20, width: 20, decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
                              child: Image.asset("assets/icons/location.png")
                            ),

                          ),
                          SizedBox(width: 8),

                          Text(

                            tripPlaceData.placeAreaName,
                            style: GoogleFonts.nunito(

                              color: Colors.black.withOpacity(0.4),
                              fontWeight: FontWeight.w700,
                              fontSize: 14
                            ),
                          )

                        ],

                    ),

                    

                    Row(

                        children: [

                          Container(

                            height: 30, width: 30, 
                            decoration: BoxDecoration(

                              color: const Color(0xff3EBDC6).withOpacity(0.4), 
                              borderRadius: BorderRadius.circular(50)
                            ),
                            alignment: Alignment.center,
                            child: Container(

                              height: 15, width: 15, decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
                              child: Image.asset("assets/icons/calendar.png")
                            ),

                          ),
                          SizedBox(width: 8),

                          Text(

                            tripPlaceData.tripDate,
                            style: GoogleFonts.nunito(

                              color: Colors.black.withOpacity(0.4),
                              fontWeight: FontWeight.w700,
                              fontSize: 14
                            ),
                          )

                        ],

                    ),
                   
                  ],
                )

              ],
      
            ),
          ),
    
        ),
        
      
    );
  }
}