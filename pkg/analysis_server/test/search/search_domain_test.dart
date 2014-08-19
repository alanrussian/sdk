// Copyright (c) 2014, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library test.search.domain;

import 'package:analysis_server/src/analysis_server.dart';
import 'package:analysis_server/src/protocol2.dart';
import 'package:analysis_server/src/search/search_domain.dart';
import 'package:analysis_testing/mock_sdk.dart';
import 'package:analyzer/file_system/memory_file_system.dart';
import 'package:unittest/unittest.dart';

import '../mocks.dart';


main() {
  groupSep = ' | ';

  MockServerChannel serverChannel;
  MemoryResourceProvider resourceProvider;
  AnalysisServer server;
  SearchDomainHandler handler;

  setUp(() {
    serverChannel = new MockServerChannel();
    resourceProvider = new MemoryResourceProvider();
    server = new AnalysisServer(
        serverChannel,
        resourceProvider,
        new MockPackageMapProvider(),
        null,
        new MockSdk());
    handler = new SearchDomainHandler(server);
  });

  group('SearchDomainHandler', () {
    test('findMemberReferences', () {
      // TODO(paulberry): Why are we passing null here?
      var request = new SearchFindMemberReferencesParams(null).toRequest('0');
      var response = handler.handleRequest(request);
      // TODO(brianwilkerson) implement
      //expect(response, isNull);
    });
  });
}
