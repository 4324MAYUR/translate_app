import 'dart:convert';
 import 'package:http/http.dart' as http;

class APIHELPER {

  Future<List?> translateAPI(String text) async {
    String link = "https://google-translate113.p.rapidapi.com/api/v1/translator/html";

    Map<String, dynamic> m1 = {
      "text": text,
    };
    http.Response res = await http.post(
      Uri.parse(link),
      headers: {
        "Accept-Encoding": "application/json",
        "x-rapidapi-host": "google-translate113.p.rapidapi.com",
        "x-rapidapi-key": "7473a090efmsh8abefaea3fb0dedp14b5d3jsn5c3d0a8029a4",
      },
      body: jsonEncode(m1),
    );
    if (res.statusCode == 200) {
      var data = jsonDecode(res.body);
      List<dynamic> l1 = data['text'];
      return l1;
    }
    else {
      print("==============================hello=====================================");
      return null;
    }
  }
}
