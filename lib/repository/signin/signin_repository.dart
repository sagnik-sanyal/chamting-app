import 'package:dio/dio.dart';

var dio = Dio();

void signInRepository(String email, String pass) async {
  Map<String, String> data = {"email": email, "password": pass};
  try {
    var res = await dio.post(
        "https://many-chairs-march-43-239-80-146.loca.lt/auth/signin",
        data: data);
    print(res.data.toString());
  } catch (err) {
    print(err);
  }
}
