// Copyright 2025 (c) Roshin Nishad. All rights reserved.
// Use of this source code is governed by the Apache 2.0 License that can be
// found in the LICENSE file.
// Join and Version docs below provided by the Flutter Team.

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class LocalDataService {
  Database? _db;

  Future<Database> getDatabaseInstance() async {
    // Faster check to return singleInstance db if NOT null.
    if (_db != null) return _db!;

    _db = await openDatabase(
      // Set the path to the database. Note: Using the `join` function from the
      // `path` package is best practice to ensure the path is correctly
      // constructed for each platform.
      join(await getDatabasesPath(), 'yume_database.db'),

      // When the database is first created, create the tables needed for Yume.
      onCreate: (db, version) async {
        // Creating the habits table. [Contains each unique habit]
        await db.execute(
            'CREATE TABLE habits (habit_id INTEGER PRIMARY KEY, habit_title TEXT NOT NULL UNIQUE, habit_freq TEXT NOT NULL, habit_desc TEXT, habit_color TEXT, habit_icon TEXT)');
        await db.execute(
            'CREATE TABLE habit_history (h_history_id INTEGER PRIMARY KEY, h_history_datetime_stamp TEXT NOT NULL, h_history_habit_state TEXT NOT NULL, habit_id INTEGER NOT NULL, FOREIGN KEY (habit_id) REFERENCES habits(habit_id) ON UPDATE CASCADE ON DELETE CASCADE)');
      },
      
      // Enabling foreign keys for the habit_history table.
      onConfigure: (db) async {
        await db.execute('PRAGMA foreign_keys = ON');
      },

      // Set the version. This executes the onCreate function and provides a
      // path to perform database upgrades and downgrades.
      version: 1,
    );

    //When [singleInstance] is true (the default), a single database instance is returned
    // for a given path. Subsequent calls to [openDatabase] with the same path will return
    //the same instance, and will discard all other parameters such as callbacks for that invocation.
    return _db!;
  }
}
