import 'package:animetest/animes_module/model/trending_model/trending_model.dart';
import 'package:animetest/animes_module/state/anime_trending_state/anime_trending_state.dart';
import 'package:animetest/animes_module/state_manager/trending_anime_state_manager/trending_anime_state_manager.dart';
import 'package:animetest/animes_module/ui/screen/shows_screen/by_category_screen/by_category_screen.dart';
import 'package:animetest/animes_module/ui/screen/shows_screen/trending_screen/trending_screen.dart';
import 'package:animetest/shared/project_color/project_color.dart';
import 'package:animetest/shared/widget/app_bar/anime_app_bar.dart';
import 'package:animetest/shared/widget/app_drawer/app_drawer.dart';
import 'package:animetest/shared/widget/loading_indicator/loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:inject/inject.dart';

@provide
class ShowsScreen extends StatefulWidget {
  final TrendingScreen _trendingScreen;

  ShowsScreen(this._trendingScreen);

  @override
  _ShowsScreenState createState() => _ShowsScreenState();
}

class _ShowsScreenState extends State<ShowsScreen> {







  @override
  Widget build(BuildContext context) {
    return getPageLayout();
  }

  Widget getPageLayout(){
    return DefaultTabController(
        length:2 ,
      child :Scaffold(
        appBar: AnimeAppBarWidget(
          title: 'Anime Shows',
          appBar: AppBar(),
        ),
          drawer: AppDrawerWidget(),
          body:Column(
            children: [
              Container(
                color: Colors.white,
                height: MediaQuery.of(context).size.height*0.07,
                child: TabBar(
                    indicatorColor:  ProjectColors.ThemeColor,
                    indicatorSize: TabBarIndicatorSize.label,
                    tabs:
                    [

                      Tab(child: Text('By Category',style:TextStyle(color: Colors.black,)),),
                      Tab(child: Text('Trending',style:TextStyle(color: Colors.black,)),),
                    ]
                ),
              ),
              Container(
                height:MediaQuery.of(context).size.height*0.777 ,
                child: TabBarView(
                  children: [
                           ByCategoryScreen(),
                          widget._trendingScreen,
                  ],
                ),
              ),
            ],
          ),
    )
    )
    ;
  }
}
