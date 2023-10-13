import 'package:flutter/material.dart';
import 'package:product_details/constant.dart';
import 'package:product_details/view/widgets/pruduct_size_container.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ImageSizeSec extends StatefulWidget {
  const ImageSizeSec({Key? key}) : super(key: key);

  @override
  State<ImageSizeSec> createState() => _ImageSizeSecState();
}

class _ImageSizeSecState extends State<ImageSizeSec> {
  PageController controller = PageController();
  bool isSelected = false;
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.79,
              height: MediaQuery.of(context).size.height * 0.56,
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
              child: PageView.builder(
                controller: controller,
                physics: const BouncingScrollPhysics(),
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Image.asset(images[index]);
                },
              ),
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.height * 0.025,
              child: SmoothPageIndicator(
                controller: controller,
                count: 3,
                effect: const ExpandingDotsEffect(
                  dotColor: Colors.grey,
                  dotHeight: 4,
                  dotWidth: 11,
                  spacing: 6,
                  activeDotColor: kSecondryColor,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.0425,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.4,
          width: MediaQuery.of(context).size.width * 0.12,
          child: ListView.separated(

            itemBuilder: (context, i) => ProductImagesContainer(
              text: size[i],
              color: index == i ? kSecondryColor : const Color(0xff2B2B2B),
              onTap: () {
                index = i;
                setState(() {});
              },
            ),
            separatorBuilder: (context, index) => SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            itemCount: 5,
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.0425,
        ),
      ],
    );
  }
}
