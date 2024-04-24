import 'package:afro_app/core/theme/colors.dart';
import 'package:afro_app/core/theme/styles.dart';
import 'package:flutter/material.dart';

class CustomButtonold extends StatelessWidget {
  const CustomButtonold({
    super.key,
   this.backgroundColor,
    this.textColor = Colors.black,
    this.borderRadius,
    required this.text,
    this.fontSized,
    required this.func,
     this.width,
    this.height = 43,
  });
  final double? width;
  final double? height;
  final Color? backgroundColor;
  final Color? textColor;
  final BorderRadius? borderRadius;
  final double? fontSized;
  final String text;
  final VoidCallback func;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: width,
        height: height,
        child: ElevatedButton(
          onPressed: func,
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(double.infinity, 0),
            backgroundColor: ColorApp.primaryColor,
            padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                24,
              ),
            ),
            // minimumSize: Size(150, 50),
          ),
          child: Text(
            text,
            style: Styles.textStyle16,
          ),
        ),
      ),
    );
  }
}