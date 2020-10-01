

import 'package:animetest/animes_module/model/trending_model/trending_model.dart';
import 'package:inject/inject.dart';

List<TrendingModel> list = [
  new TrendingModel(name: 'Naroto',image: 'assets/images/Naroto.jpg',status: 'Finished'),
  new TrendingModel(name: 'Dr. Stone',image: 'assets/images/dr stone.jpg',status: 'On Going'),
  new TrendingModel(name: 'Death Note',image: 'assets/images/death note.jpg',status: 'Finished'),
  new TrendingModel(name: 'Hunter X Hunter',image: 'assets/images/Hunter x Hunter.jpg',status: 'On Going'),
  new TrendingModel(name: 'Naroto',image: 'assets/images/Naroto.jpg',status: 'Finished'),
  new TrendingModel(name: 'Dr. Stone',image: 'assets/images/dr stone.jpg',status: 'On Going'),
  new TrendingModel(name: 'Death Note',image: 'assets/images/death note.jpg',status: 'Finished'),
  new TrendingModel(name: 'Hunter X Hunter',image: 'assets/images/Hunter x Hunter.jpg',status: 'On Going'),
  new TrendingModel(name: 'Naroto',image: 'assets/images/Naroto.jpg',status: 'Finished'),
  new TrendingModel(name: 'Dr. Stone',image: 'assets/images/dr stone.jpg',status: 'On Going'),
  new TrendingModel(name: 'Death Note',image: 'assets/images/death note.jpg',status: 'Finished'),
  new TrendingModel(name: 'Hunter X Hunter',image: 'assets/images/Hunter x Hunter.jpg',status: 'On Going'),
];

@provide
class TrendingAnimeRepository{

  Future<List<TrendingModel>> getShows()async{

    await Future.delayed(Duration(milliseconds: 100));

    return list;
  }

}