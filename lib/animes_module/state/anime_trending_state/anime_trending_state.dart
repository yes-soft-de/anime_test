

import 'package:animetest/animes_module/model/trending_model/trending_model.dart';

class TrendingAnimeState{ }

class TrendingAnimeStateInit extends TrendingAnimeState {}

class TrendingAnimeStateFetching extends TrendingAnimeState {}

class TrendingAnimeStateFetchingSuccess extends TrendingAnimeState {
  List<TrendingModel> data;

  TrendingAnimeStateFetchingSuccess(this.data);
}

class TrendingAnimeStateFetchingError extends TrendingAnimeState {}

