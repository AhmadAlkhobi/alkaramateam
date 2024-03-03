import 'package:dartz/dartz.dart';

import 'package:sp1_e_commerce/core/data/models/common_response.dart';
import 'package:sp1_e_commerce/core/data/models/info_model.dart';
import 'package:sp1_e_commerce/core/enums/request_type.dart';
import 'package:sp1_e_commerce/core/utils/network_util.dart';

class InfoRepositort {
  static Future<Either<String, List<InfoModel>>> getAllNews() async {
    try {
      return NetworkUtil.sendRequest(
        type: RequestType.GET,
        route: 'api/information/index',
      ).then((value) {
        CommonResponse<List<dynamic>> commonResponse =
            CommonResponse.fromJson(value);

        if (commonResponse.getStatus) {
          List<InfoModel> result = [];

          commonResponse.data!.forEach(
            (element) {
              result.add(InfoModel.fromJson(element));
            },
          );
          return Right(result);
        } else {
          return Left(commonResponse.message);
        }
      });
    } catch (e) {
      return Left(e.toString());
    }
  }
}
