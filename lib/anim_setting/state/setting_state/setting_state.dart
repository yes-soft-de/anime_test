import 'package:animetest/anim_setting/model/setting_model.dart';

class SettingAnimeState{ }

class SettingAnimeStateInit extends SettingAnimeState {}

class SettingAnimeStateFetching extends SettingAnimeState {}

class SettingAnimeStateFetchingSuccess extends SettingAnimeState {
  List<SettingModel> data;

  SettingAnimeStateFetchingSuccess(this.data);
}

class SettingAnimeStateFetchingError extends SettingAnimeState {}

