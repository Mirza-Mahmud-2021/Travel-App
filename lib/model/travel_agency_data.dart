class TravelAgencyData
{

  String agencyLogo;
  String agencyName;
  String agencyRating;

  String peopleImage;
  String likedPeople;

  TravelAgencyData(

    this.agencyLogo,
    this.agencyName,
    this.agencyRating,
    this.peopleImage,
    this.likedPeople
    
  );

  static List<TravelAgencyData> generateTravelAgencyData()
  {
    return [

      TravelAgencyData(

        "assets/icons/venus-travel-agency.png",
        "Venus Travel Agency",
        "5.0",
        "assets/images/piyash-1.jpg",
        "+349"
      ),

      TravelAgencyData(

        "assets/icons/twinci-travel-agency.png",
        "Twinci Travel Agency",
        "4.7",
        "assets/images/piyash-1.jpg",
        "+275"
      ),


    ];
  }
}