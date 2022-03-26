import 'dart:convert';

import 'package:http/http.dart' as http;

String apiUrl = "https://jsonplaceholder.typicode.com/users";

Future<List> FetchApi() async {
  try {
    var response = await http.get(Uri.parse(apiUrl));
    if (response.statusCode == 200) {
      var toJson = jsonDecode(response.body);
      return toJson;
    } else {
      return Future.error("Server Error");
    }
  } catch (SocketExpection) {
    return Future.error("error Fetching data");
  }
}
