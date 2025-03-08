// Copyright 2025 (c) Roshin Nishad. All rights reserved.
// Use of this source code is governed by the Apache 2.0 License that can be
// found in the LICENSE file.

class DbSchema {
  static Map<String, String> chronoTables = {
    'chrono_label':
        'CREATE TABLE IF NOT EXISTS chrono_label (chrono_label_id INTEGER PRIMARY KEY, title TEXT NOT NULL, group_title TEXT, color TEXT, is_negative INTEGER NOT NULL CHECK (is_negative IN (0, 1)));',
    'chrono_label_history':
        'CREATE TABLE IF NOT EXISTS chrono_label_history (chrono_label_history_id INTEGER PRIMARY KEY, started_at TEXT, ended_at TEXT, time_tracked TEXT, chrono_label_id INTEGER NOT NULL, FOREIGN KEY (chrono_label_id) REFERENCES chrono_label(chrono_label_id) ON UPDATE CASCADE ON DELETE CASCADE);',
    'chrono_label_reminder':
        'CREATE TABLE IF NOT EXISTS chrono_label_reminder (chrono_label_reminder_id INTEGER PRIMARY KEY, type TEXT NOT NULL, remind_on TEXT, remind_at TEXT NOT NULL, chrono_label_id INTEGER NOT NULL, FOREIGN KEY (chrono_label_id) REFERENCES chrono_label(chrono_label_id) ON UPDATE CASCADE ON DELETE CASCADE);',
    'chrono_label_goal':
        'CREATE TABLE IF NOT EXISTS chrono_label_goal (chrono_label_goal_id INTEGER PRIMARY KEY, created_on TEXT NOT NULL, target TEXT NOT NULL, chrono_label_id INTEGER NOT NULL, FOREIGN KEY (chrono_label_id) REFERENCES chrono_label(chrono_label_id) ON UPDATE CASCADE ON DELETE CASCADE);',
    'chrono_label_autostart':
        'CREATE TABLE IF NOT EXISTS chrono_label_autostart (chrono_label_autostart_id INTEGER PRIMARY KEY, start_at TEXT, end_at TEXT, start_vacation_on TEXT, end_vacation_on TEXT, chrono_label_id INTEGER NOT NULL, FOREIGN KEY (chrono_label_id) REFERENCES chrono_label(chrono_label_id) ON UPDATE CASCADE ON DELETE CASCADE);'
  };

  static Map<String, String> habitTables = {
    'habit':
        'CREATE TABLE IF NOT EXISTS habit (habit_id INTEGER PRIMARY KEY, title TEXT NOT NULL, group_title TEXT, desc TEXT, color TEXT, icon TEXT, is_retired INTEGER NOT NULL CHECK (is_retired IN (0, 1)), is_negative INTEGER NOT NULL CHECK (is_negative IN (0, 1)), habit_conditionally_active_id INTEGER, chrono_label_id INTEGER, FOREIGN KEY (habit_conditionally_active_id) REFERENCES habit_conditionally_active(habit_conditionally_active_id) ON DELETE SET NULL, FOREIGN KEY (chrono_label_id) REFERENCES chrono_label(chrono_label_id) ON DELETE SET NULL);',
    'habit_history':
        'CREATE TABLE IF NOT EXISTS habit_history (habit_history_id INTEGER PRIMARY KEY, created_on TEXT NOT NULL, completion_state TEXT, habit_tag_id INTEGER, habit_id INTEGER NOT NULL, FOREIGN KEY (habit_tag_id) REFERENCES habit_tag(habit_tag_id) ON DELETE SET NULL, FOREIGN KEY (habit_id) REFERENCES habit(habit_id) ON UPDATE CASCADE ON DELETE CASCADE);',
    'habit_freq':
        'CREATE TABLE IF NOT EXISTS habit_freq (habit_freq_id INTEGER PRIMARY KEY, type TEXT NOT NULL, repeat_value TEXT NOT NULL, habit_id INTEGER NOT NULL, FOREIGN KEY (habit_id) REFERENCES habit(habit_id) ON UPDATE CASCADE ON DELETE CASCADE);',
    'habit_reminder':
        'CREATE TABLE IF NOT EXISTS habit_reminder (habit_reminder_id INTEGER PRIMARY KEY, type TEXT NOT NULL, remind_on TEXT, remind_at TEXT NOT NULL, habit_id INTEGER NOT NULL, FOREIGN KEY (habit_id) REFERENCES habit(habit_id) ON UPDATE CASCADE ON DELETE CASCADE);',
    'habit_goal':
        'CREATE TABLE IF NOT EXISTS habit_goal (habit_goal_id INTEGER PRIMARY KEY, target INTEGER NOT NULL, current_amount INTEGER NOT NULL, unit TEXT NOT NULL, habit_id INTEGER NOT NULL, FOREIGN KEY (habit_id) REFERENCES habit(habit_id) ON UPDATE CASCADE ON DELETE CASCADE);',
    'habit_conditionally_active':
        'CREATE TABLE IF NOT EXISTS habit_conditionally_active (habit_conditionally_active_id INTEGER PRIMARY KEY, start_on TEXT, end_on TEXT, start_vacation_on TEXT, end_vacation_on TEXT, is_deferred_to_tomorrow INTEGER NOT NULL CHECK (is_deferred_to_tomorrow IN (0, 1)), habit_id INTEGER NOT NULL, FOREIGN KEY (habit_id) REFERENCES habit(habit_id) ON UPDATE CASCADE ON DELETE CASCADE);',
    'habit_streak':
        'CREATE TABLE IF NOT EXISTS habit_streak (habit_streak_id INTEGER PRIMARY KEY, current INTEGER, best INTEGER, habit_id INTEGER NOT NULL, FOREIGN KEY (habit_id) REFERENCES habit(habit_id) ON UPDATE CASCADE ON DELETE CASCADE);',
    'habit_tag':
        'CREATE TABLE IF NOT EXISTS habit_tag (habit_tag_id INTEGER PRIMARY KEY, title TEXT NOT NULL, color TEXT, habit_id INTEGER NOT NULL, FOREIGN KEY (habit_id) REFERENCES habit(habit_id) ON UPDATE CASCADE ON DELETE CASCADE);',
  };

  // TODO: Make the rest of the schemas
}
