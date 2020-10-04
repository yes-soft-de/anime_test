



import 'package:animetest/anim_notification/model/notification_model/notification_model.dart';
import 'package:inject/inject.dart';


List<NotificationModel> list = [
  new NotificationModel(name: "name1",description: "mohammad you have 16 following  that you have mohamm you have 16 ",photo_url: "https://www.lamsahfannan.com/content/uploads/2017/03/3dlat.net_08_15_258a_6.jpg",),
  new NotificationModel(name: "name2",description: "mohammad you have 16 following  that you have mohamm you have 16 ",photo_url: "https://www.lamsahfannan.com/content/uploads/2017/03/3dlat.net_08_15_258a_6.jpg",),
  new NotificationModel(name: "name3",description: "mohammad you have 16 following  that you have mohamm you have 16 ",photo_url: "https://www.lamsahfannan.com/content/uploads/2017/03/3dlat.net_08_15_258a_6.jpg",),
  new NotificationModel(name: "name4",description: "mohammad you have 16 following  that you have mohamm you have 16 ",photo_url: "https://www.lamsahfannan.com/content/uploads/2017/03/3dlat.net_08_15_258a_6.jpg",),
  new NotificationModel(name: "name5",description: "mohammad you have 16 following  that you have mohamm you have 16 ",photo_url: "https://www.lamsahfannan.com/content/uploads/2017/03/3dlat.net_08_15_258a_6.jpg",)
];



@provide
class NotifiactionAnimeRepository{

  Future<List<NotificationModel>> getShows()async{

    await Future.delayed(Duration(milliseconds: 100));

    return list;
  }

}