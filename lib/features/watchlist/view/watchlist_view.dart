import 'package:flutter/material.dart';
import 'package:movies_app/core/utils/app_styles.dart';

class WatchlistView extends StatelessWidget {
  const WatchlistView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "WATCHLIST",
        style: AppStyles.textStyle22,
      ),
    );
  }
}
