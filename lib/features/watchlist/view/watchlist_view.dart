import 'package:flutter/material.dart';
import 'package:movies_app/core/utils/app_colors.dart';
import 'package:movies_app/core/utils/app_styles.dart';
import 'package:movies_app/dummy_movie_model.dart';
import 'package:movies_app/features/watchlist/view/widgets/dummy_watchlist_widget.dart';
import 'package:movies_app/features/watchlist/view_model/watchlist_view_model.dart';
import 'package:provider/provider.dart';

class WatchlistView extends StatefulWidget {
   const WatchlistView({super.key,});

  @override
  State<WatchlistView> createState() => _WatchlistViewState();
}

class _WatchlistViewState extends State<WatchlistView> {

  var dummyList=DummyMovieModel.dummyMovieData();
 WatchListViewModel viewModel =WatchListViewModel();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }


  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(
      create:(context)=>viewModel ,
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height *0.1,),
            Text(
              "WATCHLIST",

              style: AppStyles.textStyle22,
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder:(context,index)=>
                      DummyItem(dummyMovieModel:dummyList[index] ),

                  separatorBuilder: (context,index)=>Container(
                    color: AppColors.greyDarkColor,
                      height:2 ,

                  ),
                  itemCount: dummyList.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


