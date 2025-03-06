// Copyright 2025 (c) Roshin Nishad. All rights reserved.
// Use of this source code is governed by the Apache 2.0 License that can be
// found in the LICENSE file.

import "package:flutter_test/flutter_test.dart";
// Allows flutter unit testing on sqflite.
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:yume_kitai/data/services/local/db_schema.dart';
import 'package:yume_kitai/data/services/local/local_data_service.dart';

Future main() async {
  setUpAll(
    () {
      // Initialize FFI.
      sqfliteFfiInit();
      // Change the default factory.
      databaseFactory = databaseFactoryFfi;
    },
  );

  group(
    "Testing local_data_service and db_schema",
    () {
      test(
        'Checks that the QUERIES from local_data_service using the schemas from db_schema is working as expected',
        () async {
          var db = await openDatabase(
            inMemoryDatabasePath,
            version: 1,
            onCreate: (db, version) async {
              await db.execute(
                DbSchema.habitTables['habit']!,
              );

              await db.execute(
                DbSchema.habitTables['habit_history']!,
              );
              // TODO: Change this into valid inserts and expects
              await db.execute(
                  "INSERT INTO habits (habit_title, habit_freq, habit_desc, habit_color, habit_icon) VALUES ('Do 15 Leetcode questions', '3 times a week', 'Practice coding', 'FFA44195', 'f653');");
              await db.execute(
                  "INSERT INTO habits (habit_title, habit_freq, habit_desc, habit_color, habit_icon) VALUES ('Run 5km a day', '4 times a week', 'Stay fit and healthy', 'FFC5605F', 'f6b8');");
            },
            onConfigure: (db) async {
              await db.execute('PRAGMA foreign_keys = ON');
            },
          );
          expect(
            await db.query(
              'habits',
              columns: [
                'habit_title',
                'habit_freq',
                'habit_desc',
                'habit_color',
                'habit_icon'
              ],
            ),
            [
              {
                'habit_title': 'Do 15 Leetcode questions',
                'habit_freq': '3 times a week',
                'habit_desc': 'Practice coding',
                'habit_color': 'FFA44195',
                'habit_icon': 'f653',
              },
              {
                'habit_title': 'Run 5km a day',
                'habit_freq': '4 times a week',
                'habit_desc': 'Stay fit and healthy',
                'habit_color': 'FFC5605F',
                'habit_icon': 'f6b8',
              },
            ],
          );
          await db.close();
        },
      );
      test(
        'Checks that local_data_service is returning the db<Type Database>',
        () async {
          LocalDataService localDataService = LocalDataService();
          final db = await localDataService.getDatabaseInstance();

          expect(db, isNotNull);

          expect(db, isA<Database>());
        },
      );
    },
  );
}
