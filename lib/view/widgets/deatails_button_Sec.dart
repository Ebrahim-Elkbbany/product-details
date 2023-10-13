import 'package:flutter/material.dart';
import 'package:product_details/component/custom_button.dart';
import 'package:product_details/constant.dart';

class DetailsButtonSec extends StatelessWidget {
  const DetailsButtonSec({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Details',
                style: textStyle.copyWith(color: Colors.grey[400]),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              RichText(
                text: TextSpan(
                  text: 'Material:',
                  style: textStyle.copyWith(fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                      text: ' Polyester',
                      style: textStyle.copyWith(
                        color: Colors.grey[400],
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              RichText(
                text: TextSpan(
                  text: 'Shipping:',
                  style: textStyle.copyWith(fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                      text: ' In 5 to 6 Days',
                      style: textStyle.copyWith(
                        color: Colors.grey[400],
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              RichText(
                text: TextSpan(
                  text: 'Returns:',
                  style: textStyle.copyWith(fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                      text: ' Within 20 Days',
                      style: textStyle.copyWith(
                        color: Colors.grey[400],
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Spacer(),
          CustomButton(
            buttonName: '\$89',
            icon: Icons.shopping_bag_outlined,
            width: MediaQuery.of(context).size.width * 0.23,
            height: MediaQuery.of(context).size.height * 0.1456,
          ),

        ],
      ),
    );
  }
}
