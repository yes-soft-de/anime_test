import 'package:animetest/anim_setting/services/setting_services/setting_service.dart';
import 'package:animetest/anim_setting/state/setting_state/setting_state.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:inject/inject.dart';
import 'package:rxdart/rxdart.dart';

@provide
class SettingAnimeStateManager{
  final SettingAnimeService _notificationAnimeService;

  final PublishSubject<SettingAnimeState> _stateSubject = PublishSubject();
  Stream<SettingAnimeState> get stateStream => _stateSubject.stream;

  SettingAnimeStateManager(
      this._notificationAnimeService
      );

  void getShows( ) {
    _stateSubject.add(SettingAnimeStateFetching());

    _notificationAnimeService.getShows( ).then((result) {
      if (result == null) {
        _stateSubject.add(SettingAnimeStateFetchingError());
        Fluttertoast.showToast(msg: 'Error Fetching data');
      } else {
        _stateSubject.add(SettingAnimeStateFetchingSuccess(result));
      }
    });
  }
}