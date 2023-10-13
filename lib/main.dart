import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:product_details/constant.dart';
import 'package:product_details/view/product_details_view.dart';

void main() {
  runApp(const ProductDetails());
}

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
        appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: kPrimaryColor,
          ),
          backgroundColor: kPrimaryColor,
          elevation: 0,
        )
      ),
      home: const ProductDetailsView(),
    );
  }
}

