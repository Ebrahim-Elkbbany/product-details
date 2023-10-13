import 'package:flutter/material.dart';
import 'package:product_details/constant.dart';
import 'package:product_details/view/widgets/deatails_button_Sec.dart';
import 'package:product_details/view/widgets/images_size_sec.dart';
import 'package:product_details/view/widgets/rating_row_sec.dart';


class ProductDetailsViewBody extends StatelessWidget {
  const ProductDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ImageSizeSec(),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Text(
            'Belgium EURO',
            style:
            textStyle.copyWith(fontWeight: FontWeight.w700, fontSize: 25),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Text(
            '20/21 Away by Adidas',
            style: textStyle.copyWith(
              color: Colors.grey[400],
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        const RatingRowSec(),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.025,
        ),
        const DetailsButtonSec(),
      ],
    );
  }
}

