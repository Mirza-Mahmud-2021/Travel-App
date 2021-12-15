import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageSearchBar extends StatefulWidget {
  const HomePageSearchBar({ Key? key }) : super(key: key);

  @override
  _HomePageSearchBarState createState() => _HomePageSearchBarState();
}

class _HomePageSearchBarState extends State<HomePageSearchBar> {
  @override
  Widget build(BuildContext context) {
    return Row(

      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

        Container(

          height: 50,
          width: 280,
          padding: const EdgeInsets.all(5),
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(color: Color(0xffF1F5FE), borderRadius: BorderRadius.circular(30)),
          child: Row(

            children: [

              Container(

                height: 40, width: 40, decoration: BoxDecoration(color: Color(0xff515777), borderRadius: BorderRadius.circular(50)),
                alignment: Alignment.center,
                child: Container(

                  height: 25, width: 25, child: Image.asset("assets/icons/search.png"),
                ),
              ),

              const SizedBox(width: 15),

              Text(
                
                "Search",
                style: GoogleFonts.nunito(

                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w700
                ),
              
              )
            ],
          ),
        ),

        Container(

          alignment: Alignment.center,
          height: 50, width: 50,
          decoration: BoxDecoration(color: Color(0xff0597D1), borderRadius: BorderRadius.circular(50)),
          child: Container(

            height: 35,
            width: 35,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
            child: IconButton(

              onPressed: (){},
              icon: Image.asset("assets/icons/settings.png"),
            ),
          ),
        )

      ],
      
    );
  }
}