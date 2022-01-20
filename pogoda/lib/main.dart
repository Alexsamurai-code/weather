import 'package:flutter/material.dart';
import 'package:pogoda/screens/loading_screen.dart';

void main() => runApp(MyPogoda());

class MyPogoda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: LoadingScreen(),
    );
  }
}







  // void getCurrentPosition() async{
  //   LocationPermission permission = await Geolocator.checkPermission();
  //
  //   if(permission == LocationPermission.denied || permission == LocationPermission.deniedForever){
  //     print('Разрешения не предоставлены');
  //        LocationPermission asked = await  Geolocator.requestPermission();
  //   }
  //   else{
  //     Position currentPosition = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.best);
  //     print('Долгота:'+ currentPosition.longitude.toString());
  //     print('Широта:' + currentPosition.latitude.toString());
  //   }
  // }




