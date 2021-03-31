// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
import 'package:flutter_test/flutter_test.dart';
import 'package:path_provider_linux/path_provider_linux.dart';
import 'package:path_provider_platform_interface/path_provider_platform_interface.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  PathProviderLinux.register();

  setUp(() {});

  tearDown(() {});

  test('getTemporaryPath', () async {
    final PathProviderPlatform plugin = PathProviderPlatform.instance;
    expect(await plugin.getTemporaryPath(), '/tmp');
  });
}
