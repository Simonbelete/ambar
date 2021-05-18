import 'dart:async';
import 'package:ambar/models/dictionary_model.dart';
import 'package:ambar/database/database.dart';

/// {@template}
/// [Class]
/// {@endTemplate}

class DictionaryDao {

  Future<List<Dictionary>> getAll() async {
    List<Map<String, Object>> result;
    final databaseProvider = await DatabaseProvider().database;
    // result = databaseProvider.query(dictionaryTABLE);
    result = await databaseProvider.query(dictionaryTABLE);
    List<Dictionary> dictionaries = result.isNotEmpty
        ? result.map((item) => Dictionary.toObject(item)).toList()
        : [];
    return dictionaries;
  }
}