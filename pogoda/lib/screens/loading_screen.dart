import 'package:flutter/material.dart';
import 'package:pogoda/services/networking.dart';
import 'package:pogoda/services/location.dart';

const apiKey = '9e86da85961a10a1bff6c1d982583682';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  late double latitude;
  late double longitude;
  @override
  void initState() {
    super.initState();
    getLocationData();
    print('эта строка кода запускается');
  }

  void getLocationData() async {
    Location location = Location();
    await location.getCurrentlocation();
    latitude = location.latitude;
    longitude = location.longitude;
    NetworkHelper networkHelper = NetworkHelper(
        'https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey');
    var weatherData = await networkHelper.getData();
    // print(temperature);
    // print(condition);
    // print(cityName);
  }

  @override
  Widget build(BuildContext context) {
    // getData();
    return Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              getLocationData();
              //Get the current location
            },
            child: const Text('Get Location'),
          ),
        ),
        );
  }
}
