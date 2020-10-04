import 'package:animetest/anim_notification/services/notification_services/notification_service.dart';
import 'package:animetest/anim_notification/state/notification_state/notificatoin_state.dart';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:inject/inject.dart';
import 'package:rxdart/rxdart.dart';

@provide
class NotificationAnimeStateManager{
  final NotificationAnimeService _notificationAnimeService;

  final PublishSubject<NotificationAnimeState> _stateSubject = PublishSubject();
  Stream<NotificationAnimeState> get stateStream => _stateSubject.stream;

  NotificationAnimeStateManager(
      this._notificationAnimeService
      );

  void getShows( ) {
    _stateSubject.add(NotificationAnimeStateFetching());

    _notificationAnimeService.getShows( ).then((result) {
      if (result == null) {
        _stateSubject.add(NotificationAnimeStateFetchingError());
        Fluttertoast.showToast(msg: 'Error Fetching data');
      } else {
        _stateSubject.add(NotificationAnimeStateFetchingSuccess(result));
      }
    });
  }
}