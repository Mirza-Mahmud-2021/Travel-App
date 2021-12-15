import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/view/splash_screen.dart';

void main()
{
  runApp(const TravelApp());

  SystemChrome.setSystemUIOverlayStyle(

    const SystemUiOverlayStyle(

      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark
    )

  );

}

class TravelApp extends StatefulWidget 
{
  const TravelApp({ Key? key }) : super(key: key);

  @override
  _TravelAppState createState() => _TravelAppState();

}

class _TravelAppState extends State<TravelApp> 
{
  @override
  Widget build(BuildContext context) 
  {
    return ScreenUtilInit(

      designSize: const Size(360, 640),
      builder: () => const MaterialApp(

        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }

}