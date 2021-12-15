import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlaceDetailsTravelAgencyCard extends StatelessWidget 
{
  const PlaceDetailsTravelAgencyCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) 
  {
    return Card(
      
      elevation: 4,
      color: Colors.white,
      shadowColor: Colors.black,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: Padding(

        padding: const EdgeInsets.all(15),
        child: Row(

          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            
            Row(

              children: [

                Container(

                  height: 40, width: 40, 
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(

                    borderRadius: BorderRadius.circular(50),
                    image: const DecorationImage(image: AssetImage("assets/icons/twinci-travel-agency.png"), fit: BoxFit.fill)
                  ),
                ),
                const SizedBox(width: 15),

                Column(

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text(
                      "Hosted By",
                      style: GoogleFonts.nunito(

                        color: Colors.black, fontSize: 14, fontWeight: FontWeight.w700
                      ),
                    ),

                    Text(
                      "Twinci Travel Agency",
                      style: GoogleFonts.nunito(

                        color: Colors.black, fontSize: 14, fontWeight: FontWeight.w700
                      ),
                    ),

                  ],
                ),

              ],
            ),

            Container(

              height: 40, width: 40, 
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(

                color: const Color(0xff0096D1),
                borderRadius: BorderRadius.circular(50),
                
              ),

              child: GestureDetector(

                onTap: (){},
                child: Image.asset("assets/icons/messenger.png", height: 20, width: 20),
              ),
            ),


          ],
        ),
      )
      
    );
  }
}