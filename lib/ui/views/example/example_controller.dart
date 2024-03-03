import 'package:get/get.dart';
import 'package:sp1_e_commerce/core/data/models/boss_model.dart';
import 'package:sp1_e_commerce/core/data/models/club_model.dart';
import 'package:sp1_e_commerce/core/data/models/info_model.dart';
import 'package:sp1_e_commerce/core/data/models/match_model.dart';
import 'package:sp1_e_commerce/core/data/models/player_model.dart';
import 'package:sp1_e_commerce/core/data/repository/club_repo.dart';
import 'package:sp1_e_commerce/core/data/repository/info_repository.dart';
import 'package:sp1_e_commerce/core/data/repository/matches_repsitory.dart';
import 'package:sp1_e_commerce/core/data/repository/player_repository.dart';
import 'package:sp1_e_commerce/ui/shared/custom_widgets/custom_toast.dart';

class ExamleController extends GetxController {
  RxList<ClubModel> allClubList = <ClubModel>[].obs;
  RxList<MatchModel> allMatchList = <MatchModel>[].obs;
  RxList<PlayerModel> allPlayerList = <PlayerModel>[].obs;
  RxList<InfoModel> allNewsList = <InfoModel>[].obs;

  @override
  void onInit() {
    getAllClub();
    gelAllMatch();
    gelAllPlayer();
    getBoss();
    gelAllNews();

    super.onInit();
  }

  void getAllClub() async {
    final result = await ClubRepo.getAllClub();
    result.fold(
      (l) {
        CustomToast.showMessage(message: l.toString(), type: MessageType.ERROR);
      },
      (r) {
        allClubList.addAll(r);
      },
    );
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

  RxList<BossModel> bossList = <BossModel>[].obs;
  RxInt index = 1.obs;

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

  void gelAllPlayer() async {
    final result = await PlayerRepository.getPlayer();
    result.fold(
      (l) {
        CustomToast.showMessage(message: l.toString(), type: MessageType.ERROR);
      },
      (r) {
        allPlayerList.addAll(r);
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
