import 'package:flutter/material.dart';
import 'package:travel_app/view/home_page.dart';

class PlaceDetailsAppBar extends StatefulWidget 
{
  const PlaceDetailsAppBar({ Key? key }) : super(key: key);

  @override
  _PlaceDetailsAppBarState createState() => _PlaceDetailsAppBarState();
}

class _PlaceDetailsAppBarState extends State<PlaceDetailsAppBar> 
{
  @override
  Widget build(BuildContext context) 
  {
    return Row(

      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

        Container(
              
              alignment: Alignment.center,
              height: 40,
              width: 40,
              decoration: BoxDecoration(color: const Color(0xffF1F5FE).withOpacity(0.7), borderRadius: BorderRadius.circular(50)),
              child: IconButton(

                  onPressed: (){

                    Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
                  },
                  icon: const Icon(
                    Icons.arrow_back, 
                    color: Colors.black, 
                    size: 20
                  )
                
              ),
        ),

        Container(
              
              alignment: Alignment.center,
              height: 40,
              width: 40,
              decoration: BoxDecoration(color: const Color(0xffF1F5FE).withOpacity(0.7), borderRadius: BorderRadius.circular(50)),
              child: IconButton(

                  onPressed: (){},
                  icon: const Icon(
                    Icons.share, 
                    color: Colors.black, 
                    size: 20
                  )
                
              ),
        ),

      ],
      
    );
  }
}