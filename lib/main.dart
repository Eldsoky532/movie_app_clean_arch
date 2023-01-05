import 'package:flutter/material.dart';
import 'package:movie_app_clean_arch/core/services/service_locator.dart';
import 'package:movie_app_clean_arch/movies/presentation/screens/movie_screen.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
void main() {
  ServicesLocator().init();

  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: example1,
    );
  }
  Widget example1 = SplashScreenView(

    navigateRoute:MovieScreen(),

    duration: 5000,

    imageSize: 130,


    imageSrc: "assests/image/movie.png",

    text: "Movie App",

    textType: TextType.ColorizeAnimationText,

    textStyle: TextStyle(

      fontSize: 40.0,

    ),

    colors: [


      Colors.black,

      Colors.grey.shade600

    ],

    backgroundColor: Colors.grey,


  );
}


