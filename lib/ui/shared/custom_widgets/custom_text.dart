import 'package:flutter/material.dart';


enum TextStyleType {
  TITLE,
  SUBTITLE,
  BODY,
  SMALL,
  CUSTOM,
}

class CustomText extends StatelessWidget {
  final String text;
  final TextStyleType? styleType;
  final Color? textColor;
  final int? maxLine;
  final FontWeight? fontWeight;
  final TextAlign? textalign;
  final double? fontSize;

  const CustomText({
    super.key,
    required this.text,
    this.styleType = TextStyleType.BODY,
    this.textColor,
    this.fontWeight,
    this.fontSize,
    this.maxLine,
    this.textalign,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Text(
      text,
      style: getStyle(size),
      textAlign: textalign,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLine,
    );
  }

  TextStyle getStyle(Size size) {
    TextStyle result = TextStyle();

    switch (styleType) {
      case TextStyleType.TITLE:
        result = TextStyle(
          fontSize:size.width/17,
          fontWeight: fontWeight ?? FontWeight.bold,
          color: textColor,
        );
        break;
      case TextStyleType.SUBTITLE:
        result = TextStyle(
          fontSize:size.width/20,
          fontWeight: fontWeight,
          color: textColor,
        );
        break;
      case TextStyleType.BODY:
        result = TextStyle(
          fontSize: size.width/28,
          fontWeight: fontWeight,
          color: textColor,
        );
        break;
      case TextStyleType.SMALL:
        result = TextStyle(
          fontSize:size.width/35,
          fontWeight: fontWeight,
          color: textColor,
        );
        break;
      case TextStyleType.CUSTOM:
        result = TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: textColor,
        );
        break;

      default:
        result = TextStyle(
            fontSize:size.width/28,
            fontWeight: FontWeight.normal,
            color: textColor);
        break;
    }

    return result;
  }
}
