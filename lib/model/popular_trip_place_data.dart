class PopularTripPlaceData
{
  String placeImage;
  String placeName;
  String placeAreaName;
  String tripDate;
  String placeRating;
  String tripPlanHeading;
  String tripPlanDetails;
  String readMore;

  PopularTripPlaceData(

    this.placeImage,
    this.placeName,
    this.placeAreaName,
    this.tripDate,
    this.placeRating,
    this.tripPlanHeading,
    this.tripPlanDetails,
    this.readMore
  );

  static List<PopularTripPlaceData> popularTripPlaceData()
  {
    return [

      PopularTripPlaceData(

        "assets/images/places/1-cox-bazar.jpg",
        "Cox's Bazar Beach",
        "Cox's Bazar",
        "21Feb - 27Feb",
        "4.9",
        "Trip Plan",
        "TWINCI is trusted and reliable tour and travel agency among all the leading and updated tour operating services in Bangladesh.",
        "Read More..."
      ),

      PopularTripPlaceData(

        "assets/images/places/1-sajek-valley.jpg",
        "Sajek Valley",
        "Sajek",
        "21Feb - 25Feb",
        "5.0",
        "Trip Plan",
        "TWINCI is trusted and reliable tour and travel agency among all the leading and updated tour operating services in Bangladesh.",
        "Read More..."
      ),

      PopularTripPlaceData(

        "assets/images/places/1-rangamati.jpg",
        "Rangamati Hanging-Bridge",
        "Rangamati",
        "11Feb - 13 Feb",
        "4.7",
        "Trip Plan",
        "TWINCI is trusted and reliable tour and travel agency among all the leading and updated tour operating services in Bangladesh.",
        "Read More..."
      )

    ];
  }

}