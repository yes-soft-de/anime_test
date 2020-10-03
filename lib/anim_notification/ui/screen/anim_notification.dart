
import 'package:animetest/anim_notification/ui/widget/card_notification/card_notification.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:inject/inject.dart';

@provide
class AnimNotification extends StatefulWidget {
  @override
  _AnimNotificationState createState() => _AnimNotificationState();
}

class _AnimNotificationState extends State<AnimNotification> {
  @override
  Widget build(BuildContext context) {
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
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [

              CardNotification(title: "mohammad",desc: "mohammad you have 16 following  that you have mohamm you have 16 ",photoLink: "https://www.lamsahfannan.com/content/uploads/2017/03/3dlat.net_08_15_258a_6.jpg",),
              CardNotification(title: "mohammad",desc: "mohammad you have 16 following  that you have mohamm you have 16 ",photoLink: "https://www.lamsahfannan.com/content/uploads/2017/03/3dlat.net_08_15_258a_6.jpg",),
              CardNotification(title: "mohammad",desc: "mohammad you have 16 following  that you have mohamm you have 16 ",photoLink: "https://www.lamsahfannan.com/content/uploads/2017/03/3dlat.net_08_15_258a_6.jpg",)


            ],
          ),
        ),
      ),
    );
  }
}
