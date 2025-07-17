// Copyright 2025 (c) Roshin Nishad. All rights reserved.
// Use of this source code is governed by the Apache 2.0 License that can be
// found in the LICENSE file.

import "package:flutter_test/flutter_test.dart";
import 'package:yume_kitai/utils/converters.dart';

void main() {
  test('Function should return a base 16 integer', () {
    expect(hexInt("FFC5BB5F"), 4291148639);
    expect(() => hexInt(''), throwsA(isA<ArgumentError>()));
    expect(
      () => hexInt('notAHexString'),
      throwsA(isA<ArgumentError>()),
    );
  });
}
