import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/shared_widgets/movie_poster.dart';
import 'package:movies_app/core/utils/app_colors.dart';
import 'package:movies_app/core/utils/app_styles.dart';
import 'package:movies_app/dummy_movie_model.dart';
import 'package:movies_app/features/movie_details/view/widgets/movie_details_hero.dart';
import 'package:movies_app/features/movie_details/view/widgets/movie_details_top.dart';

class MovieDetailsBody extends StatelessWidget {
  const MovieDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const MovieDetailsHero(),
        SizedBox(
          height: 15.h,
        ),
        MovieDetailsTop(),
      ],
    );
  }
}


// class MovieGenres extends StatelessWidget {
//   const MovieGenres({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(4),
//         border: Border.all(
//           color: Colors.white.withOpacity(0.3),
//           width: 1,
//         ),
//       ),
//       child: Center(
//         child: Text(
//           "Action",
//         ),
//       ),
//     );
//   }
// }

//  SizedBox(
//                 width: 20.w,
//               ),
//               SizedBox(
//                 width: 20.w,
//               ),
//               Row(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   MoviePoster(
//                     movie: dummyMovieData[0],
//                     height: 200.h,
//                   ),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   Column(
//                     children: [
//                       Wrap(
//                         children: [
//                           MovieGenres(),
//                         ],
//                       ),
//                     ],
//                   )
//                 ],
//               )