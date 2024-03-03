import 'package:dartz/dartz.dart';
import 'package:sp1_e_commerce/core/data/models/common_response.dart';
import 'package:sp1_e_commerce/core/data/models/player_model.dart';
import 'package:sp1_e_commerce/core/enums/request_type.dart';
import 'package:sp1_e_commerce/core/utils/network_util.dart';

class PlayerRepository {
  static Future<Either<String, List<PlayerModel>>> getPlayer() async {
    try {
      return NetworkUtil.sendRequest(
        type: RequestType.GET,
        route: 'api/player/index',
      ).then((value) {
        CommonResponse<List<dynamic>> commonResponse =
            CommonResponse.fromJson(value);

        if (commonResponse.getStatus) {
          List<PlayerModel> result = [];

          commonResponse.data!.forEach(
            (element) {
              result.add(PlayerModel.fromJson(element));
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
