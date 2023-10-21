import 'package:flutter/material.dart';
import 'package:movies_app/core/utils/app_styles.dart';
import 'package:movies_app/features/movie_details/view/widgets/movie_details_body.dart';

class MovieDetailsView extends StatelessWidget {
  static String routeName = "moveDetailsScreen";
  const MovieDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Dora and the lost city of gold",
          style: AppStyles.textStyle20.copyWith(fontWeight: FontWeight.w400),
        ),
      ),
      body: MovieDetailsBody(),
    );
  }
}
