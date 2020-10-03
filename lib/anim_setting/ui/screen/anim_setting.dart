
import 'package:animetest/anim_notification/ui/widget/card_notification/card_notification.dart';
import 'package:animetest/anim_setting/ui/widget/card_setting/card_setting.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:inject/inject.dart';

@provide
class AnimSetting extends StatefulWidget {
  @override
  _AnimSettingState createState() => _AnimSettingState();
}

class _AnimSettingState extends State<AnimSetting> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,

          elevation: 0,
          centerTitle: true,
          title: Text("setting",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: Colors.black),),
          leading: IconButton(icon: Icon(Icons.line_weight,color: Colors.black,),onPressed: (){},),
          actions: [
            IconButton(icon: Icon(Icons.search,color: Colors.black,),onPressed: (){},),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [


              CardSetting(desc: "Me",name: "hassan",icon: Icon(Icons.edit,color: Colors.white,),),
              CardSetting(desc: "Me",name: "hassan",icon: Icon(Icons.edit,color: Colors.white,),),
              CardSetting(desc: "Me",name: "hassan",icon: Icon(Icons.edit,color: Colors.white,),)


            ],
          ),
        ),
      ),
    );
  }
}
