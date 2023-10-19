import 'package:flutter/material.dart';
import 'package:movies_app/core/utils/app_styles.dart';

class BrowseView extends StatelessWidget {
  const BrowseView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "BROWSE",
        style: AppStyles.textStyle22,
      ),
    );
  }
}
