import 'package:flutter/material.dart';
import 'package:model_app/data/app_data.dart';
import 'package:model_app/res/common/app_common_container.dart';

class SectionScreen extends StatefulWidget {
  const SectionScreen({super.key});

  @override
  State<SectionScreen> createState() => _SectionScreenState();
}

class _SectionScreenState extends State<SectionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xFFFFFFFF),
      body: SafeArea(
        child: GridView.builder(
          itemCount: shoesList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 0.58,
          ),
          itemBuilder: (context, index) {
            return AppContainer(
              image: shoesList[index].image,
            );

            // return Container(
            //   color: Colors.red,
            // );
          },
        ),
      ),
    );
  }
}
