class CommonResponse<T> {
  int? statusCode;
  late String message;
  T? data;

  CommonResponse.fromJson(Map<String, dynamic> json) {
    statusCode = json['statusCode'];

    if (getStatus) {
      data = json['response']['data'];
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
