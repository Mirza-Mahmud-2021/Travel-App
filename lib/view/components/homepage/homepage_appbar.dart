import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/view/start_page.dart';

class HomePageAppBar extends StatefulWidget 
{
  const HomePageAppBar({ Key? key }) : super(key: key);

  @override
  _HomePageAppBarState createState() => _HomePageAppBarState();
}

class _HomePageAppBarState extends State<HomePageAppBar> 
{
  @override
  Widget build(BuildContext context) 
  {
    return Row(

      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

        Row(

          children: [

            Container(
              
              alignment: Alignment.center,
              height: 50,
              width: 50,
              decoration: BoxDecoration(color: Color(0xffF1F5FE), borderRadius: BorderRadius.circular(50)),
              child: Container(

                height: 35,
                width: 35,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
                child: IconButton(

                  onPressed: (){},
                  icon: Image.asset("assets/icons/menu.png"),
                  
                ),
              ),
            ),

            SizedBox(width: 15),

            Text(

              "Home",
              style: GoogleFonts.nunito(

                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w700
              ),
            )
          ],
        ),

        GestureDetector(

          onTap: (){},
          child: Container(
        
            height: 50,
            width: 50,
            decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 1),borderRadius: BorderRadius.circular(50), image: const DecorationImage(
        
              image: AssetImage("assets/images/piyash-1.jpg")
            )),
          ),
        ),
      ],
      
    );
  }
}