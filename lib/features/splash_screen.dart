import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:space_explorer_test/core/constants/asset_animations.dart';
import 'package:space_explorer_test/core/constants/asset_images.dart';
import 'package:space_explorer_test/core/shared_widgets/custom_app_bar.dart';
import 'package:space_explorer_test/core/theme/color_app.dart';
import 'package:space_explorer_test/core/theme/styles.dart';
import 'package:space_explorer_test/features/menu_screen.dart';

class SplashScren extends StatelessWidget {
  const SplashScren({super.key});

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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
              RichText(
                text: TextSpan(
                 style: Styles.openSansFont40.copyWith(
                 color: ColorApp.whiteColor,
                ),
                children: [
                  const TextSpan(
                          text: "Let’s Explore the ",
                        ),
                        TextSpan(
                            text: 'Solar System ',
                            style: Styles.openSansFont40.copyWith(
                                color: ColorApp.yellowColor, fontSize: 50)),
                        const TextSpan(
                          text: 'with ',
                        ),
                        TextSpan(
                          text: 'Explorer',
                          style: Styles.openSansFont40
                              .copyWith(color: ColorApp.yellowColor, fontSize: 40),
                        ),
                ]
                ),
                ),
                 Lottie.asset(AssetAnimation.animation3),
                 Padding(
                   padding: const EdgeInsets.all(10.0),
                   child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>  MenuScreen(),
                          ),
                        );
                    }, 
                    style: ElevatedButton.styleFrom(
                                   minimumSize: const Size(double.infinity, 0),
                                   backgroundColor: ColorApp.whiteColor,
                                   padding : const EdgeInsets.symmetric(
                                     horizontal: 100, vertical: 12,),
                                   shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      24,
                    ),
                                   ),
                                  //  minimumSize: Size(150, 50),
                                 ),
                   child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Text(
                      "Let's Go",
                      style: Styles.openSansFont22,
                     
                    ),
                    const SizedBox(width: 3,),
                    Image.asset(AssetImages.rocket),
                                   ],) 
                    ),
                 ),
              ],
              ),
          ),
        ),
      ),
    );
  }
}