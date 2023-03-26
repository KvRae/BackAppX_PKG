library back_app_x_sdk;
import 'package:http/http.dart' as http;


//here you can add your own variables


class BackAppX {
  static Auth auth = Auth();
}


class Auth {
  static const String _baseUrl = 'http://localhost:8000/api';
  static const _loginUrl = '$_baseUrl/login';
  static const String _registerUrl = '$_baseUrl/register';
  static void login(username, password) {
    print('login');
    http.post(Uri.parse(_loginUrl), body: {
      'username': username,
      'password': password,
    }).then((response) {
      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');
    });
    //post request to server
  }

  static void register(name, email, password) {
    print('register');
    //post request to server
  }


}
