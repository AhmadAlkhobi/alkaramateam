import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sp1_e_commerce/ui/shared/colors.dart';
import 'package:sp1_e_commerce/ui/shared/custom_widgets/custom_text.dart';
import 'package:sp1_e_commerce/ui/shared/utils.dart';
import 'package:sp1_e_commerce/ui/views/deatils_player/custom_row.dart';
import 'package:sp1_e_commerce/ui/views/deatils_player/details_player_controller.dart';

class DeatilsPlayer extends StatefulWidget {
  const DeatilsPlayer({super.key});

  @override
  State<DeatilsPlayer> createState() => _DeatilsPlayerState();
}

class _DeatilsPlayerState extends State<DeatilsPlayer> {
  DetailsPlayerController controller = Get.put(DetailsPlayerController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(children: [
        Padding(
          padding: EdgeInsetsDirectional.only(
              start: screenWidth(5), bottom: screenWidth(5)),
          child: Image.asset('assets/images/pngs/out (83) 7.png',
              height: screenWidth(1)),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: EdgeInsetsDirectional.only(start: screenWidth(35)),
            height: screenWidth(0.9),
            width: screenWidth(1),
            decoration: BoxDecoration(
                color: AppColors.barColor,
                borderRadius: BorderRadius.vertical(
                    top: Radius.circular(screenWidth(10)))),
            child: ListView(children: [
              Padding(
                padding: EdgeInsetsDirectional.only(start: screenWidth(3.5)),
                child: CustomText(
                  text: 'تامر حاج محمد',
                  textColor: AppColors.whiteColor,
                  fontSize: screenWidth(30),
                  styleType: TextStyleType.TITLE,
                ),
              ),
              CustomRow(
                text: 'المواليد:',
                text2: 'سورية - حمص 3 ابريل 1990',
              ),
              Row(children: [
                CustomRow(
                  text: "الطول",
                  text2: ": 181سم",
                ),
                SizedBox(
                  width: screenWidth(25),
                ),
                CustomRow(
                  text: "مركز اللعب",
                  text2: ": خط وسط,",
                ),
              ]),
              Padding(
                padding: EdgeInsetsDirectional.only(top: screenWidth(20)),
                child: CustomRow(
                  text: ' النادي الأم :',
                  text2: ' نادي الكرامة السوري',
                ),
              ),
              CustomRow(
                text: ' المسيرة الأحترافية :',
                text2: '',
              ),
              SizedBox(
                width: screenWidth(2),
                height: screenHeight(1),
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemCount: 12,
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: screenWidth(100), crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return CustomRow(
                      isunderlin: false,
                      text: 'نادي الكرامة',
                      text2: '',
                    );
                  },
                ),
              ),
            ]),
          ),
        ),
      ]),
    ));
  }
}
