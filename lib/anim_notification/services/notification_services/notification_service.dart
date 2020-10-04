import 'package:animetest/anim_notification/manager/notification_manager/notification_manager.dart';
import 'package:animetest/anim_notification/model/notification_model/notification_model.dart';
import 'package:inject/inject.dart';

@provide
class NotificationAnimeService{
  NotificationAnimeManager _notificationAnimeManager;

  NotificationAnimeService(this._notificationAnimeManager);

  Future<List<NotificationModel>> getShows()async{

    return await _notificationAnimeManager.getShows();
  }


}