
import 'package:animetest/abstracts/module/yes_module.dart';
import 'package:animetest/anim_notification/ui/screen/anim_notification.dart';
import 'package:animetest/anim_setting/ui/screen/anim_setting.dart';

import 'package:flutter/material.dart';
import 'package:inject/inject.dart';

@provide
class RotingModule extends YesModule {
  static const ROUTE_ANIM_NOTIFICATION_PAGE = '/notification';
  static const ROUTE_ANIM_SETTIING_PAGE = '/setting';

  final AnimNotification _animShow;
  final AnimSetting _animSetting;

  RotingModule(this._animShow,this._animSetting);

  Map<String, WidgetBuilder> getRoutes() {
    return {
      ROUTE_ANIM_NOTIFICATION_PAGE: (context) => _animShow,
      ROUTE_ANIM_SETTIING_PAGE: (context) => _animSetting,
    };
  }
}