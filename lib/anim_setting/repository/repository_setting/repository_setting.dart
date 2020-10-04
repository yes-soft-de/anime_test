



import 'package:animetest/anim_notification/model/notification_model/notification_model.dart';
import 'package:animetest/anim_setting/model/setting_model.dart';
import 'package:flutter/material.dart';
import 'package:inject/inject.dart';


List<SettingModel> list = [
  new SettingModel(name: "hassan1",description: "Me ",icon: Icon(Icons.edit,color: Colors.white,),),
  new SettingModel(name: "hassan2",description: "Me ",icon: Icon(Icons.edit,color: Colors.white,),),
  new SettingModel(name: "hassan3",description: "Me ",icon: Icon(Icons.edit,color: Colors.white,),),
  new SettingModel(name: "hassan4",description: "Me ",icon: Icon(Icons.edit,color: Colors.white,),),

];



@provide
class SettingAnimeRepository{

  Future<List<SettingModel>> getShows()async{

    await Future.delayed(Duration(milliseconds: 100));

    return list;
  }

}