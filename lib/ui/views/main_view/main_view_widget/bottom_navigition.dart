import 'package:flutter/material.dart';
import 'package:sp1_e_commerce/core/enums/bottum_bar.dart';
import 'package:sp1_e_commerce/ui/shared/colors.dart';
import 'package:sp1_e_commerce/ui/shared/utils.dart';
import 'package:sp1_e_commerce/ui/views/main_view/main_view_widget/nav_item.dart';

class CustomNavigationBar extends StatelessWidget {
  final BottumBar selected;
  final Function(BottumBar, int) mainTap;

  const CustomNavigationBar(
      {super.key, required this.selected, required this.mainTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenWidth(4.6),
      child: Stack(                 
        clipBehavior: Clip.none,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                  color: AppColors.barColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10))),
              height: screenWidth(6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  NavItem(
                    onTap: () {
                      mainTap(BottumBar.HOME, 0);
                    },
                    icon: "home",
                    title: 'الرئيسية',
                    isSelected: selected == BottumBar.HOME,
                  ),
                  NavItem(
                    onTap: () {
                      mainTap(BottumBar.RESULTS, 1);
                    },
                    icon: "results",
                    title: "النتائج",
                    isSelected: selected == BottumBar.RESULTS,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: screenWidth(25)),
                    child: NavItem(
                      onTap: () {
                        mainTap(BottumBar.MATCHES, 2);
                      },
                      icon: "logo",
                      title: "المباريات",
                      isSelected: selected == BottumBar.MATCHES,
                    ),
                  ),
                  NavItem(
                    onTap: () {
                      mainTap(BottumBar.ABOUTCLUP, 3);
                    },
                    icon: "test",
                    title: "عن النادي",
                    isSelected: selected == BottumBar.ABOUTCLUP,
                  ),
                  NavItem(
                    onTap: () {
                      mainTap(BottumBar.MEUSIUM, 4);
                    },
                    icon: "musium",
                    title: "المتحف",
                    isSelected: selected == BottumBar.MEUSIUM,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsetsDirectional.only(
                  bottom: screenWidth(14), end: screenWidth(28)),
              child: Container(
                width: screenWidth(3),
                height: screenWidth(3),
                decoration: BoxDecoration(
                  color: AppColors.barColor,
                  shape: BoxShape.circle,
                ),
                padding: EdgeInsetsDirectional.all(screenWidth(60)),
                child: InkWell(
                  onTap: () {
                    mainTap(BottumBar.MATCHES, 2);
                  },
                  child: Image.asset(
                    'assets/images/pngs/logo.png',
                    width: screenWidth(6),
                    height: screenWidth(6),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
