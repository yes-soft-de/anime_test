

import 'package:animetest/anim_notification/model/notification_model/notification_model.dart';

class NotificationAnimeState{ }

class NotificationAnimeStateInit extends NotificationAnimeState {}

class NotificationAnimeStateFetching extends NotificationAnimeState {}

class NotificationAnimeStateFetchingSuccess extends NotificationAnimeState {
  List<NotificationModel> data;

  NotificationAnimeStateFetchingSuccess(this.data);
}

class NotificationAnimeStateFetchingError extends NotificationAnimeState {}

