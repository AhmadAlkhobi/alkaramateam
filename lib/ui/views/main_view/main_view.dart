import 'package:flutter/material.dart';
import 'package:sp1_e_commerce/core/enums/bottum_bar.dart';
import 'package:sp1_e_commerce/ui/views/about_players_view/about_players.dart';
import 'package:sp1_e_commerce/ui/views/main_view/home_view/home_view.dart';
import 'package:sp1_e_commerce/ui/views/main_view/main_view_widget/bottom_navigition.dart';
import 'package:sp1_e_commerce/ui/views/main_view/matches_view/matches_view.dart';
import 'package:sp1_e_commerce/ui/views/main_view/meusium_view/meusium_view.dart';
import 'package:sp1_e_commerce/ui/views/main_view/resulte_view/resulte_view.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  PageController controller = PageController();
  BottumBar selectedView = BottumBar.HOME;

  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      key: scaffoldKey,
      //--------------------------------
      bottomNavigationBar: CustomNavigationBar(
        selected: selectedView,
        mainTap: (selecteEnum, index) {
          setState(() {
            selectedView = selecteEnum;
          });
          // controller.animateToPage(index,
          //duration: Duration(milliseconds: 50), curve: Curves.easeOutSine);
          controller.jumpToPage(
            index,
          );
        },
      ),
      body: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: controller,
          children: [
            HomeView(),
            ResulteView(),
            MatchesView(),
            AboutPlayersView(),
            MeusiumView(),
          ]),
    ));
  }
}
