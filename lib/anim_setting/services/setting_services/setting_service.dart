
import 'package:animetest/anim_setting/manager/setting_manager/setting_manager.dart';
import 'package:animetest/anim_setting/model/setting_model.dart';
import 'package:inject/inject.dart';

@provide
class SettingAnimeService{
  SettingAnimeManager _settingAnimeManager;

  SettingAnimeService(this._settingAnimeManager);

  Future<List<SettingModel>> getShows()async{

    return await _settingAnimeManager.getShows();
  }


}