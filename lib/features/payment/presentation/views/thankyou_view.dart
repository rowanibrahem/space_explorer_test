import 'package:afro_app/core/shared_widget/custom_appbar.dart';
import 'package:afro_app/features/payment/presentation/views/widgets/thankyou_body.dart';
import 'package:flutter/material.dart';

class ThankYouView extends StatelessWidget {
  const ThankYouView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Transform.translate(
          offset: const Offset(0, -16),
          child: const ThankYouBody(),
      ),
    );
  }
}
