import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_payment_app/component/colors.dart';

class AppButtons extends StatefulWidget {
  final double? fontSize;
  final IconData? icon;
  final Function()? onTap;
  final Color? backgroundColor;
  final Color? iconColor;
  final Color? textColor;
  final String? text;
  const AppButtons({
    Key? key,
    this.fontSize = 20,
    this.textColor = AppColor.mainColor,
    this.iconColor = Colors.white,
    this.backgroundColor = AppColor.mainColor,
    this.text,
    required this.icon,
    this.onTap,
    required IconData icons,
  }) : super(key: key);

  @override
  State<AppButtons> createState() => _AppButtonsState();
}

class _AppButtonsState extends State<AppButtons> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: widget.onTap,
        child: Column(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: widget.backgroundColor,
              ),
              child: Icon(
                widget.icon,
                size: 30,
                color: widget.iconColor,
              ),
            ),
            widget.text != null
                ? Text(
                    widget.text!,
                    style: TextStyle(fontSize: 14, color: widget.textColor),
                  )
                : Container()
          ],
        ));
  }
}
