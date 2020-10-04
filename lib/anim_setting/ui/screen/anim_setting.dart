

import 'package:animetest/anim_setting/model/setting_model.dart';
import 'package:animetest/anim_setting/state/setting_state/setting_state.dart';
import 'package:animetest/anim_setting/state_manager/setting_state_manager/setting_state_manager.dart';

import 'package:animetest/anim_setting/ui/widget/card_setting/card_setting.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:inject/inject.dart';

@provide
class AnimSetting extends StatefulWidget {

  final SettingAnimeStateManager _stateManager;

  AnimSetting(this._stateManager);

  @override
  _AnimSettingState createState() => _AnimSettingState();
}

class _AnimSettingState extends State<AnimSetting> {

  List<SettingModel> animes = [];
  SettingAnimeState currentState = SettingAnimeStateInit();


  @override
  void initState() {
    super.initState();
    widget._stateManager.stateStream.listen((event) {
      currentState = event;
      processEvent();
    });
  }


  void processEvent() {
    if (currentState is SettingAnimeStateFetchingSuccess) {
      SettingAnimeStateFetchingSuccess state = currentState;
      animes = state.data;

      if(this.mounted){
        setState(() {});
      }
    }


  }

  @override
  Widget build(BuildContext context) {

    if (currentState is SettingAnimeStateInit) {
      widget._stateManager.getShows();
      if(this.mounted){
        setState(() {});
      }



    }

    return listSetting();


  }

  Widget listSetting(){
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
        body:
        ListView.builder(
            itemCount: animes.length,
            itemBuilder: (BuildContext context,int index){

              SettingModel item=animes.elementAt(index);

              return    CardSetting(desc: item.description,name: item.name,icon:item.icon,press: (){},);
            })
        /* Column(
          mainAxisSize: MainAxisSize.min,
          children: [


            CardSetting(desc: "Me",name: "hassan",icon: Icon(Icons.edit,color: Colors.white,),),
            CardSetting(desc: "Me",name: "hassan",icon: Icon(Icons.edit,color: Colors.white,),),
            CardSetting(desc: "Me",name: "hassan",icon: Icon(Icons.edit,color: Colors.white,),)


          ],
        )*/,
      ),
    );
  }
}
