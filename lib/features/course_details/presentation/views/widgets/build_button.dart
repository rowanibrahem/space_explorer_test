import 'package:afro_app/core/shared_widget/custom_button.dart';
import 'package:afro_app/features/course_details/presentation/views/widgets/pop_up.dart';
import 'package:afro_app/features/payment/data/repos/checkout_repo_impl.dart';
import 'package:afro_app/features/payment/presentation/manager/cubit/payment_cubit.dart';
import 'package:afro_app/features/payment/presentation/views/widgets/pay_method_bottomsheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Widget buildButtons(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CustomButton(
            text: 'Add to cart',
            textColor: Colors.white,
            borderRadius: BorderRadius.circular(0),
            func: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PopUp(),
                ),
              );
            },
          ),
          const SizedBox(height: 8),
          CustomButton(
            borderRadius: BorderRadius.circular(0),
            backgroundColor: Colors.white,
            text: 'Buy now',
            func: () {
              print('Button tapped');
                 showModalBottomSheet(
                    context: context,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),),
                    builder: (context) {
                      print('Building bottom sheet');
                      return BlocProvider(
                        create: (context) => PaymentCubit(CheckoutRepoImpl()),
                        child: const PaymentMethodsBottomSheet(),
                      );
                    },
                    );
            },
        width:double.infinity,
          ),
        ],
      ),
    );
  }