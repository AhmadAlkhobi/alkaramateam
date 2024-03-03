import 'package:get/get.dart';
import 'package:sp1_e_commerce/core/data/models/info_model.dart';
import 'package:sp1_e_commerce/core/data/models/match_model.dart';
import 'package:sp1_e_commerce/core/data/repository/info_repository.dart';
import 'package:sp1_e_commerce/core/data/repository/matches_repsitory.dart';
import 'package:sp1_e_commerce/ui/shared/custom_widgets/custom_toast.dart';

class HomeController extends GetxController {
  RxInt page = 0.obs;
  RxList<MatchModel> allMatchList = <MatchModel>[].obs;
  RxList<InfoModel> allNewsList = <InfoModel>[].obs;
  RxInt index = 0.obs;
  @override
  void onInit() {
    gelAllMatch();
    gelAllNews();
    super.onInit();
  }

  void gelAllMatch() async {
    final result = await MatchesRepository.getMatches();
    result.fold(
      (l) {
        CustomToast.showMessage(message: l.toString(), type: MessageType.ERROR);
      },
      (r) {
        allMatchList.addAll(r);
      },
    );
  }

  void gelAllNews() async {
    final result = await InfoRepositort.getAllNews();
    result.fold(
      (l) {
        CustomToast.showMessage(message: l.toString(), type: MessageType.ERROR);
      },
      (r) {
        allNewsList.addAll(r);
      },
    );
  }
}
