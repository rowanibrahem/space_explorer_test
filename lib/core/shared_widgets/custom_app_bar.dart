import 'package:flutter/material.dart';
import 'package:space_explorer_test/core/theme/color_app.dart';
import 'package:space_explorer_test/core/theme/styles.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget{
  final String image;
  const CustomAppBar({super.key, required this.image});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
  
  @override
  // TODO: implement preferredSize
   Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      title: Text(
        'Explorer',
        style: Styles.nunitoFont24.copyWith(color: ColorApp.yellowColor)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Image.asset(widget.image),
          )
        ],
    );
  }
}