// import 'package:get/get.dart';
// import 'package:sp1_e_commerce/core/data/repository/matches_repsitory.dart';
// import 'package:sp1_e_commerce/core/data/repository/shared_prefrence_repository.dart';

// class MatchesController extends GetxController{
// @override
//   void onInit() {
    
//     super.onInit();
//   }


//   void MatchesRepository() {
//     if (formKey.currentState!.validate()) {
//       //* Here to make api request

      

//       MatchesRepository()
        
//           .then((value) {
//         isLoading.value = false;

//         value.fold((l) {
//           BotToast.showText(text: l);
//         }, (r) {
//           SharedPrefrenceRepository().setTokenInfo(r);
//           Get.to(MainView());
//         });
//       });
//     }
//   }
// }