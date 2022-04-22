import 'package:affixme/core/color.dart';
import 'package:affixme/core/container_custom.dart';
import 'package:flutter/material.dart';

class TextFieldCustom extends StatelessWidget {
  const TextFieldCustom({
    Key? key,
    this.marginLeft = 25.97,
    this.marginRight = 24.35,
    this.marginBottom = 0.0,
    this.marginTop = 0.0,
    required this.hintText,
  }) : super(key: key);
  final double marginLeft;
  final double marginRight;
  final double marginTop;
  final double marginBottom;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return ContainerCustom(
      height: 52.03,
      marginBottom: marginBottom,
      marginTop: marginTop,
      marginLeft: marginLeft,
      marginRight: marginRight,
      boxDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.33), color: white,border: Border.all(color: black)),
      paddingLeft: 16.65,
      child: TextField(
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16.65,
            )),
      ),
    );
  }
}
