import 'package:flutter/material.dart';
import 'package:product_details/constant.dart';


class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,
      required this.buttonName,
      this.onPressed,
       this.height=50,
       this.width=double.infinity,
       this.radius=16, required this.icon,
      })
      : super(key: key);

  final String buttonName;
  final void Function()? onPressed;
  final double height;
  final double width;
  final double radius;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:  onPressed,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            radius,
          ),
          color: kSecondryColor
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Icon(icon,size: 25),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Text(
                buttonName,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                )
              ),
          ],
        ),
      ),
    );
  }
}
