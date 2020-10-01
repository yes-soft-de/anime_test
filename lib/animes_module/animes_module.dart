import 'package:animetest/abstracts/module/yes_module.dart';
import 'package:animetest/animes_module/animes_routes.dart';
import 'package:animetest/animes_module/ui/screen/shows_screen/shows_screen.dart';
import 'package:flutter/material.dart';
import 'package:inject/inject.dart';


@provide
 class AnimesModule extends YesModule{
 final ShowsScreen _showsScreen;
 AnimesModule(this._showsScreen);


  @override
  Map<String, WidgetBuilder> getRoutes(){
    return {
     AnimeRoutes.ROUTE_TRENDING_LIST : (context)=> _showsScreen,
    };
  }
 }