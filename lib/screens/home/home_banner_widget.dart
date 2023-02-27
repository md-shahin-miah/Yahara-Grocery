import 'package:flutter/material.dart';

import '../../common_widgets/app_text.dart';
import '../../styles/colors.dart';


class HomeBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width*0.9,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: const DecorationImage(
              image: AssetImage(
                "assets/images/back.jpg",

              ),
              fit: BoxFit.cover)),
      child: Row(

        children: [
          Container(
            padding: EdgeInsets.only(left: 5),
            child: Image.asset(
              "assets/images/banner_image.png",
              height: 70,
              width: 70,
            ),
          ),
          Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              AppText(
                text: "Fresh Vegetables",
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
              AppText(
                text: "Get Up To 40%  OFF",
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: AppColors.primaryColor,
              ),
            ],
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
    );
  }
}
