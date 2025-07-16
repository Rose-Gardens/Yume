// Copyright 2025 (c) Roshin Nishad. All rights reserved.
// Use of this source code is governed by the Apache 2.0 License that can be
// found in the LICENSE file.

/// Converts hex strings e.g. "0xffffff" to a base 16 integer.
int hexInt(String hexString) {
  if (hexString.isEmpty) {
    throw ArgumentError("Hex string cannot be empty.");
  }
  try {
    return int.parse(hexString, radix: 16);
  } catch (_) {
    throw ArgumentError("Hex string is invalid");
  }
}
