import 'package:flutter/cupertino.dart';
import 'package:flutter_payment_app/component/colors.dart';

class AppLargeButton extends StatelessWidget {
  final Color? backgroundcolor;
  final Color? textColor;
  final String text;
  final Function()?onTap;
  final bool? isBorder;


  const AppLargeButton({Key? key,
  this.backgroundcolor:AppColor.mainColor,
  this.textColor,
  this.onTap,
  this.isBorder:false,
  required this.text
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(left:30, right:30),
        height: 60,
        width: MediaQuery.of(context).size.width-60,
        decoration: BoxDecoration(
          color: backgroundcolor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: 2,
            color: AppColor.mainColor

          )
        ),
        child: Center(
          child: Text(
            text,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize:30,
                  color: textColor
          )

          ),
        )
      )
    );
  }
}
