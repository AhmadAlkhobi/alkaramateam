import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sp1_e_commerce/ui/shared/colors.dart';
import 'package:sp1_e_commerce/ui/shared/custom_app_bar.dart';
import 'package:sp1_e_commerce/ui/shared/custom_widgets/custom_text.dart';
import 'package:sp1_e_commerce/ui/shared/utils.dart';
import 'package:sp1_e_commerce/ui/views/main_view/resulte_view/custom_result/custom_container.dart';

class ResulteView extends StatefulWidget {
  const ResulteView({super.key});

  @override
  State<ResulteView> createState() => _ResulteViewState();
}

class _ResulteViewState extends State<ResulteView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(title: 'النتائج', showBool: true),
        body: ListView(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: screenWidth(20),
              ),
              // The segmented control with three buttons
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        AppColors.whiteColor,
                        AppColors.whiteColor,
                        AppColors.orange1Color
                      ],
                    ),
                    borderRadius: BorderRadius.circular(25)),
                width: screenWidth(1.4),
                height: screenWidth(6),
                child: Row(
                  children: [
                    SizedBox(
                      width: screenWidth(35),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.symmetric(
                          horizontal: screenWidth(35)),
                      child: Text('<<'),
                    ),
                    CustomConrainer(),
                    CustomConrainer(
                      isSelect: true,
                    ),
                    CustomConrainer(),
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.all(screenWidth(20)),
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/images/pngs/BG.png',
                      ),
                      Center(
                        child: Column(
                          children: [
                            SizedBox(
                              height: screenWidth(180),
                            ),
                            Text('الجمعة، 2023/05/26',
                                style: TextStyle(
                                    fontSize: screenWidth(22),
                                    color: AppColors.whiteColor)),
                            Text("12 : 12 عصراً",
                                style: TextStyle(
                                    fontSize: screenWidth(26),
                                    color: AppColors.whiteColor))
                          ],
                        ),
                      ),
                      Positioned(
                        top: screenWidth(8),
                        right: screenWidth(18),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Image.asset('assets/images/pngs/logo.png'),
                                Text(
                                  'الكرامة',
                                  style: TextStyle(
                                      fontSize: screenWidth(14),
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.whiteColor),
                                )
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: screenWidth(30)),
                              child: Column(
                                children: [
                                  Text(
                                    'ملعب خالد بن الوليد',
                                    style: TextStyle(
                                      fontSize: screenWidth(22),
                                    ),
                                  ),
                                  Text(
                                    '0:1',
                                    style: TextStyle(
                                        fontSize: screenWidth(9),
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                Image.asset('assets/images/pngs/logo.png'),
                                Text(
                                  ' الكرامة',
                                  style: TextStyle(
                                      fontSize: screenWidth(14),
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.whiteColor),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.only(top: screenWidth(2.7)),
                        child: Center(
                          child: Column(
                            children: [
                              Text(
                                'الجولة',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: screenWidth(22),
                                    color: AppColors.whiteColor),
                              ),
                              Text(
                                '25',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: screenWidth(22),
                                    color: AppColors.whiteColor),
                              ),
                              SizedBox(
                                height: screenWidth(20),
                              ),
                              Column(
                                children: [
                                  Stack(
                                    children: [
                                      Image.asset(
                                          'assets/images/pngs/Vector.png'),
                                      Padding(
                                        padding: EdgeInsetsDirectional.only(
                                            top: screenWidth(20)),
                                        child: Center(
                                          child: Text(
                                            'جدول ترتيب فرق الدوري السوري 2023/2024',
                                            style: TextStyle(
                                                fontSize: screenWidth(24),
                                                fontWeight: FontWeight.bold,
                                                color: AppColors.whiteColor),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    margin: EdgeInsetsDirectional.all(
                                        screenWidth(35)),
                                    child: Center(
                                      child: Table(
                                        border: TableBorder.all(),
                                        children: [
                                          buildRow([
                                            'ترتيب',
                                            'الفريق',
                                            'لعب',
                                            'فاز',
                                            'تعادل',
                                            'خسر',
                                            'نقاط',
                                          ]),
                                          buildRow([
                                            '1',
                                            'الحرية',
                                            '5',
                                            '0',
                                            '0',
                                            '5',
                                            '0',
                                          ]),
                                          buildRow([
                                            '2',
                                            'الكرامة',
                                            '5',
                                            '0',
                                            '4',
                                            '1',
                                            '4',
                                          ], isSlelcted: true),
                                          buildRow([
                                            '3',
                                            'الساحل',
                                            '5',
                                            '1',
                                            '1',
                                            '3',
                                            '4',
                                          ]),
                                          buildRow([
                                            '4',
                                            'الوحدة',
                                            '5',
                                            '0',
                                            '3',
                                            '2',
                                            '3',
                                          ]),
                                          buildRow([
                                            '5',
                                            'الجيش',
                                            '5',
                                            '0',
                                            '0',
                                            '5',
                                            '0',
                                          ]),
                                        ],
                                        columnWidths: {
                                          1: FixedColumnWidth(screenWidth(4.5))
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  )),
              InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      content: Column(
                        children: [
                          Stack(
                            children: [
                              Image.asset('assets/images/pngs/Vector.png'),
                              Padding(
                                padding: EdgeInsetsDirectional.only(
                                    top: screenWidth(20)),
                                child: Center(
                                  child: Text(
                                    'جدول ترتيب فرق الدوري السوري 2023/2024',
                                    style: TextStyle(
                                        fontSize: screenWidth(24),
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.whiteColor),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsetsDirectional.all(screenWidth(35)),
                            child: Center(
                              child: Table(
                                border: TableBorder.all(),
                                children: [
                                  buildRow([
                                    'ترتيب',
                                    'الفريق',
                                    'لعب',
                                    'فاز',
                                    'تعادل',
                                    'خسر',
                                    'نقاط',
                                  ]),
                                  buildRow([
                                    '8',
                                    'الجيش',
                                    '5',
                                    '1',
                                    '2',
                                    '2',
                                    '5',
                                  ]),
                                  buildRow([
                                    '9',
                                    'الكرامة',
                                    '5',
                                    '0',
                                    '4',
                                    '1',
                                    '4',
                                  ], isSlelcted: true),
                                  buildRow([
                                    '10',
                                    'الساحل',
                                    '5',
                                    '1',
                                    '1',
                                    '3',
                                    '4',
                                  ]),
                                  buildRow([
                                    '11',
                                    'الوحدة',
                                    '5',
                                    '0',
                                    '3',
                                    '2',
                                    '3',
                                  ]),
                                  buildRow([
                                    '12',
                                    'الحرية',
                                    '5',
                                    '0',
                                    '0',
                                    '5',
                                    '0',
                                  ]),
                                  buildRow([
                                    '6',
                                    'أهلي حلب',
                                    '5',
                                    '0',
                                    '0',
                                    '5',
                                    '0',
                                  ]),
                                ],
                                columnWidths: {
                                  1: FixedColumnWidth(screenWidth(4.5))
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      actions: [
                        ElevatedButton(
                            onPressed: () {
                              Get.back();
                            },
                            child: CustomText(
                              text: 'Go Back',
                              styleType: TextStyleType.SUBTITLE,
                              textColor: AppColors.blackColor,
                            ))
                      ],
                    ),
                  );
                },
                child: Container(
                    margin: EdgeInsetsDirectional.only(start: screenWidth(2.5)),
                    alignment: Alignment.center,
                    width: screenWidth(2.5),
                    height: screenHeight(18),
                    decoration: BoxDecoration(
                        color: AppColors.orangeColor,
                        borderRadius: BorderRadius.circular(23)),
                    child: CustomText(
                      text: 'شاهد كامل الجدول',
                      styleType: TextStyleType.BODY,
                      textColor: AppColors.whiteColor,
                    )),
              ),
            ],
          ),
        ]));
  }
}
