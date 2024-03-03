import 'package:flutter/material.dart';
import 'package:sp1_e_commerce/core/data/models/match_model.dart';
import 'package:sp1_e_commerce/ui/shared/colors.dart';
import 'package:sp1_e_commerce/ui/shared/custom_app_bar.dart';
import 'package:sp1_e_commerce/ui/shared/custom_match_continar.dart';
import 'package:sp1_e_commerce/ui/shared/custom_player.dart';
import 'package:sp1_e_commerce/ui/shared/utils.dart';

class MatchDetailsView extends StatelessWidget {
  final MatchModel matchInfo;
  const MatchDetailsView({super.key, required this.matchInfo});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
          appBar: CustomAppBar(
            title: "تفاصيل المباراة",
          ),
          body: Column(
            children: [
              SizedBox(
                height: screenWidth(2.4),
                child: Center(
                  child: CustomMatchCont(
                    club1: matchInfo.club1Name ?? '',
                    club2: matchInfo.club2Name ?? '',
                    date: matchInfo.whenDate ?? '',
                    day: matchInfo.whenDay ?? '',
                    image1: matchInfo.logoclub1 ?? '',
                    image2: matchInfo.logoclub2 ?? '',
                    playGround: matchInfo.playGround ?? '',
                    time: matchInfo.whenTime ?? '',
                    nextmatch: false,
                  ),
                ),
              ),

              SizedBox(
                height: screenWidth(6),
                child: AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  bottom: TabBar(
                    physics: NeverScrollableScrollPhysics(),
                    labelPadding:
                        EdgeInsetsDirectional.only(start: screenWidth(100)),
                    indicatorColor: Colors.black,
                    indicatorPadding: EdgeInsetsDirectional.only(
                        start: screenWidth(50), end: screenWidth(50)),

                    labelStyle: TextStyle(
                        fontSize: screenWidth(16), fontWeight: FontWeight.bold),
                    // change the label color to white when selected, and black when unselected
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.black,
                    tabs: [
                      Tab(
                        text: 'خطة الفريق',
                      ),
                      Tab(
                        text: 'التبديلات',
                      ),
                      Tab(
                        text: 'الاحتياط',
                      ),
                    ],
                  ),
                ),
              ),

              // create widgets for each tab bar here
              Expanded(
                child: TabBarView(
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    Container(
                        child: Image.asset(
                      'assets/images/pngs/plan1.png',
                    )),
                    Container(
                        margin: EdgeInsetsDirectional.only(top: screenWidth(2)),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CustomPlayer(
                              agetext: '23عام',
                              longtext: '183CM',
                              numtext: 'الرقم17',
                              postext: 'المركزRW',
                              textname: 'مازن عمارة',
                              color: AppColors.blueColor,
                              imge: 'assets/images/pngs/out (124) 1.png',
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: screenWidth(7)),
                              child: Image.asset(
                                'assets/images/pngs/Vector1.png',
                                width: screenWidth(20),
                              ),
                            ),
                            CustomPlayer(
                              agetext: '23عام',
                              longtext: '183CM',
                              numtext: 'الرقم17',
                              postext: 'المركزRW',
                              textname: 'مازن عمارة',
                              color: AppColors.blueColor,
                              imge: 'assets/images/pngs/out (124) 1.png',
                            ),
                          ],
                        )),
                    SingleChildScrollView(
                      child: GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: screenWidth(8),
                          // crossAxisSpacing: screenWidth(20)
                        ),
                        shrinkWrap: true,
                        //physics: NeverScrollableScrollPhysics(),
                        itemCount: 8,
                        padding: EdgeInsetsDirectional.only(
                          top: screenWidth(4),
                        ),
                        itemBuilder: (context, index) {
                          return Center(
                              child: Padding(
                            padding: EdgeInsetsDirectional.only(
                              top: screenWidth(6),
                            ),
                            child: CustomPlayer(
                              agetext: '23عام',
                              longtext: '183CM',
                              numtext: 'الرقم17',
                              postext: 'المركزRW',
                              textname: 'مازن عمارة',
                              color: AppColors.blueColor,
                              imge: 'assets/images/pngs/out (124) 1.png',
                            ),
                          ));
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
