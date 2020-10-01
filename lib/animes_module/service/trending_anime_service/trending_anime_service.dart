
import 'package:animetest/animes_module/manager/trending_anime_manager/trending_anime_manger.dart';
import 'package:animetest/animes_module/model/trending_model/trending_model.dart';
import 'package:inject/inject.dart';

@provide
class TrendingAnimeService{
  TrendingAnimeManager _trendingAnimeManager;

  TrendingAnimeService(this._trendingAnimeManager);

  Future<List<TrendingModel>> getShows()async{

    return await _trendingAnimeManager.getShows();
  }


}