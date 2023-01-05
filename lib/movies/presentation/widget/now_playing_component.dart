import 'package:animate_do/animate_do.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app_clean_arch/core/utiles/enum.dart';
import 'package:movie_app_clean_arch/movies/presentation/controller/movie_state.dart';
import 'package:movie_app_clean_arch/movies/presentation/controller/movies_bloc.dart';
import 'package:movie_app_clean_arch/movies/presentation/screens/movie_details.dart';

import '../../../core/dummy.dart';
import '../../../core/utiles/app_constant.dart';
class NowPlayingComponent extends StatelessWidget {
  const NowPlayingComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<MovieBloc,MoviesState>(
      buildWhen: (previous,current)=>previous.nowplaying!=current.nowplaying,
      builder:(context,state){
        print(state.nowplaying);
        switch(state.nowplaying)
        {
          case RequestState.loading:
             return Center(child: CircularProgressIndicator());
          case RequestState.loaded:
             return FadeIn(
               duration: const Duration(milliseconds: 500),
               child: CarouselSlider(
                 options: CarouselOptions(
                   height: 300.0,
                   viewportFraction: 1.0,
                   onPageChanged: (index, reason) {},
                 ),
                 items: state.nowplayingmovies.map(
                       (item) {
                     return GestureDetector(
                       key: const Key('openMovieMinimalDetail'),
                       onTap: () {
                         Navigator.push(context,MaterialPageRoute(
                             builder: (BuildContext context)=>MovieDetailScreen(id: item.id)
                         ));
                       },
                       child: Stack(
                         children: [
                           ShaderMask(
                             shaderCallback: (rect) {
                               return const LinearGradient(
                                 begin: Alignment.topCenter,
                                 end: Alignment.bottomCenter,
                                 colors: [
                                   // fromLTRB
                                   Colors.transparent,
                                   Colors.black,
                                   Colors.black,
                                   Colors.transparent,
                                 ],
                                 stops: [0, 0.3, 0.5, 1],
                               ).createShader(
                                 Rect.fromLTRB(0, 0, rect.width, rect.height),
                               );
                             },
                             blendMode: BlendMode.dstIn,
                             child: CachedNetworkImage(
                               height: 560.0,
                               imageUrl: AppConstant.imageurl(item.backdropPath!),
                               fit: BoxFit.cover,
                             ),
                           ),
                           Align(
                             alignment: Alignment.bottomCenter,
                             child: Column(
                               mainAxisAlignment: MainAxisAlignment.end,
                               children: [
                                 Padding(
                                   padding: const EdgeInsets.only(bottom: 16.0),
                                   child: Row(
                                     mainAxisAlignment: MainAxisAlignment.center,
                                     children: [
                                       const Icon(
                                         Icons.circle,
                                         color: Colors.redAccent,
                                         size: 16.0,
                                       ),
                                       const SizedBox(width: 4.0),
                                       Text(
                                         'Now Playing'.toUpperCase(),
                                         style: const TextStyle(
                                             fontSize: 16.0,
                                             color: Colors.white
                                         ),
                                       ),
                                     ],
                                   ),
                                 ),
                                 Padding(
                                   padding: const EdgeInsets.only(bottom: 16.0),
                                   child: Text(
                                     item.title!,
                                     textAlign: TextAlign.center,
                                     style: const TextStyle(
                                         fontSize: 24,
                                         color: Colors.white
                                     ),
                                   ),
                                 ),
                               ],
                             ),
                           ),
                         ],
                       ),
                     );
                   },
                 ).toList(),
               ),
             );
          case RequestState.error:
           return Container();
        }
      },
    );
  }
}
