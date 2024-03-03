import 'package:flutter/material.dart';
import 'package:sp1_e_commerce/ui/shared/utils.dart';

class CustomBoss extends StatelessWidget {
  final String photoUrl;
  final String label;
  const CustomBoss({
    super.key,
    required this.photoUrl,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsetsDirectional.only(end: screenWidth(9)),
          height: screenWidth(2.2),
          width: screenWidth(2),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                  margin: EdgeInsetsDirectional.only(start: screenWidth(7)),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  height: screenWidth(1),
                  child: Image.asset('assets/images/pngs/Rectangle101.png')),
              Positioned(
                top: screenWidth(4.2),
                child: Image.asset(
                  'assets/images/pngs/out44.png',
                  width: screenWidth(1.6),
                ),
              ),
              Positioned.directional(
                top: screenWidth(4.2),
                start: screenWidth(5),
                textDirection: TextDirection.rtl,
                child: Container(
                  width: screenWidth(4.3),
                  child: Text(
                    'نصوح البارودي 2006',
                    style: TextStyle(fontSize: screenWidth(26)),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
