
import 'package:animetest/anim_notification/model/notification_model/notification_model.dart';
import 'package:animetest/anim_notification/state/notification_state/notificatoin_state.dart';
import 'package:animetest/anim_notification/state_manager/notification_state_manager/notification_state_manager.dart';
import 'package:animetest/anim_notification/ui/widget/card_notification/card_notification.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:inject/inject.dart';

@provide
class AnimNotification extends StatefulWidget {

  final NotificationAnimeStateManager _stateManager;


  AnimNotification(this._stateManager);

  @override
  _AnimNotificationState createState() => _AnimNotificationState();
}

class _AnimNotificationState extends State<AnimNotification> {


  List<NotificationModel> animes = [];
  NotificationAnimeState currentState = NotificationAnimeStateInit();

  @override
  void initState() {
    super.initState();
    widget._stateManager.stateStream.listen((event) {
      currentState = event;
      processEvent();
    });
  }


  void processEvent() {
    if (currentState is NotificationAnimeStateFetchingSuccess) {
      NotificationAnimeStateFetchingSuccess state = currentState;
      animes = state.data;

      if(this.mounted){
        setState(() {});
      }
    }


  }

  @override
  Widget build(BuildContext context) {
    if (currentState is NotificationAnimeStateInit) {
      widget._stateManager.getShows();
      if(this.mounted){
        setState(() {});
      }



    }
    return listNotification();

  }

  Widget listNotification(){
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,

          elevation: 0,
          centerTitle: true,
          title: Text("notifiation ",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: Colors.black),),
          leading: IconButton(icon: Icon(Icons.line_weight,color: Colors.black,),onPressed: (){},),
          actions: [
            IconButton(icon: Icon(Icons.search,color: Colors.black,),onPressed: (){},),
          ],
        ),
        body:

          ListView.builder(
              itemCount: animes.length,
              itemBuilder: (context, index){
                NotificationModel item=animes.elementAt(index);
                return   CardNotification(title: item.name,desc: item.description,photoLink: item.photo_url,);
              })
        /* Column(
          mainAxisSize: MainAxisSize.min,
          children: [

            CardNotification(title: "mohammad",desc: "mohammad you have 16 following  that you have mohamm you have 16 ",photoLink: "https://www.lamsahfannan.com/content/uploads/2017/03/3dlat.net_08_15_258a_6.jpg",),
            CardNotification(title: "mohammad",desc: "mohammad you have 16 following  that you have mohamm you have 16 ",photoLink: "https://www.lamsahfannan.com/content/uploads/2017/03/3dlat.net_08_15_258a_6.jpg",),
            CardNotification(title: "mohammad",desc: "mohammad you have 16 following  that you have mohamm you have 16 ",photoLink: "https://www.lamsahfannan.com/content/uploads/2017/03/3dlat.net_08_15_258a_6.jpg",)


          ],
        ),*/
      ),
    );
  }
}
