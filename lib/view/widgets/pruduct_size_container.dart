import 'package:flutter/material.dart';
import 'package:product_details/constant.dart';

class ProductImagesContainer extends StatelessWidget {
  const ProductImagesContainer(
      {Key? key, required this.text,  this.onTap, required this.color, })
      : super(key: key);


  final String text;
  final Color color;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap ,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.062,
        width: MediaQuery.of(context).size.width * 0.12,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
        ),
        child:  Center(
          child: Text(text,style: const TextStyle(fontFamily: 'Audiowide',)),
        ),
      ),
    );
  }
}
