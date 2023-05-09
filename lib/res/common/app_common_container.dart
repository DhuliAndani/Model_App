import 'package:flutter/material.dart';
import 'package:model_app/res/constant/app_images.dart';

class AppContainer extends StatelessWidget {
  final String? image;
  const AppContainer({super.key, this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFF5F5F5),
        border: Border.all(color: Colors.white, width: 5),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            //alignment: Alignment.topRight,
            children: [
              Image.asset(image!),
              Padding(
                padding: const EdgeInsets.only(left: 125, top: 5),
                child: Image.asset(
                  AppImages.heartFrame,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
            child: Row(
              children: const [
                Icon(
                  Icons.star,
                  size: 20,
                  color: Color(0xFFFFD700),
                ),
                Icon(
                  Icons.star,
                  size: 20,
                  color: Color(0xFFFFD700),
                ),
                Icon(
                  Icons.star,
                  size: 20,
                  color: Color(0xFFFFD700),
                ),
                Icon(
                  Icons.star,
                  size: 20,
                  color: Color(0xFFFFD700),
                ),
                Icon(
                  Icons.star,
                  size: 20,
                  color: Color(0xFFFFD700),
                ),
                SizedBox(width: 5),
                Text("(5.0)"),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
            child: Text(
              "Product Name",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              children: const [
                Text(
                  "\$841.00",
                  style: TextStyle(
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  "\$841.00",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
