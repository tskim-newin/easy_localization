import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization/src/easy_localization_controller.dart';
import 'package:easy_localization/src/localization.dart';
import 'package:easy_localization/src/translations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'utils/test_asset_loaders.dart';

void main() {
  test('automatic count replacement', () {
    Localization.load(const Locale('en'),
        translations: Translations({
          "with_count_zero": "zero items",
          "with_count_one": "one item",
          "with_count_other": "items: {count}",
        }));
    expect(Localization.instance.plural('with_count', 0), 'zero items');
    expect(Localization.instance.plural('with_count', 1), 'one item');
    expect(Localization.instance.plural('with_count', 3), 'items: 3');
  });
}
