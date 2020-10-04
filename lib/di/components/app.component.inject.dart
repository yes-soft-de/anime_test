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
import '../../animes_module/ui/screen/shows_screen/by_category_screen/by_category_screen.dart'
    as _i11;
import '../../anim_notification/routing_home.dart' as _i12;
import '../../anim_notification/ui/screen/anim_notification.dart' as _i13;
import '../../anim_setting/ui/screen/anim_setting.dart' as _i14;

class AppComponent$Injector implements _i1.AppComponent {
  AppComponent$Injector._();

  static _i2.Future<_i1.AppComponent> create() async {
    final injector = AppComponent$Injector._();

    return injector;
  }

  _i3.MyApp _createMyApp() =>
      _i3.MyApp(_createAnimesModule(), _createRotingModule());
  _i4.AnimesModule _createAnimesModule() =>
      _i4.AnimesModule(_createShowsScreen());
  _i5.ShowsScreen _createShowsScreen() =>
      _i5.ShowsScreen(_createTrendingScreen(), _createByCategoryScreen());
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
  _i11.ByCategoryScreen _createByCategoryScreen() => _i11.ByCategoryScreen();
  _i12.RotingModule _createRotingModule() =>
      _i12.RotingModule(_createAnimNotification(), _createAnimSetting());
  _i13.AnimNotification _createAnimNotification() => _i13.AnimNotification();
  _i14.AnimSetting _createAnimSetting() => _i14.AnimSetting();
  @override
  _i3.MyApp get app => _createMyApp();
}
