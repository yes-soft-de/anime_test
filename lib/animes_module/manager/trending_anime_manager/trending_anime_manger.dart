import 'package:animetest/animes_module/model/trending_model/trending_model.dart';
import 'package:animetest/animes_module/repository/trending_anime_repository/trending_anime_repository.dart';
import 'package:inject/inject.dart';

@provide
class TrendingAnimeManager{
  TrendingAnimeRepository _trendingAnimeRepository;

  TrendingAnimeManager(this._trendingAnimeRepository);

  Future<List<TrendingModel>> getShows()async{

   return await _trendingAnimeRepository.getShows();
  }

}