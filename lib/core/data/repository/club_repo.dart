import 'package:dartz/dartz.dart';
import 'package:sp1_e_commerce/core/data/models/boss_model.dart';
import 'package:sp1_e_commerce/core/data/models/club_model.dart';
import 'package:sp1_e_commerce/core/data/models/common_response.dart';
import 'package:sp1_e_commerce/core/enums/request_type.dart';
import 'package:sp1_e_commerce/core/utils/network_util.dart';

class ClubRepo {
  static Future<Either<String, List<ClubModel>>> getAllClub() async {
    try {
      return NetworkUtil.sendRequest(
        type: RequestType.GET,
        route: 'api/club/index',
      ).then((value) {
        CommonResponse<List<dynamic>> commonResponse =
            CommonResponse.fromJson(value);

        if (commonResponse.getStatus) {
          List<ClubModel> result = [];

          commonResponse.data!.forEach(
            (element) {
              result.add(ClubModel.fromJson(element));
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

  static Future<Either<String, List<BossModel>>> getBoss() async {
    try {
      return NetworkUtil.sendRequest(
        type: RequestType.GET,
        route: 'api/boss/index',
      ).then((value) {
        CommonResponse<List<dynamic>> commonResponse =
            CommonResponse.fromJson(value);

        if (commonResponse.getStatus) {
          List<BossModel> result = [];

          commonResponse.data!.forEach(
            (element) {
              result.add(BossModel.fromJson(element));
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
