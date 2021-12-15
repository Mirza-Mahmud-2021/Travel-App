import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/model/travel_agency_data.dart';

class TravelAgencyItem extends StatelessWidget 
{
  
  final TravelAgencyData travelAgencyData;
  TravelAgencyItem(this.travelAgencyData);

  @override
  Widget build(BuildContext context) 
  {
    return SizedBox(

      height: 150, width: 300,
      child: Card(

        color: Colors.white, shadowColor: Colors.black, elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child: Padding(

          padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Row(
              
                  children: [
              
                    Container(
              
                      height: 40, width: 40,  alignment: Alignment.center,
                      decoration: BoxDecoration(
              
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(image: AssetImage(travelAgencyData.agencyLogo))
                      ),
                    ),
                    const SizedBox(width: 15),
              
                    Column(
              
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
              
                        Text(
              
                          travelAgencyData.agencyName,
                          style: GoogleFonts.nunito(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(height: 5),
              
                        Row(
              
                          children: [
              
                            Container(
              
                              height: 30, width: 30, alignment: Alignment.center,
                              decoration: BoxDecoration(
              
                                color: const Color(0xffFFBD09).withOpacity(0.2),
                                borderRadius: BorderRadius.circular(50)
                              ),
                              child: const Icon(Icons.star_rounded, color: Color(0xffFFBD09), size: 20),
                            ),
                            const SizedBox(width: 10),
              
                            Text(
              
                              travelAgencyData.agencyRating,
                              style: GoogleFonts.nunito(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w700),
                            )
                          ],
                        )
                      ],
                    )
              
                  ],
              ),
              const SizedBox(height: 15),

              Row(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Container(

                    height: 40, width: 40, alignment: Alignment.center,
                    decoration: BoxDecoration(

                      
                      borderRadius: BorderRadius.circular(50),
                      image: DecorationImage(image: AssetImage(travelAgencyData.peopleImage), fit: BoxFit.fill)
                    ),
                  ),

                  Container(

                    height: 40, width: 40, alignment: Alignment.center,
                    decoration: BoxDecoration(

                      
                      borderRadius: BorderRadius.circular(50),
                      image: DecorationImage(image: AssetImage(travelAgencyData.peopleImage), fit: BoxFit.fill)
                    ),
                  ),

                  Container(

                    height: 40, width: 70, alignment: Alignment.center,
                    decoration: BoxDecoration(color: const Color(0xffCCE3F0).withOpacity(0.5), borderRadius: BorderRadius.circular(30)),
                    child: Text(

                      travelAgencyData.likedPeople, 
                      style: GoogleFonts.nunito(

                        color: const Color(0xff4EB2D2), fontSize: 12, fontWeight: FontWeight.w700
                      )
                    ),
                  ),

                  Text(

                    "Liked This",
                    style: GoogleFonts.nunito(color: Colors.black.withOpacity(0.5), fontSize: 12, fontWeight: FontWeight.w700),
                  )

                ],

              )
            ],
          ),
        ),
      ),
      
    );
  }
}