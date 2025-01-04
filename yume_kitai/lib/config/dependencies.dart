// Copyright 2025 (c) Roshin Nishad. All rights reserved.
// Use of this source code is governed by the Apache 2.0 License that can be
// found in the LICENSE file.

import 'package:provider/single_child_widget.dart';
import 'package:provider/provider.dart';

/// Configure dependencies for remote data.
/// This dependency list uses repositories that connect to a remote server.
List<SingleChildWidget> get providersRemote {
  return [Provider(create: (context) {})];
}

/// Configure dependencies for local data.
/// This dependency list uses repositories that provide local data.
List<SingleChildWidget> get providersLocal {
  return [Provider(create: (context) {})];
}
