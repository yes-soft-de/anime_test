
import 'package:animetest/animes_module/model/trending_model/trending_model.dart';
import 'package:animetest/animes_module/state/anime_trending_state/anime_trending_state.dart';
import 'package:animetest/animes_module/state_manager/trending_anime_state_manager/trending_anime_state_manager.dart';
import 'package:animetest/animes_module/ui/widget/grid_anime_card/grid_anime_card.dart';
import 'package:animetest/animes_module/ui/widget/list_anime_card/list_anime_card.dart';
import 'package:animetest/shared/widget/loading_indicator/loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:inject/inject.dart';

@provide
class TrendingScreen extends StatefulWidget {
  final TrendingAnimeStateManager _stateManager;

  TrendingScreen(this._stateManager);


  @override
  _TrendingScreenState createState() => _TrendingScreenState();
}

class _TrendingScreenState extends State<TrendingScreen> {
  List<TrendingModel> animes = [];
  TrendingAnimeState currentState = TrendingAnimeStateInit();
  bool grid = false;
  bool loading =true;

  void initState() {
    super.initState();

    widget._stateManager.stateStream.listen((event) {
      currentState = event;
      processEvent();
    });
  }

  void processEvent() {
    if (currentState is TrendingAnimeStateFetchingSuccess) {
      TrendingAnimeStateFetchingSuccess state = currentState;
      animes = state.data;
      loading = false;
      if(this.mounted){
        setState(() {});
      }
    }


  }
  @override
  Widget build(BuildContext context) {

    if (currentState is TrendingAnimeStateInit) {
      widget._stateManager.getShows();
      if(this.mounted){
        setState(() {});
      }


    }
    return loading ?
        LoadingIndicatorWidget():
        grid ?
            gridViewAnime():
            listViewAnime();
  }

  Widget listViewAnime(){
    return Container(
      color: Color(0xffdadada),
      child: Stack(

        children: [
        Container(
          padding: EdgeInsetsDirectional.fromSTEB(0,70 ,0, 0),
          child: ListView.builder(
             itemCount: animes.length,

             itemBuilder: (BuildContext context, int index) {
              return FlatButton(
                onPressed: (){


                },
                child:  Container(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                  child: ListAnimeCard(
                    name:animes[index].name,
                    image:animes[index].image ,
                    status: animes[index].status,
                  ),
                )


              );
            }),
        ),

          Positioned(
            left: 0.0,
            right: 0.0,
            top: 0.0,
            child: Container(
              color: Colors.white,
              margin: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
              padding: EdgeInsetsDirectional.fromSTEB(10, 0, 12, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Shows'
                  ),

                      IconButton(
                        onPressed: () {
                          grid = true;
                          setState(() {

                          });
                        },
                        icon:  Icon(Icons.grid_on)
                      ),

                ],
              ),
            ),
          ),
        ],

      ),
    );

  }
  Widget gridViewAnime(){

    return Container(
      color: Color(0xffdadada),
      child: Stack(

        children: [
              Container(
                padding: EdgeInsetsDirectional.fromSTEB(0, 70, 0, 0),
                child: GridView.builder(itemBuilder: (BuildContext context, int index){

                return  GridAnimeCard(
                    name:animes[index].name,
                    image:animes[index].image ,
                    status: animes[index].status,
                  );
            },
                padding: EdgeInsets.symmetric(horizontal: 10),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: (2.3/4)
                ),
                itemCount:animes.length,

                shrinkWrap: true,),
              ),

          Positioned(
            left: 0.0,
            right: 0.0,
            top: 0.0,
            child: Container(
              color: Colors.white,
              margin: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
              padding: EdgeInsetsDirectional.fromSTEB(12, 0, 12, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                      'Shows'
                  ),

                  IconButton(
                      onPressed: () {
                        grid = false;
                        setState(() {

                        });
                      },
                      icon:  Icon(Icons.list)
                  ),

                ],
              ),
            ),
          ),
        ],

      ),
    );

  }
}
