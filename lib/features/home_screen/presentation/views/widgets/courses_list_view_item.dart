
import 'package:afro_app/core/theme/styles.dart';
import 'package:afro_app/features/home_screen/presentation/views/widgets/custom_course_image.dart';
import 'package:flutter/material.dart';

class CoursesListViewItem extends StatelessWidget {

  const CoursesListViewItem({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        // GoRouter.of(context).push('/BookView' , extra: bookModel);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            const CustomCoursesImage(),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  const Row(
                    children: [
                      const Text(
                     '24 lesson',
                    style: Styles.textStyle12,
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                      Text(
                        'F2 hours',
                      style: Styles.textStyle12,
                      ),
                      Spacer(),
                      // Expanded(
                      //     child: BookRating(
                      //       rating: bookModel.volumeInfo.averageRating ?? 4,
                      //       count: bookModel.volumeInfo.ratingsCount  ?? 2500,
                      //     )
                      // ),
                    ],
                  ),
                  const SizedBox(
                   height: 3,
                 ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child:  Text (
                    'Learn web development',
                      style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w400),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
 // Shimmer getShimmerLoading(){
 //  return Shimmer.fromColors(
 //      baseColor: Colors.grey[300]!,
 //      highlightColor: Colors.grey[100]!,
 //    child: GestureDetector(
 //      onTap: (){
 //        GoRouter.of(context).push('/BookView' , extra: bookModel);
 //      },
 //      child: SizedBox(
 //        height: 125,
 //        child: Row(
 //          children: [
 //            CustomBookImage(imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail??''),
 //            const SizedBox(
 //              width: 30,
 //            ),
 //            Expanded(
 //              child: Column(
 //                crossAxisAlignment: CrossAxisAlignment.start,
 //                children:  [
 //                  SizedBox(
 //                    width: MediaQuery.of(context).size.width * .5,
 //                    child:  Text (
 //                      bookModel.volumeInfo.title!,
 //                      style: Styles.textStyle20.copyWith(fontFamily: kGtSectraFine),
 //                      maxLines: 2,
 //                      overflow: TextOverflow.ellipsis,
 //                    ),
 //                  ),
 //                  const SizedBox(
 //                    height: 3,
 //                  ),
 //                  Text(
 //                    bookModel.volumeInfo.authors![0],
 //                    style: Styles.textStyle14,
 //                  ),
 //                  const SizedBox(
 //                    height: 3,
 //                  ),
 //                  Row(
 //                    children: [
 //                      Text(
 //                        'Free',
 //                        style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),
 //                      ),
 //                      Spacer(),
 //                      Expanded(
 //                          child: BookRating(
 //                            rating: bookModel.volumeInfo.averageRating ?? 4,
 //                            count: bookModel.volumeInfo.ratingsCount  ?? 2500,
 //                          )
 //                      ),
 //                    ],
 //                  ),
 //                ],
 //              ),
 //            ),
 //          ],
 //        ),
 //      ),
 //    );,
 //  );
 // }