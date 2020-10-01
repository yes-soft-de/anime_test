import 'app.component.dart' as _i1;
import 'dart:async' as _i2;
import '../../main.dart' as _i3;
import '../../animes_module/animes_module.dart' as _i4;
import '../../animes_module/ui/screen/shows_screen/shows_screen.dart' as _i5;
import '../../animes_module/ui/screen/shows_screen/trending_screen/trending_screen.dart'
    as _i6;
import '../../animes_module/state_manager/trending_anime_state_manager/trending_anime_state_manager.dart'
    as _i7;
import '../../animes_module/service/trending_anime_service/trending_anime_service.dart'
    as _i8;
import '../../animes_module/manager/trending_anime_manager/trending_anime_manger.dart'
    as _i9;
import '../../animes_module/repository/trending_anime_repository/trending_anime_repository.dart'
    as _i10;

class AppComponent$Injector implements _i1.AppComponent {
  AppComponent$Injector._();

  static _i2.Future<_i1.AppComponent> create() async {
    final injector = AppComponent$Injector._();

    return injector;
  }

  _i3.MyApp _createMyApp() => _i3.MyApp(_createAnimesModule());
  _i4.AnimesModule _createAnimesModule() =>
      _i4.AnimesModule(_createShowsScreen());
  _i5.ShowsScreen _createShowsScreen() =>
      _i5.ShowsScreen(_createTrendingScreen());
  _i6.TrendingScreen _createTrendingScreen() =>
      _i6.TrendingScreen(_createTrendingAnimeStateManager());
  _i7.TrendingAnimeStateManager _createTrendingAnimeStateManager() =>
      _i7.TrendingAnimeStateManager(_createTrendingAnimeService());
  _i8.TrendingAnimeService _createTrendingAnimeService() =>
      _i8.TrendingAnimeService(_createTrendingAnimeManager());
  _i9.TrendingAnimeManager _createTrendingAnimeManager() =>
      _i9.TrendingAnimeManager(_createTrendingAnimeRepository());
  _i10.TrendingAnimeRepository _createTrendingAnimeRepository() =>
      _i10.TrendingAnimeRepository();
  @override
  _i3.MyApp get app => _createMyApp();
}
