import 'package:flutter/material.dart';
import 'package:travel_app/model/popular_trip_place_data.dart';
import 'package:travel_app/view/components/homepage/popular_trip_items.dart';
import 'package:travel_app/view/place_details_page.dart';

class HomePagePopularTrip extends StatefulWidget 
{
  const HomePagePopularTrip({ Key? key }) : super(key: key);

  @override
  _HomePagePopularTripState createState() => _HomePagePopularTripState();
}

class _HomePagePopularTripState extends State<HomePagePopularTrip> 
{

  final popularTripList = PopularTripPlaceData.popularTripPlaceData();

  @override
  Widget build(BuildContext context) 
  {
    return Container(
    
          height: 280,
          child: ListView.separated(

            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemCount: popularTripList.length,
            separatorBuilder: (_, index) => const SizedBox(width: 10),
            itemBuilder: (context, index)
            {
              return GestureDetector(

                onTap: (){

                  Navigator.push(context, MaterialPageRoute(builder: (context) => PlaceDetailsPage(popularTripList[index])));

                },
                child: PopularTripItems(popularTripList[index])

              );
            }

          ),
    
    );
  }
}