import 'package:animetest/anim_notification/routing_home.dart';
import 'package:animetest/animes_module/animes_module.dart';
import 'package:animetest/animes_module/animes_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:inject/inject.dart';

import 'di/components/app.component.dart';

void main()async {
   WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((_) async {
    final container = await AppComponent.create();
    runApp(container.app);
  });
}

@provide
class MyApp extends StatefulWidget {
 final AnimesModule _animesModule;
 final RotingModule _rotingModule;
 MyApp(this._animesModule,this._rotingModule);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    Map<String, WidgetBuilder> fullRoutesList = {};
    fullRoutesList.addAll(widget._animesModule.getRoutes());
    fullRoutesList.addAll(widget._rotingModule.getRoutes());

    return MaterialApp(

      title: 'Anime Test',

        theme: ThemeData(
            primaryColor: Colors.greenAccent, accentColor: Colors.greenAccent
        ),

        routes: fullRoutesList,
        initialRoute: AnimeRoutes.ROUTE_TRENDING_LIST,
    );

  }
}

