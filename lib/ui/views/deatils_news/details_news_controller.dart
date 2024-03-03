import 'package:get/get.dart';
import 'package:sp1_e_commerce/core/data/models/info_model.dart';
import 'package:sp1_e_commerce/core/data/models/match_model.dart';

class DetailsNewsController extends GetxController {
  DetailsNewsController(this.infoModel, this.modelMatch);
  InfoModel? infoModel;
  MatchModel? modelMatch;
}
