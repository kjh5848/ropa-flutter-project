import 'package:final_project_team02/_core/constants/http.dart';
import 'package:final_project_team02/data/dtos/user_request.dart';
import 'package:final_project_team02/data/repositoreis/user_repo.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logger/logger.dart';

final accessToken =
    'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJibG9nIiwicm9sZSI6dHJ1ZSwibmFtZSI6IuyCrOyaqeyekDHsnZgg7Iuk66qFIiwiaWQiOjEsImV4cCI6MTcxNTQxMDAyOSwiZW1haWwiOiJ1c2VyMUBleGFtcGxlLmNvbSJ9.zvld6CXCKUPfgZNfpBKSVDfS0G72tlf_fnFLKsxHpzq0ogjc_jEO2HlvVpTmjCn2O3CPBTPYze6ztsRGR2k6Lg';

void main() async {
  await callLogin_test2();
}

Future<void> callUserProfile_test() async {
  await UserRepo().callUserProfile();
}

Future<void> callSetting_test() async {
  await UserRepo().callSetting();
}

Future<void> callJoin_test() async {
  JoinReqDTO reqDTO =
      JoinReqDTO(email: "asd@nate.com", nickName: "asdasd", password: "1234");
  await UserRepo().callJoin(reqDTO);
}

Future<void> callLogin_test() async {
  LoginReqDTO reqDTO = LoginReqDTO(email: "asd@nate.com", password: "1234");
  await UserRepo().callLogin(reqDTO);
}

Future<void> callLogin_test2() async {
  LoginReqDTO reqDTO =
      LoginReqDTO(email: "user1@example.com", password: "1234");
  await UserRepo().callLogin(reqDTO);
}

Future<void> callProfile_test2() async {
  var response;
  try {
    response = await dio.get("/app/profile");
  } catch (e) {
    logger.e('Failed to fetch profile: $e');
  }
  Logger().d(response.data!);
}
