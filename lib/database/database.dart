import 'dart:io';
import 'dart:async';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';

/// {@template database}
/// [Class]
/// {@endTemplate}

final dictionaryTABLE = 'dictionary';
final favoriteTABLE = 'favorite';
final searchHistoryTABLE = 'search_history';

class DatabaseProvider {
  static final DatabaseProvider databaseProvider = DatabaseProvider();

  Database _database;

  Future<Database> get database async {
    if(_database != null) return _database;
    _database = await createDatabase();
    return _database;
  }

  Future<Database> createDatabase() async {
    Directory documentDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentDirectory.path, 'ambar.db');

    Database database = await openDatabase(path, version: 1, onCreate: initDatabase);

    return database;
  }

  void initDatabase(Database database, int version) async {
    await database.execute(
      'CREATE TABLE $favoriteTABLE (id INTEGER PRIMARY KEY, dictionary_id INTEGER)'
    );
  }
}