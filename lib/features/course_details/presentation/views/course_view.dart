import 'package:afro_app/features/course_details/presentation/views/widgets/course_view_body.dart';
import 'package:flutter/material.dart';

class CourseView extends StatelessWidget {
  const CourseView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CourseBody(),
      ),
    );
  }
}