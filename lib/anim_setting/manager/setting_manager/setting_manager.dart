



import 'package:animetest/anim_setting/model/setting_model.dart';

import 'package:animetest/anim_setting/repository/repository_setting/repository_setting.dart';
import 'package:inject/inject.dart';

@provide
class SettingAnimeManager{
 SettingAnimeRepository _settingAnimeRepository;

 SettingAnimeManager(this._settingAnimeRepository);

  Future<List<SettingModel>> getShows()async{

    return await _settingAnimeRepository.getShows();
  }

}