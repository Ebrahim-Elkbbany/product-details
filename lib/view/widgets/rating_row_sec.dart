import 'package:flutter/material.dart';
import 'package:product_details/constant.dart';
import 'package:rate/rate.dart';

class RatingRowSec extends StatefulWidget {
  const RatingRowSec({Key? key}) : super(key: key);

  @override
  State<RatingRowSec> createState() => _RatingRowSecState();
}

class _RatingRowSecState extends State<RatingRowSec> {
  int quantity = 1;
  String ratingValue = '4.0';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Rate(
            iconSize: 27,
            color: kSecondryColor,
            allowHalf: true,
            allowClear: false,
            initialValue: 4,
            readOnly: false,
            onChange: (value) {
              ratingValue = value.toString();
              setState(() {});
            },
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.01,
          ),
          Text(
            ratingValue,
            style: textStyle.copyWith(
              color: Colors.grey[400],
            ),
          ),
          const Spacer(),
          Container(
            height: MediaQuery.of(context).size.height * 0.054,
            width: MediaQuery.of(context).size.width * 0.32,
            decoration: BoxDecoration(
              color: const Color(0xff2B2B2B),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.038,
                  width: MediaQuery.of(context).size.width * 0.08,
                  decoration: BoxDecoration(
                    color: kSecondryColor,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: IconButton(
                    onPressed: () {
                      if (quantity > 1) {
                        quantity--;
                        setState(() {});
                      }
                    },
                    icon: const Icon(Icons.remove, size: 16),
                  ),
                ),
                Text(
                  '$quantity',
                  style: textStyle.copyWith(
                    color: Colors.grey[400],
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.038,
                  width: MediaQuery.of(context).size.width * 0.08,
                  decoration: BoxDecoration(
                    color: kSecondryColor,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: IconButton(
                    onPressed: () {
                      quantity++;
                      setState(() {});
                    },
                    icon: const Icon(Icons.add, size: 16),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
