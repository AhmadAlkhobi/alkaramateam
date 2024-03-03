

import 'package:get/get.dart';


import 'package:shared_preferences/shared_preferences.dart';


import 'package:sp1_e_commerce/core/enums/data_type.dart';



class SharedPrefrenceRepository {
  SharedPreferences pref = Get.find<SharedPreferences>();

  //!--- Keys
  String PREF_FIRST_LUNCH = 'first_lunch';
  String PREF_IS_LOGGED = 'is_logged';
  String PREF_LOGGIN_INFO = 'loggin_info';
  String PREF_TOKEN_INFO = 'token_info';
  String PREF_APP_LANG = 'app_language';

  //* --- ----

  void setLoggedIn(bool value) {
    setPrefrnce(type: DataType.BOOL, key: PREF_IS_LOGGED, value: value);
  }

  bool getLoggedIn() {
    if (pref.containsKey(PREF_IS_LOGGED))
      return getPrefrnce(PREF_IS_LOGGED);
    else
      return false;
  }

  void setFirstLunch(bool value) {
    setPrefrnce(
      type: DataType.BOOL,
      key: PREF_FIRST_LUNCH,
      value: value,
    );
  }

  bool getFirstLunch() {
    if (pref.containsKey(PREF_FIRST_LUNCH))
      return getPrefrnce(PREF_FIRST_LUNCH);
    else
      return true;
  }

  void setLogginInfo(List<String> value) {
    setPrefrnce(type: DataType.LISTSTRING, key: PREF_LOGGIN_INFO, value: value);
  }

  List<String> getLogginInfo() {
    if (pref.containsKey(PREF_LOGGIN_INFO)) {
      List<Object?> list = getPrefrnce(PREF_LOGGIN_INFO);
      List<String> result = [];

      list.forEach((element) {
        result.add(element.toString());
      });

      return result;
    } else
      return [];
  }
  void setAppLnaguage(String code) {
    setPrefrnce(type: DataType.STRING, key: PREF_APP_LANG, value: code);
  }

  String getAppLanguge() {
    if (pref.containsKey(PREF_APP_LANG)) {
      return getPrefrnce(PREF_APP_LANG);
    } else {
      return 'ar';
    }
  }

  setPrefrnce({
    required DataType type,
    required String key,
    required dynamic value,
  }) async {
    switch (type) {
      case DataType.STRING:
        await pref.setString(key, value);
        break;
      case DataType.INT:
        await pref.setInt(key, value);
        break;
      case DataType.BOOL:
        await pref.setBool(key, value);
        break;
      case DataType.DOUBLE:
        await pref.setDouble(key, value);
        break;
      case DataType.LISTSTRING:
        await pref.setStringList(key, value);
        break;
    }
  }

  dynamic getPrefrnce(String key) {
    return pref.get(key);
  }
}
