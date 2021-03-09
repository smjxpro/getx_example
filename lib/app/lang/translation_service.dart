import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'bn_BD.dart';
import 'en_US.dart';

class TranslationService extends Translations {
  static final locale = Get.deviceLocale;
  static final fallbackLocale = Locale('en', 'US');

  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': en_US,
        'bn_BD': bn_BD,
      };
}
