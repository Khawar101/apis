import 'package:flutter_test/flutter_test.dart';
import 'package:apis/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('ListViewDataViewModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}