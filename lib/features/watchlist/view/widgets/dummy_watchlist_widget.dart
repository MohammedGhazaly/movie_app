import 'package:flutter/material.dart';
import 'package:movies_app/core/shared_widgets/movie_poster.dart';
import 'package:movies_app/core/utils/app_colors.dart';
import 'package:movies_app/dummy_movie_model.dart';



class DummyItem extends StatelessWidget{

DummyMovieModel dummyMovieModel;

DummyItem({required this.dummyMovieModel});


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
     Container(
       padding: EdgeInsets.all(8),
       width: MediaQuery.of(context).size.width*0.3,
       height: MediaQuery.of(context).size.height*0.2,
       child: Stack(
         children:[

           const  Positioned(
               width: 358,
                 height: 102,
                 top: 120,
                 left: 20,
                 child: Icon(Icons.check,size: 150,color: AppColors.yellowColor,)),
             Image.asset(dummyMovieModel.poster)],),
     ),
       SizedBox(width: MediaQuery.of(context).size.width *0.03 ,),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(dummyMovieModel.title),
              SizedBox(height: MediaQuery.of(context).size.height *0.01,),
              Text(dummyMovieModel.realeseYear),
              SizedBox(height: MediaQuery.of(context).size.height *0.01,),
              Text(dummyMovieModel.rating),


            ],
          ),
        ),


      ],
    );
  }

}