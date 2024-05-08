import 'package:afro_app/core/theme/styles.dart';
import 'package:flutter/material.dart';

class ProfileListItem extends StatelessWidget {
  final String text;
  final IconData? icon;
  final VoidCallback onPressed;

  const ProfileListItem({
    required this.text,
     this.icon,
    required this.onPressed,
    super.key,
  });
   @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: Styles.textStyle16,
            ),
          const Icon(Icons.arrow_forward_ios),
        ],
      ),
      onTap: onPressed,
    );
  }
}

