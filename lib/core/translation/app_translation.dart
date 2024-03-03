import 'package:get/get.dart';
import 'package:sp1_e_commerce/core/translation/languages/ar_language.dart';
import 'package:sp1_e_commerce/core/translation/languages/en_languages.dart';

class AppTranslation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "en_US": ENLanguage.map,
        "ar_SA": ARLanguage.map,
      };
}

tr(String key) => key.tr;
