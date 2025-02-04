// Copyright 2025 (c) Roshin Nishad. All rights reserved.
// Use of this source code is governed by the Apache 2.0 License that can be
// found in the LICENSE file.

import "package:flutter_test/flutter_test.dart";
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

import 'package:yume_kitai/data/services/local/local_data_service.dart';

Future main() async {
  setUpAll(
    () {
      //initialize FFI
      sqfliteFfiInit();
      // change the default factory
      databaseFactory = databaseFactoryFfi;
    },
  );

  group(
    "Testing local_data_service",
    () {
      test(
        'Checks that the QUERIES from local_data_service is working as expected',
        () async {
          var db = await openDatabase(
            inMemoryDatabasePath,
            version: 1,
            onCreate: (db, version) async {
              await db.execute(
                  'CREATE TABLE IF NOT EXISTS habits (habit_id INTEGER PRIMARY KEY, habit_title TEXT NOT NULL UNIQUE, habit_freq TEXT NOT NULL, habit_desc TEXT, habit_color TEXT, habit_icon TEXT);');
              await db.execute(
                  'CREATE TABLE IF NOT EXISTS habit_history (h_history_id INTEGER PRIMARY KEY, h_history_datetime_stamp TEXT NOT NULL, h_history_habit_state TEXT NOT NULL, habit_id INTEGER NOT NULL, FOREIGN KEY (habit_id) REFERENCES habits(habit_id) ON UPDATE CASCADE ON DELETE CASCADE);');

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
        'Checks that local_data_service is returning the db properly and the tables created exist',
        () async {
          LocalDataService localDataService = LocalDataService();
          final db = await localDataService.getDatabaseInstance();

          expect(db, isNotNull);

          expect(
            await db.query(
              'sqlite_master',
              where: 'name = ?',
              columns: ['name'],
              whereArgs: ['habits'],
            ),
            [
              {'name': 'habits'}
            ],
          );

          expect(
            await db.query(
              'sqlite_master',
              where: 'name = ?',
              columns: ['name'],
              whereArgs: ['habit_history'],
            ),
            [
              {'name': 'habit_history'}
            ],
          );
        },
      );
    },
  );
}
