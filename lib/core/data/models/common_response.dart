// ignore: unused_import
import 'package:sp1_e_commerce/core/data/models/token_info.dart';
// ignore: unused_import
import 'package:sp1_e_commerce/core/data/models/user_info.dart';

class CommonResponse<T> {
  int? statusCode;
  late String message;
  T? data;

  CommonResponse.fromJson(Map<String, dynamic> json) {
    statusCode = json['statusCode'];

    if (getStatus) {
      data = json['response'];
    } else {
      if (json['response']['message'].toString().isNotEmpty) {
        message = json['response']['message'];
      } else {
        switch (statusCode) {
          case 400:
            message = '400 bad request';
            break;

          default:
            message = 'Something went wrong';
            break;
        }
      }
    }
  }

  bool get getStatus => statusCode.toString().startsWith('2');
}
