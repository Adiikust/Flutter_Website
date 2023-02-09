import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextBottun extends StatelessWidget {
  final String text;
  final Color buttonColor;
  final Color textColor;
  final VoidCallback clickCallback;
  const TextBottun(
      {Key? key,
      required this.text,
      required this.clickCallback,
      required this.buttonColor,
      required this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => clickCallback(),
      child: Container(
          height: Get.height * 0.07,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 15,
                color: textColor,
              ),
            ),
          )),
    );
  }
}
