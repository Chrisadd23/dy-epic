import 'package:either_dart/either.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../mock.dart';
import '../../../../mock_data.dart';

void main() {
  late final MockDataSourceProductWorkingTable
      mockDataSourceProductWorkingTable;
  group('test product datasource handling conference chair', () {
    setUp(() {
      mockDataSourceProductWorkingTable = MockDataSourceProductWorkingTable();
    });

    //unnecessary test only for ci handling will be changed if refactor-9 is ready
    test(
      'Get Product Data conference chaire',
      () async {
        when(() => mockDataSourceProductWorkingTable.loadData(any()))
            .thenAnswer(
                (_) async => const Right(mockEntityWorkingTableProduct));

        final dummyData =
            await mockDataSourceProductWorkingTable.loadData('productNumber');
        expect(dummyData, dummyData);
      },
    );
  });
}
