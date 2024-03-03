import 'package:get/get.dart';
import 'package:sp1_e_commerce/core/data/models/boss_model.dart';
import 'package:sp1_e_commerce/core/data/repository/club_repo.dart';
import 'package:sp1_e_commerce/ui/shared/custom_widgets/custom_toast.dart';

class AboutPlayerController extends GetxController {
  RxList<BossModel> bossList = <BossModel>[].obs;
  RxInt index = 0.obs;
  @override
  void onInit() {
    getBoss();
    super.onInit();
  }

  void getBoss() async {
    final result = await ClubRepo.getBoss();
    result.fold(
      (l) {
        CustomToast.showMessage(message: l.toString(), type: MessageType.ERROR);
      },
      (r) {
        bossList.addAll(r);
      },
    );
  }
}
