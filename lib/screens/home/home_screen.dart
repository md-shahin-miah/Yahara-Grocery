import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';



import '../../models/grocery_item.dart';
import '../../styles/colors.dart';
import '../../widgets/grocery_item_card_widget.dart';
import '../../widgets/search_bar_widget.dart';
import '../product_details/product_details_screen.dart';
import 'grocery_featured_Item_widget.dart';
import 'home_banner_widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  // SvgPicture.asset("assets/icons/app_icon_color.svg"),
                  const SizedBox(
                    height: 5,
                  ),
                  padded(locationWidget()),
                  const SizedBox(
                    height: 15,
                  ),
                  padded(SearchBarWidget()),
                  const SizedBox(
                    height: 25,
                  ),
                  padded(HomeBanner()),
                  const SizedBox(
                    height: 25,
                  ),
                  padded(subTitle("Most Exclusive Order")),
                  getHorizontalItemSlider(exclusiveOffers),
                  const SizedBox(
                    height: 15,
                  ),
                  padded(subTitle("Best Selling")),
                  getHorizontalItemSlider(bestSelling),
                  const SizedBox(
                    height: 15,
                  ),
                  padded(subTitle("Groceries")),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: 105,
                    child: getHorizontalGroceryFeaturedSlider(groceryFeaturedItems),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  getHorizontalItemSlider(groceries),
                  const SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget padded(Widget widget) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: widget,
    );
  }

  Widget getHorizontalItemSlider(List<GroceryItem> items) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: 250,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        itemCount: items.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              onItemClicked(context, items[index]);
            },
            child: GroceryItemCardWidget(
              item: items[index],
              heroSuffix: "home_screen",
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            width: 20,
          );
        },
      ),
    );
  }
  Widget getHorizontalGroceryFeaturedSlider(List<GroceryFeaturedItem> items) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: 100,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        itemCount: items.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            // onTap: () {
            //   onItemClicked(context, items[index]);
            // },
            child:GroceryFeaturedCard(
              items[index],
              color: index%2==0? const Color(0xffee85c9):const Color(0xffF8A44C),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            width: 20,
          );
        },
      ),
    );
  }

  void onItemClicked(BuildContext context, GroceryItem groceryItem) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => ProductDetailsScreen(
                groceryItem,
                heroSuffix: "home_screen",
              )),
    );
  }

  Widget subTitle(String text) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Spacer(),
        const Text(
          "See All",
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppColors.primaryColor),
        ),
      ],
    );
  }

  Widget locationWidget() {
    String locationIconPath = "assets/icons/location_icon.svg";
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          locationIconPath,
          height: 20,
          width: 10,
        ),
        const SizedBox(
          width: 8,
        ),
        const Text(
          "Sylhet,Bangladesh",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
