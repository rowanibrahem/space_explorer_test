import 'package:flutter/material.dart';
import 'package:space_explorer_test/core/constants/asset_images.dart';
import 'package:space_explorer_test/core/shared_widgets/custom_app_bar.dart';
import 'package:space_explorer_test/core/shared_widgets/read_me.dart';
import 'package:space_explorer_test/core/theme/color_app.dart';

class DetailsScreen extends StatelessWidget {
  final String image;
  const DetailsScreen({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(image: AssetImages.menuIcon,),
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
        child : Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(children: [
             Image.asset(
                image,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 15,),
               Divider(
                color: ColorApp.blackColor,
                thickness: 1,
                height: 1,
              ),
              SizedBox(height: 10,),
              const Expanded(
                child: SingleChildScrollView(
                  child: ReadMeTextWidget(
                      text:
                          "Earth, third planet from the Sun and the fifth largest planet in the solar system in terms of size and mass. Its single most outstanding feature is that its near-surface environments are the only places in the universe known to harbour life. It is  It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)"),
                ),
              ),
          ],),
        ),
         
      ) ,
    );
  }
}