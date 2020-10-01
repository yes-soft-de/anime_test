

import 'package:animetest/animes_module/service/trending_anime_service/trending_anime_service.dart';
import 'package:animetest/animes_module/state/anime_trending_state/anime_trending_state.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:inject/inject.dart';
import 'package:rxdart/rxdart.dart';

@provide
class TrendingAnimeStateManager{
  final TrendingAnimeService _animeService;

  final PublishSubject<TrendingAnimeState> _stateSubject = PublishSubject();
  Stream<TrendingAnimeState> get stateStream => _stateSubject.stream;

  TrendingAnimeStateManager(
      this._animeService
      );

  void getShows( ) {
    _stateSubject.add(TrendingAnimeStateFetching());

    _animeService.getShows( ).then((result) {
      if (result == null) {
        _stateSubject.add(TrendingAnimeStateFetchingError());
        Fluttertoast.showToast(msg: 'Error Fetching data');
      } else {
        _stateSubject.add(TrendingAnimeStateFetchingSuccess(result));
      }
    });
  }
}