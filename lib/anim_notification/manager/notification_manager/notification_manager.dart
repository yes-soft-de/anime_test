


import 'package:animetest/anim_notification/model/notification_model/notification_model.dart';
import 'package:animetest/anim_notification/repository/repository_notification/repository_notification.dart';
import 'package:inject/inject.dart';

@provide
class NotificationAnimeManager{
  NotifiactionAnimeRepository _notifiactionAnimeRepository;

  NotificationAnimeManager(this._notifiactionAnimeRepository);

  Future<List<NotificationModel>> getShows()async{

    return await _notifiactionAnimeRepository.getShows();
  }

}