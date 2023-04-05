import 'package:dio/dio.dart';

/*
if(AuthService.roleId == 1)   x
if(AuthService.isAdmin)       v
if(AuthService.isUser)       v
*/
class AuthService {
  static int roleId = -1;
  static bool get isAdmin => roleId == 1;
  static bool get isUser => roleId == 2;
  static bool get isStaff => roleId == 3;
  static bool get isSecurty => roleId == 3;

  Future<bool> login({
    required String email,
    required String password,
  }) async {
    try {
      var response = await Dio().post(
        "https://capekngoding.com/deny/api/auth/action/login",
        options: Options(
          headers: {
            "Content-Type": "application/json",
          },
        ),
        data: {
          "name": "morpheus",
          "job": "programmer",
        },
      );
      Map obj = response.data;

      // roleId = obj["data"]["role_id"];

      if (email.startsWith("admin")) {
        roleId = 1;
      } else if (email.startsWith("user")) {
        roleId = 2;
      }

      return true;
    } on Exception catch (err) {
      print(err);
      return false;
    }
  }
}
