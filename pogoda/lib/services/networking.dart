import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper(this.url);
  final String url;

  // get latitude => null;
  //
  // get longitude => null;

  Future <http.Response> getData() async {
    final url = Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey');
   final response = await http.get(url);
    if (response.statusCode == 200) {
      String data = response.body;

      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
