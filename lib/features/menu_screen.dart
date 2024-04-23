import 'package:flutter/material.dart';
import 'package:space_explorer_test/core/constants/asset_images.dart';
import 'package:space_explorer_test/core/shared_widgets/custom_app_bar.dart';
import 'package:space_explorer_test/core/theme/color_app.dart';
import 'package:space_explorer_test/features/details_screen.dart';

// ignore: must_be_immutable
class MenuScreen extends StatelessWidget {
   MenuScreen({super.key});

  List<String> list = [
     AssetImages.mars,
      AssetImages.mercury,
      AssetImages.earth,
      AssetImages.jupiter,
      AssetImages.venus,
      AssetImages.mars,
      AssetImages.mars,
      AssetImages.mercury,
      AssetImages.mars,
      AssetImages.mercury,
      AssetImages.earth,
      AssetImages.jupiter,
      AssetImages.venus,
      AssetImages.mars,
      AssetImages.earth,
      AssetImages.jupiter,
      AssetImages.venus,
      AssetImages.mars,
      AssetImages.mercury,
      AssetImages.earth,
      AssetImages.jupiter,
      AssetImages.venus,
      AssetImages.mars,
      AssetImages.mars,
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(image: AssetImages.xIcon),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              ColorApp.purple1Color,
              ColorApp.purple3Color,
              ColorApp.purple3Color,
            ],
          )
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
             Expanded(
               child: GridView.count(
                        crossAxisCount: 2,
                        crossAxisSpacing: 2,
                        mainAxisSpacing: 10,
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        children: List.generate(
                          growable: true,
                          list.length,
                          (index) => GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DetailsScreen(
                                image: list[index],
                                          )));
                            },
                            child: Image.asset(
                              list[index],
                            ),
                          ),
                        ),
                      ),
             ),
          ],),
        ),
      ),
    );
  }
}